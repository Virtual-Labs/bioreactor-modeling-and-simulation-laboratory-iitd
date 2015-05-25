/******************************

This Quiz application has been developed and maintained by 

R.Venkatesan,
Project No./CW - MI00738 and MI00739,
Senior Project Assistant,
Dept. of Biochemical and Biotechnology,
Indian Institute of Technology Delhi,
Hauz Khas,
New Delhi.

*****************************/
package 
{

	import flash.display.Sprite;
	import fl.controls.Button;
	import flash.events.MouseEvent;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.events.Event;
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	

	public class QuizApp extends Sprite
	{
		//for managing questions:
		private var quizQuestions:Array;
		//private var currentQuestion:QuizQuestion;

		//scoring and messages:
		private var score:int = 0;
		private var isDown:Boolean=false;
		private var isUp:Boolean=false;
		private var downspeed:int=0;
		private var upspeed:int=0;
		private var finished:Boolean; 
		private var t:int=120;
		private var timer:Timer;

		public function QuizApp()
		{
			status.autoSize = TextFieldAutoSize.LEFT;
			tryagainbt.visible=false;
			
			quizQuestions = new Array();
			createQuestions();
			addAllQuestions();
			downbt.addEventListener(MouseEvent.MOUSE_DOWN,downfn);
			upbt.addEventListener(MouseEvent.MOUSE_DOWN,upfn);
			addEventListener(MouseEvent.MOUSE_UP,releasefn);
			addEventListener(Event.ENTER_FRAME,run);
			finishButton.addEventListener(MouseEvent.CLICK, finishHandler);
			
			timer=new Timer(1000,0);
			timer.addEventListener(TimerEvent.TIMER,timefn);
			//timer.start();
			tryagainbt.buttonMode=true;
			
		}
		private function timefn(e:TimerEvent)
		{
			t--;
			timetxt.text=String(t);
			
			if(t==0)
			{
				finishButton.visible = false;
				downbt.visible = false;
				upbt.visible = false;
				hideAllQuestions();
				computeScore();
				timer.stop();
				t=120;
				tryagainbt.gotoAndStop(2);
			}
		}
        private function run(e:Event)
		{
			timetxt.visible=false;
			txt.visible=false;
			
			if(mc.y>190)
			{
				mc.y=190;
				downspeed=0;
				upspeed=0;
			}
			else if(mc.y<-800)
			{
				mc.y=-800;
				downspeed=0;
				upspeed=0;
			}
			else
			{
				if(isDown)
				{
					downspeed+=3;
					mc.y+=downspeed;
				}
				else if(downspeed!=0)
				{
					downspeed-=0.5;
					mc.y+=downspeed;
				}
				if(isUp)
				{
					upspeed+=3;
					mc.y-=upspeed;
				}
				else if(upspeed!=0)
				{
					upspeed-=0.5;
					mc.y-=upspeed;
				}
			}
		}
		
		private function downfn(e:MouseEvent)
		{
			isDown=true;
			
		}
		private function upfn(e:MouseEvent)
		{
			isUp=true;
			
		}
		private function releasefn(e:MouseEvent)
		{
			isDown=false;
			isUp=false;
			
		}


		private function createQuestions()
		{
			quizQuestions.push(new QuizQuestion("1. Callus is defined as ?",
			                                                            1,
			                                                            "a.	Undifferentiated mass of young growing cells",
			                                                            "b.	Mass of cells",
			                                                            "c.	Differentiated mass of young growing cells",
			                                                            "d.	Young tissue of pl"));
			quizQuestions.push(new QuizQuestion("2. Auxins and cytokinins are added in plant growth media?",
			                                                            1,
			                                                            "a.	In a defined ratio to avoid neither the root growth nor shoot growth",
			                                                            "b.	In any ratio ",
			                                                            "c.	Cytokinins concentration is greater than auxins",
			                                                            "d.	None of the above is true"));
			quizQuestions.push(new QuizQuestion("3. For quantification of growth in plant cell cultivation ?",
			                                                            4,
			                                                            "Cell mass is measured",
			                                                            "Packed cell volume is measured",
			                                                            "Conductivity measurement is dones",
			                                                            "Any of the above can be done"));
            quizQuestions.push(new QuizQuestion("4. The advantage of plant cell cultivation are ?",
			                                                            4,
			                                                            "a.	In-vitro production ",
			                                                            "b.	Production independent of geographical regions",
			                                                            "c.	Production independent of climatic conditions",
			                                                            "d.	All of the above"));
			 quizQuestions.push(new QuizQuestion("5. The plant cells are shear sensitive ?",
			                                                            1,
			                                                            "Due to tough cell wall",
			                                                            "Due to large size",
			                                                            "both a & b",
			                                                            "None of the above"));
			 
			 quizQuestions.push(new QuizQuestion("6. The plant cells form aggregate ?",
			                                                            1,
			                                                            "due to excretion of extracellular polysaccharides",
			                                                            "due to typical medium characteristics",
			                                                            "due to cultivation conditions used",
			                                                            "none of the above"));
			 
			 quizQuestions.push(new QuizQuestion("7. The product formation in plant cell culture ?",
			                                                            1,
			                                                            "is usually intracellular",
			                                                            "is usually extracellular",
			                                                            "either of the above",
			                                                            "none of the above"));
			 
			 quizQuestions.push(new QuizQuestion("8. The product accumulation in plant cell culture?",
			                                                            3,
			                                                            "can be enhanced by addition of elicitors ",
			                                                            "can be enhanced by addition of precursors ",
			                                                            "both a & b",
			                                                            "none of the above"));
			 
			 quizQuestions.push(new QuizQuestion("9. Permeabilization of plant cell ?",
			                                                            4,
			                                                            "a.	Is essential to leach out the product and allow the cells to metabolize further",
			                                                            "b.	Kills the cells",
			                                                            "c.	Is a reversible process whereby pores of cell wall are increased to leach out the products",
			                                                            "d.	Both a & c "));
			 
			  quizQuestions.push(new QuizQuestion("10.  Statistical media design features complex ?",
			                                                            4,
			                                                            "a.	Interaction of high and low concentrations of effectors",
			                                                            "b.	Interaction of only high concentrations of effectors",
			                                                            "c.	Development of medium recipe with minimum no of experiments",
			                                                            "d.	Both a and c"));

		}
		
		private function addAllQuestions()
		{
			for (var i:int = 0; i < quizQuestions.length; i++)
			{
				quizQuestions[i].x = -280;
				quizQuestions[i].y = -200 + i * 150;
				mc.addChild(quizQuestions[i]);
				
			}
		}
		private function hideAllQuestions()
		{
			for (var i:int = 0; i < quizQuestions.length; i++)
			{
				quizQuestions[i].visible = false;
			}
		}
		private function showAllQuestions()
		{
			tryagainbt.visible=false;
			score=0;
			
			showMessage("");
	
			finishButton.visible = true;
			downbt.visible = true;
			upbt.visible = true;
			for (var i:int = 0; i < quizQuestions.length; i++)
			{
				quizQuestions[i].visible = true;				
				quizQuestions[i].deselect();
								
			}
			
			finished = false;
			
			
			
		}
		private function finishHandler(event:MouseEvent)
		{
			showMessage("");
			finished= true;
			for (var i:int = 0; i < quizQuestions.length; i++)
			{
				if (quizQuestions[i].userAnswer == 0)
				{
					finished = false;
					break;
				}
			}
			if (finished)
			{
				finishButton.visible = false;
				downbt.visible = false;
				upbt.visible = false;
				hideAllQuestions();
				computeScore();
				timer.stop();				
				timetxt.visible=false;
				txt.visible=false;
				
			}
			else
			{
				showMessage("You havn't answered all the questions");
			}
		}
		private function showMessage(theMessage:String)
		{
			status.text = theMessage;
			
		}
		private function tryagainbtfn(e:MouseEvent)
		{
			for (var i:int = 0; i < quizQuestions.length; i++)
			{
				mc.removeChild(quizQuestions[i]);
				quizQuestions.splice(i,quizQuestions[i]);
				
			}			
			
			quizQuestions = new Array();
			createQuestions();
			addAllQuestions();
			
			tryagainbt.visible=false;
			downbt.visible = true;
			upbt.visible = true;
			finishButton.visible = true;
			showMessage("");
			mc.y=278;
			timer.start();
			score=0;
			txt.visible=true;
			timetxt.visible=true;
			t=120;
			timetxt.text=String(t);
			
		}
		private function computeScore()
		{
			for (var i:int = 0; i < quizQuestions.length; i++)
			{
				if (quizQuestions[i].userAnswer == quizQuestions[i].correctAnswer)
				{
					score++;
					/*finishmc.visible=true;
					finishmc.gotoAndStop(finishmc.currentFrame+10+score);*/
				}
				/*else if(score==0)
				{
				finishmc.visible=true;
				finishmc.gotoAndStop(1);
				}*/
			}
			showMessage("                 Your score is " + score +" out of " + quizQuestions.length);
			tryagainbt.visible=true;
			tryagainbt.addEventListener(MouseEvent.CLICK, tryagainbtfn);

		}
	}
}