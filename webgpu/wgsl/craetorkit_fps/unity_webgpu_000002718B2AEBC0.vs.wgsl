struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_MainTex_ST;
  let x_26 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_12 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  let x_33 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD2 = x_33;
  let x_37 : vec4<f32> = in_POSITION0;
  let x_42 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_37.y, x_37.y, x_37.y, x_37.y) * x_42);
  let x_45 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_46 : vec4<f32> = in_POSITION0;
  let x_49 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_45 * vec4<f32>(x_46.x, x_46.x, x_46.x, x_46.x)) + x_49);
  let x_52 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_53 : vec4<f32> = in_POSITION0;
  let x_56 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_52 * vec4<f32>(x_53.z, x_53.z, x_53.z, x_53.z)) + x_56);
  let x_58 : vec4<f32> = u_xlat0;
  let x_61 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat0 = (x_58 + x_61);
  let x_64 : vec4<f32> = u_xlat0;
  let x_67 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_64.y, x_64.y, x_64.y, x_64.y) * x_67);
  let x_70 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat0;
  let x_74 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat0;
  let x_81 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_90 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_91 : vec4<f32> = u_xlat0;
  let x_94 : vec4<f32> = u_xlat1;
  gl_Position = ((x_90 * vec4<f32>(x_91.w, x_91.w, x_91.w, x_91.w)) + x_94);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD2_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD2, gl_Position);
}

