struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec3<f32>;

@group(0) @binding(3) var<uniform> x_30 : VGlobals;

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_12;
  let x_13 : vec4<f32> = vs_COLOR0;
  vs_COLOR0 = clamp(x_13, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_25 : vec3<f32> = in_TEXCOORD0;
  let x_35 : vec4<f32> = x_30.x_MainTex_ST;
  let x_39 : vec4<f32> = x_30.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_25.x, x_25.y) * vec2<f32>(x_35.x, x_35.y)) + vec2<f32>(x_39.z, x_39.w));
  let x_45 : vec3<f32> = in_POSITION0;
  let x_50 : vec4<f32> = x_30.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_45.y, x_45.y, x_45.y, x_45.y) * x_50);
  let x_53 : vec4<f32> = x_30.unity_ObjectToWorld[0i];
  let x_54 : vec3<f32> = in_POSITION0;
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_53 * vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x)) + x_57);
  let x_60 : vec4<f32> = x_30.unity_ObjectToWorld[2i];
  let x_61 : vec3<f32> = in_POSITION0;
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_60 * vec4<f32>(x_61.z, x_61.z, x_61.z, x_61.z)) + x_64);
  let x_66 : vec4<f32> = u_xlat0;
  let x_69 : vec4<f32> = x_30.unity_ObjectToWorld[3i];
  u_xlat0 = (x_66 + x_69);
  let x_72 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = x_30.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_72.y, x_72.y, x_72.y, x_72.y) * x_75);
  let x_78 : vec4<f32> = x_30.unity_MatrixVP[0i];
  let x_79 : vec4<f32> = u_xlat0;
  let x_82 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_78 * vec4<f32>(x_79.x, x_79.x, x_79.x, x_79.x)) + x_82);
  let x_85 : vec4<f32> = x_30.unity_MatrixVP[2i];
  let x_86 : vec4<f32> = u_xlat0;
  let x_89 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_85 * vec4<f32>(x_86.z, x_86.z, x_86.z, x_86.z)) + x_89);
  let x_98 : vec4<f32> = x_30.unity_MatrixVP[3i];
  let x_99 : vec4<f32> = u_xlat0;
  let x_102 : vec4<f32> = u_xlat1;
  gl_Position = ((x_98 * vec4<f32>(x_99.w, x_99.w, x_99.w, x_99.w)) + x_102);
  return;
}

struct main_out {
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec3<f32>, @location(0) in_POSITION0_param : vec3<f32>) -> main_out {
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_COLOR0, vs_TEXCOORD0, gl_Position);
}

