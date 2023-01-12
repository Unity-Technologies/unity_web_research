struct VGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_LightShadowBias : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> in_POSITION0 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat9 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb9 : bool;
  var x_175 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_22 : vec4<f32> = x_17.x_MainTex_ST;
  let x_26 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD1 = ((x_12 * vec2<f32>(x_22.x, x_22.y)) + vec2<f32>(x_26.z, x_26.w));
  let x_33 : vec4<f32> = in_COLOR0;
  vs_TEXCOORD3 = x_33;
  let x_39 : vec3<f32> = in_NORMAL0;
  let x_43 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_39, vec3<f32>(x_43.x, x_43.y, x_43.z));
  let x_50 : vec3<f32> = in_NORMAL0;
  let x_53 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_50, vec3<f32>(x_53.x, x_53.y, x_53.z));
  let x_58 : vec3<f32> = in_NORMAL0;
  let x_61 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_58, vec3<f32>(x_61.x, x_61.y, x_61.z));
  let x_67 : vec4<f32> = u_xlat0;
  let x_69 : vec4<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_67.x, x_67.y, x_67.z), vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_72 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_72);
  let x_74 : f32 = u_xlat9;
  let x_76 : vec4<f32> = u_xlat0;
  let x_78 : vec3<f32> = (vec3<f32>(x_74, x_74, x_74) * vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_79 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_83 : vec4<f32> = in_POSITION0;
  let x_86 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat1 = (vec4<f32>(x_83.y, x_83.y, x_83.y, x_83.y) * x_86);
  let x_89 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_90 : vec4<f32> = in_POSITION0;
  let x_93 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_89 * vec4<f32>(x_90.x, x_90.x, x_90.x, x_90.x)) + x_93);
  let x_96 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_97 : vec4<f32> = in_POSITION0;
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_96 * vec4<f32>(x_97.z, x_97.z, x_97.z, x_97.z)) + x_100);
  let x_103 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_104 : vec4<f32> = in_POSITION0;
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_103 * vec4<f32>(x_104.w, x_104.w, x_104.w, x_104.w)) + x_107);
  let x_110 : vec4<f32> = u_xlat1;
  let x_114 : vec4<f32> = x_17.x_WorldSpaceLightPos0;
  let x_118 : vec4<f32> = x_17.x_WorldSpaceLightPos0;
  let x_120 : vec3<f32> = ((-(vec3<f32>(x_110.x, x_110.y, x_110.z)) * vec3<f32>(x_114.w, x_114.w, x_114.w)) + vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_123 : vec4<f32> = u_xlat2;
  let x_125 : vec4<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_123.x, x_123.y, x_123.z), vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_128);
  let x_130 : f32 = u_xlat9;
  let x_132 : vec4<f32> = u_xlat2;
  let x_134 : vec3<f32> = (vec3<f32>(x_130, x_130, x_130) * vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_135 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_137 : vec4<f32> = u_xlat0;
  let x_139 : vec4<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_137.x, x_137.y, x_137.z), vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_142 : f32 = u_xlat9;
  let x_144 : f32 = u_xlat9;
  u_xlat9 = ((-(x_142) * x_144) + 1.0f);
  let x_148 : f32 = u_xlat9;
  u_xlat9 = sqrt(x_148);
  let x_150 : f32 = u_xlat9;
  let x_153 : f32 = x_17.unity_LightShadowBias.z;
  u_xlat9 = (x_150 * x_153);
  let x_155 : vec4<f32> = u_xlat0;
  let x_158 : f32 = u_xlat9;
  let x_161 : vec4<f32> = u_xlat1;
  let x_163 : vec3<f32> = ((-(vec3<f32>(x_155.x, x_155.y, x_155.z)) * vec3<f32>(x_158, x_158, x_158)) + vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_164 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_170 : f32 = x_17.unity_LightShadowBias.z;
  u_xlatb9 = !((x_170 == 0.0f));
  let x_173 : bool = u_xlatb9;
  if (x_173) {
    let x_178 : vec4<f32> = u_xlat0;
    x_175 = vec3<f32>(x_178.x, x_178.y, x_178.z);
  } else {
    let x_181 : vec4<f32> = u_xlat1;
    x_175 = vec3<f32>(x_181.x, x_181.y, x_181.z);
  }
  let x_183 : vec3<f32> = x_175;
  let x_184 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_183.x, x_183.y, x_183.z, x_184.w);
  let x_186 : vec4<f32> = u_xlat0;
  let x_190 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_186.y, x_186.y, x_186.y, x_186.y) * x_190);
  let x_193 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_194 : vec4<f32> = u_xlat0;
  let x_197 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_193 * vec4<f32>(x_194.x, x_194.x, x_194.x, x_194.x)) + x_197);
  let x_200 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_201 : vec4<f32> = u_xlat0;
  let x_204 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_200 * vec4<f32>(x_201.z, x_201.z, x_201.z, x_201.z)) + x_204);
  let x_207 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_208 : vec4<f32> = u_xlat1;
  let x_211 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_207 * vec4<f32>(x_208.w, x_208.w, x_208.w, x_208.w)) + x_211);
  let x_215 : f32 = u_xlat0.w;
  let x_217 : f32 = u_xlat0.z;
  u_xlat1.x = min(x_215, x_217);
  let x_221 : f32 = u_xlat0.z;
  let x_224 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_221) + x_224);
  let x_232 : f32 = x_17.unity_LightShadowBias.y;
  let x_234 : f32 = u_xlat1.x;
  let x_237 : f32 = u_xlat0.z;
  gl_Position.z = ((x_232 * x_234) + x_237);
  let x_241 : vec4<f32> = u_xlat0;
  let x_242 : vec3<f32> = vec3<f32>(x_241.x, x_241.y, x_241.w);
  let x_244 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_242.x, x_242.y, x_244.z, x_242.z);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD1_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD3_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec2<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(0) in_POSITION0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_POSITION0 = in_POSITION0_param;
  main_1();
  return main_out(vs_TEXCOORD1, vs_TEXCOORD3, gl_Position);
}

