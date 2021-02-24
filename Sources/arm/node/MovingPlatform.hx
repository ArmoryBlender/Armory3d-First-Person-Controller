package arm.node;

@:keep class MovingPlatform extends armory.logicnode.LogicTree {

	var functionNodes:Map<String, armory.logicnode.FunctionNode>;

	var functionOutputNodes:Map<String, armory.logicnode.FunctionOutputNode>;

	public function new() {
		super();
		this.functionNodes = new Map();
		this.functionOutputNodes = new Map();
		notifyOnAdd(add);
	}

	override public function add() {
		var _SetObjectLocation = new armory.logicnode.SetLocationNode(this);
		var _OnUpdate = new armory.logicnode.OnUpdateNode(this);
		_OnUpdate.property0 = "Update";
		_OnUpdate.addOutputs([_SetObjectLocation]);
		_SetObjectLocation.addInput(_OnUpdate, 0);
		_SetObjectLocation.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		var _Vector = new armory.logicnode.VectorNode(this);
		var _Math = new armory.logicnode.MathNode(this);
		_Math.property0 = "Multiply";
		_Math.property1 = "false";
		var _Math_001 = new armory.logicnode.MathNode(this);
		_Math_001.property0 = "Sine";
		_Math_001.property1 = "false";
		var _GetApplicationTime = new armory.logicnode.TimeNode(this);
		_GetApplicationTime.addOutputs([_Math_001]);
		_GetApplicationTime.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_Math_001.addInput(_GetApplicationTime, 0);
		_Math_001.addOutputs([_Math]);
		_Math.addInput(_Math_001, 0);
		_Math.addInput(new armory.logicnode.FloatNode(this, 25.0), 0);
		_Math.addOutputs([_Vector]);
		_Vector.addInput(_Math, 0);
		var _SeparateXYZ = new armory.logicnode.SeparateVectorNode(this);
		var _GetObjectLocation = new armory.logicnode.GetLocationNode(this);
		_GetObjectLocation.addInput(new armory.logicnode.ObjectNode(this, ""), 0);
		_GetObjectLocation.addOutputs([_SeparateXYZ]);
		_SeparateXYZ.addInput(_GetObjectLocation, 0);
		_SeparateXYZ.addOutputs([new armory.logicnode.FloatNode(this, 0.0)]);
		_SeparateXYZ.addOutputs([_Vector]);
		_SeparateXYZ.addOutputs([_Vector]);
		_Vector.addInput(_SeparateXYZ, 1);
		_Vector.addInput(_SeparateXYZ, 2);
		_Vector.addOutputs([_SetObjectLocation]);
		_SetObjectLocation.addInput(_Vector, 0);
		_SetObjectLocation.addOutputs([new armory.logicnode.NullNode(this)]);
	}
}