struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_TEXCOORD1 : f32;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_41 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_TEXCOORD0;
  vs_TEXCOORD0 = vec2<f32>(x_13.x, x_13.y);
  let x_18 : vec4<f32> = in_TEXCOORD0;
  let x_19 : vec2<f32> = vec2<f32>(x_18.z, x_18.w);
  let x_20 : vec3<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec3<f32>(x_19.x, x_19.y, x_20.z);
  let x_24 : f32 = in_TEXCOORD1;
  vs_TEXCOORD1.z = x_24;
  let x_32 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_32;
  let x_36 : vec4<f32> = in_POSITION0;
  let x_47 : vec4<f32> = x_41.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_36.y, x_36.y, x_36.y, x_36.y) * x_47);
  let x_50 : vec4<f32> = x_41.unity_ObjectToWorld[0i];
  let x_51 : vec4<f32> = in_POSITION0;
  let x_54 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_50 * vec4<f32>(x_51.x, x_51.x, x_51.x, x_51.x)) + x_54);
  let x_58 : vec4<f32> = x_41.unity_ObjectToWorld[2i];
  let x_59 : vec4<f32> = in_POSITION0;
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_58 * vec4<f32>(x_59.z, x_59.z, x_59.z, x_59.z)) + x_62);
  let x_64 : vec4<f32> = u_xlat0;
  let x_67 : vec4<f32> = x_41.unity_ObjectToWorld[3i];
  u_xlat0 = (x_64 + x_67);
  let x_70 : vec4<f32> = u_xlat0;
  let x_73 : vec4<f32> = x_41.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_70.y, x_70.y, x_70.y, x_70.y) * x_73);
  let x_76 : vec4<f32> = x_41.unity_MatrixVP[0i];
  let x_77 : vec4<f32> = u_xlat0;
  let x_80 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_76 * vec4<f32>(x_77.x, x_77.x, x_77.x, x_77.x)) + x_80);
  let x_83 : vec4<f32> = x_41.unity_MatrixVP[2i];
  let x_84 : vec4<f32> = u_xlat0;
  let x_87 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_83 * vec4<f32>(x_84.z, x_84.z, x_84.z, x_84.z)) + x_87);
  let x_95 : vec4<f32> = x_41.unity_MatrixVP[3i];
  let x_96 : vec4<f32> = u_xlat0;
  let x_99 : vec4<f32> = u_xlat1;
  gl_Position = ((x_95 * vec4<f32>(x_96.w, x_96.w, x_96.w, x_96.w)) + x_99);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec4<f32>, @location(3) in_TEXCOORD1_param : f32, @location(1) in_COLOR0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_COLOR0 = in_COLOR0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(gl_Position);
}

