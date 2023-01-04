struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(3) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_43 : vec4<f32> = u_xlat0;
  let x_47 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (vec3<f32>(x_43.x, x_43.y, x_43.z) + vec3<f32>(x_47.x, x_47.y, x_47.z));
  let x_53 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_54 : vec4<f32> = in_POSITION0;
  let x_57 : vec4<f32> = u_xlat0;
  vs_TEXCOORD0 = ((x_53 * vec4<f32>(x_54.w, x_54.w, x_54.w, x_54.w)) + x_57);
  let x_59 : vec3<f32> = u_xlat1;
  let x_62 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_62);
  let x_65 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_66 : vec3<f32> = u_xlat1;
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_65 * vec4<f32>(x_66.x, x_66.x, x_66.x, x_66.x)) + x_69);
  let x_72 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_73 : vec3<f32> = u_xlat1;
  let x_76 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_72 * vec4<f32>(x_73.z, x_73.z, x_73.z, x_73.z)) + x_76);
  let x_84 : vec4<f32> = u_xlat0;
  let x_86 : vec4<f32> = x_17.unity_MatrixVP[3i];
  gl_Position = (x_84 + x_86);
  let x_93 : vec4<f32> = in_TEXCOORD0;
  let x_96 : vec4<f32> = x_17.x_MainTex_ST;
  let x_100 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD1 = ((vec2<f32>(x_93.x, x_93.y) * vec2<f32>(x_96.x, x_96.y)) + vec2<f32>(x_100.z, x_100.w));
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_TEXCOORD0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(vs_TEXCOORD0, gl_Position, vs_TEXCOORD1);
}

