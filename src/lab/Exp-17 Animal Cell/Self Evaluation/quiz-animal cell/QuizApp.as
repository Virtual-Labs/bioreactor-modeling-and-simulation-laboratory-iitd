/******************************

This Quiz application has been developed and maintained by 

R.Venkatesan,
Project No./CW - MI00739,
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
			quizQuestions.push(new QuizQuestion("1. Animal cell ?",
			                                                            1,
			                                                            "a.	Do not have Cell wall",
			                                                            "b.	Have thick cell wall",
			                                                            "c.	Have high doubling time",
			                                                            "d.	None of the above"));
			quizQuestions.push(new QuizQuestion("2. The live and dead cell count in animal cell is done by?",
			                                                            1,
			                                                            "a.	Tryptophan blue staining",
			                                                            "b.	Methylene blue staining",
			                                                            "c.	Gram staining",
			                                                            "d.	Woolford stain"));
			quizQuestions.push(new QuizQuestion("3. The sterilization of animal cell culture media is done by ?",
			                                                            1,
			                                                            "a.	Filter sterilization",
			                                                            "b.	Autoclaving",
			                                                            "c.	Dry sterilization",
			                                                            "d.	Addition of chemical agents"));
            quizQuestions.push(new QuizQuestion("4. The two substrates needed for the growth of Animal cell cultivation are?",
			                                                            1,
			                                                            "a.	Glucose and glutamine",
			                                                            "b.	Glucose and sucrose",
			                                                            "c.	Glucose and fructose",
			                                                            "d.	Glucose and maltose"));
			 quizQuestions.push(new QuizQuestion("5. The bye products produced in animal cell cultivation are?",
			                                                            3,
			                                                            "a.	Lactate and ammonia in which lactate is more inhibitory",
			                                                            "b.	Lactate and pyruvate in which pyruvate is more inhibitory",
			                                                            "c.	Lactate and ammonia in which ammonia is more inhibitory",
			                                                            "d.	Lactate and butyrate in which lactate is more inhibitory"));
			 
			 quizQuestions.push(new QuizQuestion("6. The air supply in the animal cell cultivation is facilitated by?",
			                                                            1,
			                                                            "a.	Head space spargingd",
			                                                            "b.	By purging air from the sparger",
			                                                            "c.	By either a or b",
			                                                            "d.	None of the above "));
			 
			 quizQuestions.push(new QuizQuestion("7. The pH control in the animal cell cultivation is done by ?",
			                                                            2,
			                                                            "a.	Acid and alkali addition",
			                                                            "b.	Ammonia and CO2 purging",
			                                                            "c.	By either of above procedures a or b ",
			                                                            "d.	None of the above "));
			 
			 quizQuestions.push(new QuizQuestion("8. The requirement for growth of animal cells are ?",
			                                                            1,
			                                                            "a.	37 degree C  and purging of 5 % CO2",
			                                                            "b.	37 degree C  and purging of 2 % CO2",
			                                                            "c.	300 degree C  and purging of 5 % CO2",
			                                                            "d.	300 degree C  and purging of 2 % CO2"));
			 
			 quizQuestions.push(new QuizQuestion("9. For prevention of contamination the animal cell cultivation?",
			                                                            2,
			                                                            "a.	Is done in Laminar Hood",
			                                                            "b.	5 % Gentamycin is added in the media",
			                                                            "c.	5 % alcohol is added in the media",
			                                                            "d.	5 % formaldehyde is added in the media"));
			 
			  quizQuestions.push(new QuizQuestion("10.  The bioreactor used for animal cell cultivation generally has ?",
			                                                            2,
			                                                            "a.	Flat blade turbine Impeller",
			                                                            "b.	Setric Impeller",
			                                                            "c.	Either of a and b",
			                                                            "d.	No impeller"));

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