struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD5 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat10 : f32;
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
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_41 + x_44);
  let x_47 : vec4<f32> = u_xlat1;
  let x_50 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_47.y, x_47.y, x_47.y, x_47.y) * x_50);
  let x_53 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_54 : vec4<f32> = u_xlat1;
  let x_57 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_53 * vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x)) + x_57);
  let x_60 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_61 : vec4<f32> = u_xlat1;
  let x_64 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_60 * vec4<f32>(x_61.z, x_61.z, x_61.z, x_61.z)) + x_64);
  let x_67 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_68 : vec4<f32> = u_xlat1;
  let x_71 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_67 * vec4<f32>(x_68.w, x_68.w, x_68.w, x_68.w)) + x_71);
  let x_79 : vec4<f32> = u_xlat1;
  gl_Position = x_79;
  let x_85 : f32 = u_xlat1.z;
  let x_88 : f32 = x_17.x_ProjectionParams.y;
  u_xlat1.x = (x_85 / x_88);
  let x_93 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_93) + 1.0f);
  let x_99 : f32 = u_xlat1.x;
  let x_101 : f32 = x_17.x_ProjectionParams.z;
  u_xlat1.x = (x_99 * x_101);
  let x_105 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_105, 0.0f);
  let x_110 : f32 = u_xlat1.x;
  let x_113 : f32 = x_17.unity_FogParams.x;
  u_xlat1.x = (x_110 * x_113);
  let x_117 : f32 = u_xlat1.x;
  let x_119 : f32 = u_xlat1.x;
  u_xlat1.x = (x_117 * -(x_119));
  let x_126 : f32 = u_xlat1.x;
  vs_TEXCOORD5 = exp2(x_126);
  let x_132 : vec4<f32> = in_TEXCOORD0;
  let x_136 : vec4<f32> = x_17.x_MainTex_ST;
  let x_140 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_132.x, x_132.y) * vec2<f32>(x_136.x, x_136.y)) + vec2<f32>(x_140.z, x_140.w));
  let x_146 : vec3<f32> = in_NORMAL0;
  let x_148 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_146, vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_152 : vec3<f32> = in_NORMAL0;
  let x_154 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_152, vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_158 : vec3<f32> = in_NORMAL0;
  let x_160 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_158, vec3<f32>(x_160.x, x_160.y, x_160.z));
  let x_165 : vec4<f32> = u_xlat1;
  let x_167 : vec4<f32> = u_xlat1;
  u_xlat10 = dot(vec3<f32>(x_165.x, x_165.y, x_165.z), vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : f32 = u_xlat10;
  u_xlat10 = inverseSqrt(x_170);
  let x_174 : f32 = u_xlat10;
  let x_176 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = (vec3<f32>(x_174, x_174, x_174) * vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_181 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_183 : vec4<f32> = in_POSITION0;
  let x_186 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_181.x, x_181.y, x_181.z) * vec3<f32>(x_183.w, x_183.w, x_183.w)) + vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_190 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_191 : vec4<f32> = in_POSITION0;
  let x_194 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_190 * vec4<f32>(x_191.w, x_191.w, x_191.w, x_191.w)) + x_194);
  let x_196 : vec4<f32> = u_xlat0;
  let x_200 : vec4<f32> = x_17.unity_WorldToLight[1i];
  u_xlat1 = (vec4<f32>(x_196.y, x_196.y, x_196.y, x_196.y) * x_200);
  let x_203 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_204 : vec4<f32> = u_xlat0;
  let x_207 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_203 * vec4<f32>(x_204.x, x_204.x, x_204.x, x_204.x)) + x_207);
  let x_210 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_211 : vec4<f32> = u_xlat0;
  let x_214 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_210 * vec4<f32>(x_211.z, x_211.z, x_211.z, x_211.z)) + x_214);
  let x_219 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_220 : vec4<f32> = u_xlat0;
  let x_223 : vec4<f32> = u_xlat1;
  vs_TEXCOORD3 = ((x_219 * vec4<f32>(x_220.w, x_220.w, x_220.w, x_220.w)) + x_223);
  vs_TEXCOORD4 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD5_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD5, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2);
}

