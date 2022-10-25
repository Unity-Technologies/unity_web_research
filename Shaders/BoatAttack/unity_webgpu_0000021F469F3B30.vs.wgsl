struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  x_TintColor : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD1 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat5 : f32;
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
  let x_86 : vec4<f32> = x_17.x_TintColor;
  vs_COLOR0 = (x_83 * x_86);
  let x_92 : f32 = u_xlat1.z;
  let x_95 : f32 = x_17.x_ProjectionParams.y;
  u_xlat5 = (x_92 / x_95);
  let x_97 : f32 = u_xlat5;
  u_xlat5 = (-(x_97) + 1.0f);
  let x_101 : f32 = u_xlat5;
  let x_103 : f32 = x_17.x_ProjectionParams.z;
  u_xlat5 = (x_101 * x_103);
  let x_105 : f32 = u_xlat5;
  u_xlat5 = max(x_105, 0.0f);
  let x_108 : f32 = u_xlat5;
  let x_112 : f32 = x_17.unity_FogParams.x;
  u_xlat5 = (x_108 * x_112);
  let x_114 : f32 = u_xlat5;
  let x_115 : f32 = u_xlat5;
  u_xlat5 = (x_114 * -(x_115));
  let x_120 : f32 = u_xlat5;
  vs_TEXCOORD1 = exp2(x_120);
  let x_127 : vec2<f32> = in_TEXCOORD0;
  let x_130 : vec4<f32> = x_17.x_MainTex_ST;
  let x_134 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((x_127 * vec2<f32>(x_130.x, x_130.y)) + vec2<f32>(x_134.z, x_134.w));
  let x_139 : f32 = u_xlat0.y;
  let x_141 : f32 = x_17.unity_MatrixV[1i].z;
  u_xlat2 = (x_139 * x_141);
  let x_144 : f32 = x_17.unity_MatrixV[0i].z;
  let x_146 : f32 = u_xlat0.x;
  let x_148 : f32 = u_xlat2;
  u_xlat0.x = ((x_144 * x_146) + x_148);
  let x_152 : f32 = x_17.unity_MatrixV[2i].z;
  let x_154 : f32 = u_xlat0.z;
  let x_157 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_152 * x_154) + x_157);
  let x_161 : f32 = x_17.unity_MatrixV[3i].z;
  let x_164 : f32 = u_xlat0.w;
  let x_167 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_161 * x_164) + x_167);
  let x_172 : f32 = u_xlat0.x;
  vs_TEXCOORD2.z = -(x_172);
  let x_176 : f32 = u_xlat1.y;
  let x_178 : f32 = x_17.x_ProjectionParams.x;
  u_xlat0.x = (x_176 * x_178);
  let x_182 : f32 = u_xlat0.x;
  u_xlat0.w = (x_182 * 0.5f);
  let x_186 : vec4<f32> = u_xlat1;
  let x_189 : vec2<f32> = (vec2<f32>(x_186.x, x_186.w) * vec2<f32>(0.5f, 0.5f));
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_189.x, x_190.y, x_189.y, x_190.w);
  let x_193 : f32 = u_xlat1.w;
  vs_TEXCOORD2.w = x_193;
  let x_195 : vec4<f32> = u_xlat0;
  let x_197 : vec4<f32> = u_xlat0;
  let x_199 : vec2<f32> = (vec2<f32>(x_195.z, x_195.z) + vec2<f32>(x_197.x, x_197.w));
  let x_200 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_199.x, x_199.y, x_200.z, x_200.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_COLOR0_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD1_1 : f32,
  @location(1)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_COLOR0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_COLOR0, vs_TEXCOORD1, vs_TEXCOORD0, vs_TEXCOORD2);
}

