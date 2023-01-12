struct Params {
  x_DimensionsAndLerp : vec4<f32>,
  x_TargetColor : vec4<f32>,
}

var<private> gl_GlobalInvocationID : vec3<u32>;

@group(1) @binding(0) var<uniform> x_27 : Params;

@group(0) @binding(0) var x_From : texture_3d<f32>;

@group(0) @binding(1) var x_To : texture_3d<f32>;

@group(0) @binding(2) var x_Output_origX0X : texture_storage_3d<rgba32float, write>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlatb0 : vec3<bool>;
  var u_xlatu0 : vec4<u32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_14 : vec3<u32> = gl_GlobalInvocationID;
  let x_16 : vec3<f32> = vec3<f32>(x_14);
  let x_17 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_16.x, x_16.y, x_16.z, x_17.w);
  let x_23 : vec4<f32> = u_xlat0;
  let x_32 : vec4<f32> = x_27.x_DimensionsAndLerp;
  let x_35 : vec4<bool> = (vec4<f32>(x_23.x, x_23.y, x_23.z, x_23.x) < vec4<f32>(x_32.x, x_32.y, x_32.z, x_32.x));
  u_xlatb0 = vec3<bool>(x_35.x, x_35.y, x_35.z);
  let x_40 : bool = u_xlatb0.y;
  let x_43 : bool = u_xlatb0.x;
  u_xlatb0.x = (x_40 & x_43);
  let x_48 : bool = u_xlatb0.z;
  let x_50 : bool = u_xlatb0.x;
  u_xlatb0.x = (x_48 & x_50);
  let x_54 : bool = u_xlatb0.x;
  if (x_54) {
    let x_60 : vec3<u32> = gl_GlobalInvocationID;
    let x_61 : vec4<u32> = u_xlatu0;
    u_xlatu0 = vec4<u32>(x_60.x, x_60.y, x_60.z, x_61.w);
    u_xlatu0.w = 0u;
    let x_71 : vec4<u32> = u_xlatu0;
    let x_76 : u32 = u_xlatu0.w;
    let x_78 : vec4<f32> = textureLoad(x_From, bitcast<vec3<i32>>(vec3<u32>(x_71.x, x_71.y, x_71.z)), bitcast<i32>(x_76));
    u_xlat1 = x_78;
    let x_81 : vec4<u32> = u_xlatu0;
    let x_85 : u32 = u_xlatu0.w;
    let x_87 : vec4<f32> = textureLoad(x_To, bitcast<vec3<i32>>(vec3<u32>(x_81.x, x_81.y, x_81.z)), bitcast<i32>(x_85));
    u_xlat0 = x_87;
    let x_88 : vec4<f32> = u_xlat1;
    let x_90 : vec4<f32> = u_xlat0;
    u_xlat0 = (-(x_88) + x_90);
    let x_93 : vec4<f32> = x_27.x_DimensionsAndLerp;
    let x_95 : vec4<f32> = u_xlat0;
    let x_97 : vec4<f32> = u_xlat1;
    u_xlat0 = ((vec4<f32>(x_93.w, x_93.w, x_93.w, x_93.w) * x_95) + x_97);
    let x_103 : vec3<u32> = gl_GlobalInvocationID;
    let x_105 : vec4<f32> = u_xlat0;
    textureStore(x_Output_origX0X, bitcast<vec3<i32>>(x_103), x_105);
  }
  return;
}

@compute @workgroup_size(4i, 4i, 4i)
fn main(@builtin(global_invocation_id) gl_GlobalInvocationID_param : vec3<u32>) {
  gl_GlobalInvocationID = gl_GlobalInvocationID_param;
  main_1();
}

