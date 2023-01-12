struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_22 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_22);
  let x_26 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_27 : vec4<f32> = in_POSITION0;
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_26 * vec4<f32>(x_27.x, x_27.x, x_27.x, x_27.x)) + x_30);
  let x_34 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_35 : vec4<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_34 * vec4<f32>(x_35.z, x_35.z, x_35.z, x_35.z)) + x_38);
  let x_40 : vec4<f32> = u_xlat0;
  let x_43 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat0 = (x_40 + x_43);
  let x_46 : vec4<f32> = u_xlat0;
  let x_49 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_46.y, x_46.y, x_46.y, x_46.y) * x_49);
  let x_52 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_53 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_52 * vec4<f32>(x_53.x, x_53.x, x_53.x, x_53.x)) + x_56);
  let x_59 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_60 : vec4<f32> = u_xlat0;
  let x_63 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_59 * vec4<f32>(x_60.z, x_60.z, x_60.z, x_60.z)) + x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_67 : vec4<f32> = u_xlat0;
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_66 * vec4<f32>(x_67.w, x_67.w, x_67.w, x_67.w)) + x_70);
  let x_78 : vec4<f32> = u_xlat1;
  gl_Position = x_78;
  let x_83 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_83;
  let x_89 : vec2<f32> = in_TEXCOORD0;
  let x_92 : vec4<f32> = x_17.x_MainTex_ST;
  let x_96 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD1 = ((x_89 * vec2<f32>(x_92.x, x_92.y)) + vec2<f32>(x_96.z, x_96.w));
  let x_102 : f32 = u_xlat0.y;
  let x_106 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat2 = (x_102 * x_106);
  let x_109 : f32 = x_17.unity_MatrixV[0i].z;
  let x_112 : f32 = u_xlat0.x;
  let x_114 : f32 = u_xlat2;
  u_xlat0.x = ((x_109 * x_112) + x_114);
  let x_118 : f32 = x_17.unity_MatrixV[2i].z;
  let x_120 : f32 = u_xlat0.z;
  let x_123 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_118 * x_120) + x_123);
  let x_127 : f32 = x_17.unity_MatrixV[3i].z;
  let x_130 : f32 = u_xlat0.w;
  let x_133 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_127 * x_130) + x_133);
  let x_139 : f32 = u_xlat0.x;
  vs_TEXCOORD3.z = -(x_139);
  let x_144 : f32 = u_xlat1.y;
  let x_146 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_144 * x_146);
  let x_150 : f32 = u_xlat0.x;
  u_xlat0.w = (x_150 * 0.5f);
  let x_154 : vec4<f32> = u_xlat1;
  let x_157 : vec2<f32> = (vec2<f32>(x_154.x, x_154.w) * vec2<f32>(0.5f, 0.5f));
  let x_158 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_157.x, x_158.y, x_157.y, x_158.w);
  let x_161 : f32 = u_xlat1.w;
  vs_TEXCOORD3.w = x_161;
  let x_163 : vec4<f32> = u_xlat0;
  let x_165 : vec4<f32> = u_xlat0;
  let x_167 : vec2<f32> = (vec2<f32>(x_163.z, x_163.z) + vec2<f32>(x_165.x, x_165.w));
  let x_168 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_167.x, x_167.y, x_168.z, x_168.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec2<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD1);
}

