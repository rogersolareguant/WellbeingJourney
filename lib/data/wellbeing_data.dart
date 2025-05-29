import 'package:wellbeing_journey/domain/model/questions_model.dart';

const List<WellbeingQuestion> wellbeingQuestions = [
  WellbeingQuestion(
    text: 'I feel like I can make a lot of inputs to deciding how my job gets done',
    recommendation: 'Ask about options for how to complete tasks – If you feel limited in how you can approach activities, consider asking your teacher if there are other ways to complete the work that fit your style.',
    dimension: WellbeingDimension.autonomy,
  ),
  WellbeingQuestion(
    text: 'I really like the people I work with',
    recommendation: 'Engage in team-building activities and collaborative projects to create opportunities for working together with fellow students – Actively participating in group work or team-building activities gives you the chance to connect with others.',
    dimension: WellbeingDimension.relatedness,
  ),
  WellbeingQuestion(
    text: 'I do not feel very competent when I am at work',
    recommendation: 'Seek help from teachers or classmates when needed – Don’t hesitate to reach out if you’re struggling with any concepts or assignments.',
    dimension: WellbeingDimension.competence,
    isReversed: true,
  ),
  WellbeingQuestion(
    text: 'People at work tell me I am good at what I do',
    recommendation: 'Acknowledge and reflect on the effort invested in the task – Take a moment to recognize the effort you’ve put into completing an assignment or project.',
    dimension: WellbeingDimension.competence,
  ),
  WellbeingQuestion(
    text: 'I feel pressured at work',
    recommendation: 'Take a moment to breathe – If you start feeling stressed, pausing for a deep breath or a quick reset could help you stay calm and focused.',
    dimension: WellbeingDimension.autonomy,
    isReversed: true,
  ),
  WellbeingQuestion(
    text: 'I get along with people at work',
    recommendation: 'Encourage open communication with classmates to enhance mutual understanding and a positive atmosphere – Building strong relationships with your peers helps create a supportive classroom environment.',
    dimension: WellbeingDimension.relatedness,
  ),
  WellbeingQuestion(
    text: 'I pretty much keep to myself when I am at work',
    recommendation: 'Initiate conversations with new people – Don’t hesitate to take the first step and talk to new classmates.',
    dimension: WellbeingDimension.relatedness,
    isReversed: true,
  ),
  WellbeingQuestion(
    text: 'I am free to express my ideas and opinions on the job',
    recommendation: 'Embrace your individuality – Don\'t be afraid to bring your unique perspective into classroom discussions; your ideas matter and can add value to the conversation.',
    dimension: WellbeingDimension.autonomy,
  ),
  WellbeingQuestion(
    text: 'I consider the people I work with to be my friends',
    recommendation: 'Showcase your abilities or offer assistance to foster connections with classmates – Demonstrating your skills and being supportive can help you build stronger relationships with others in the group.',
    dimension: WellbeingDimension.relatedness,
  ),
  WellbeingQuestion(
    text: 'I have been able to learn interesting new skills on my job',
    recommendation: 'Inform the teacher about your diverse interests and willingness to contribute – Let your teacher know about your different interests and passions.',
    dimension: WellbeingDimension.competence,
  ),
  WellbeingQuestion(
    text: 'When I am at work, I have to do what I am told',
    recommendation: 'Talk to the teacher about flexibility – If the activities feel too rigid, consider asking if there’s room for more freedom in how tasks are done.',
    dimension: WellbeingDimension.autonomy,
    isReversed: true,
  ),
  WellbeingQuestion(
    text: 'Most days I feel a sense of accomplishment from working',
    recommendation: 'Maintain a positive mindset; not every day is equally productive – Some days might feel more challenging than others, and that’s okay.',
    dimension: WellbeingDimension.competence,
  ),
  WellbeingQuestion(
    text: 'My feelings are taken into consideration at work',
    recommendation: 'Give feedback – Offering gentle feedback on how activities or the classroom environment make you feel could lead to changes that make it easier to learn.',
    dimension: WellbeingDimension.autonomy,
  ),
  WellbeingQuestion(
    text: 'On my job I do not get much of a chance to show how capable I am',
    recommendation: 'Strategically showcase your capabilities by selecting opportunities that align with your strengths – Choose activities or tasks that highlight your strengths and skills.',
    dimension: WellbeingDimension.competence,
    isReversed: true,
  ),
  WellbeingQuestion(
    text: 'People at work care about me',
    recommendation: 'Reflect on your own behaviors; consider adjustments where possible to contribute positively to the learning environment – Small changes can have a big impact on how the class feels and functions.',
    dimension: WellbeingDimension.relatedness,
  ),
  WellbeingQuestion(
    text: 'There are not many people at work that I am close to',
    recommendation: 'Consider switching to another group – If you\'re feeling disconnected or left out, it might be helpful to discuss the option of switching to a different group with the teacher.',
    dimension: WellbeingDimension.relatedness,
    isReversed: true,
  ),
  WellbeingQuestion(
    text: 'I feel like I can pretty much be myself at work',
    recommendation: 'Encourage openness – If you feel comfortable, try to create a welcoming atmosphere by respecting others\' individuality.',
    dimension: WellbeingDimension.autonomy,
  ),
  WellbeingQuestion(
    text: 'The people I work with do not seem to like me much',
    recommendation: 'Privately talk with the student to understand the situation – If there’s an issue with a group member, try to have a private conversation with them.',
    dimension: WellbeingDimension.relatedness,
    isReversed: true,
  ),
  WellbeingQuestion(
    text: 'When I am working I often do not feel very capable',
    recommendation: 'Review course materials regularly – Instead of cramming before exams, try to go over the material consistently throughout the semester.',
    dimension: WellbeingDimension.competence,
    isReversed: true,
  ),
  WellbeingQuestion(
    text: 'There is not much opportunity for me to decide for myself how to go about my work',
    recommendation: 'Suggest more flexible assignments – If you think activities could be more engaging with some freedom, politely suggest allowing students to choose how to tackle certain tasks.',
    dimension: WellbeingDimension.autonomy,
    isReversed: true,
  ),
  WellbeingQuestion(
    text: 'People at work are pretty friendly towards me',
    recommendation: 'Engage in team-building activities and collaborative projects to create opportunities for working together with fellow students – Actively participating in group work or team-building activities gives you the chance to connect with others.',
    dimension: WellbeingDimension.relatedness,
  ),
];
