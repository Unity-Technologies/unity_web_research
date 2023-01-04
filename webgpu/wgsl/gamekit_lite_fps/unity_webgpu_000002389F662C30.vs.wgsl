struct VGlobals {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(0) @binding(17) var<uniform> x_17 : VGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat13 : f32;

var<private> in_TANGENT0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

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
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat2;
  gl_Position = ((x_73 * vec4<f32>(x_74.w, x_74.w, x_74.w, x_74.w)) + x_77);
  let x_85 : vec4<f32> = in_TEXCOORD0;
  let x_89 : vec4<f32> = x_17.x_MainTex_ST;
  let x_93 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_85.x, x_85.y) * vec2<f32>(x_89.x, x_89.y)) + vec2<f32>(x_93.z, x_93.w));
  let x_99 : vec3<f32> = in_NORMAL0;
  let x_101 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat1.y = dot(x_99, vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_106 : vec3<f32> = in_NORMAL0;
  let x_108 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat1.z = dot(x_106, vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_113 : vec3<f32> = in_NORMAL0;
  let x_115 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat1.x = dot(x_113, vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_121 : vec4<f32> = u_xlat1;
  let x_123 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec3<f32>(x_121.x, x_121.y, x_121.z), vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_126);
  let x_128 : f32 = u_xlat13;
  let x_130 : vec4<f32> = u_xlat1;
  let x_132 : vec3<f32> = (vec3<f32>(x_128, x_128, x_128) * vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_133 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_136 : vec4<f32> = in_TANGENT0;
  let x_139 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  let x_141 : vec3<f32> = (vec3<f32>(x_136.y, x_136.y, x_136.y) * vec3<f32>(x_139.y, x_139.z, x_139.x));
  let x_142 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_141.x, x_141.y, x_141.z, x_142.w);
  let x_145 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_147 : vec4<f32> = in_TANGENT0;
  let x_150 : vec4<f32> = u_xlat2;
  let x_152 : vec3<f32> = ((vec3<f32>(x_145.y, x_145.z, x_145.x) * vec3<f32>(x_147.x, x_147.x, x_147.x)) + vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_156 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_158 : vec4<f32> = in_TANGENT0;
  let x_161 : vec4<f32> = u_xlat2;
  let x_163 : vec3<f32> = ((vec3<f32>(x_156.y, x_156.z, x_156.x) * vec3<f32>(x_158.z, x_158.z, x_158.z)) + vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_164 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_166 : vec4<f32> = u_xlat2;
  let x_168 : vec4<f32> = u_xlat2;
  u_xlat13 = dot(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(x_168.x, x_168.y, x_168.z));
  let x_171 : f32 = u_xlat13;
  u_xlat13 = inverseSqrt(x_171);
  let x_173 : f32 = u_xlat13;
  let x_175 : vec4<f32> = u_xlat2;
  let x_177 : vec3<f32> = (vec3<f32>(x_173, x_173, x_173) * vec3<f32>(x_175.x, x_175.y, x_175.z));
  let x_178 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_182 : vec4<f32> = u_xlat1;
  let x_184 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec3<f32>(x_182.x, x_182.y, x_182.z) * vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : vec4<f32> = u_xlat1;
  let x_189 : vec4<f32> = u_xlat2;
  let x_192 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_187.z, x_187.x, x_187.y) * vec3<f32>(x_189.y, x_189.z, x_189.x)) + -(x_192));
  let x_198 : f32 = in_TANGENT0.w;
  let x_201 : f32 = x_17.unity_WorldTransformParams.w;
  u_xlat13 = (x_198 * x_201);
  let x_203 : f32 = u_xlat13;
  let x_205 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_203, x_203, x_203) * x_205);
  let x_210 : f32 = u_xlat3.x;
  vs_TEXCOORD1.y = x_210;
  let x_214 : f32 = u_xlat2.z;
  vs_TEXCOORD1.x = x_214;
  let x_217 : f32 = u_xlat1.y;
  vs_TEXCOORD1.z = x_217;
  let x_221 : f32 = u_xlat2.x;
  vs_TEXCOORD2.x = x_221;
  let x_225 : f32 = u_xlat2.y;
  vs_TEXCOORD3.x = x_225;
  let x_228 : f32 = u_xlat1.z;
  vs_TEXCOORD2.z = x_228;
  let x_231 : f32 = u_xlat1.x;
  vs_TEXCOORD3.z = x_231;
  let x_234 : f32 = u_xlat3.y;
  vs_TEXCOORD2.y = x_234;
  let x_237 : f32 = u_xlat3.z;
  vs_TEXCOORD3.y = x_237;
  let x_241 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_243 : vec4<f32> = in_POSITION0;
  let x_246 : vec4<f32> = u_xlat0;
  vs_TEXCOORD4 = ((vec3<f32>(x_241.x, x_241.y, x_241.z) * vec3<f32>(x_243.w, x_243.w, x_243.w)) + vec3<f32>(x_246.x, x_246.y, x_246.z));
  let x_250 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_251 : vec4<f32> = in_POSITION0;
  let x_254 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_250 * vec4<f32>(x_251.w, x_251.w, x_251.w, x_251.w)) + x_254);
  let x_256 : vec4<f32> = u_xlat0;
  let x_260 : vec4<f32> = x_17.unity_WorldToLight[1i];
  let x_262 : vec3<f32> = (vec3<f32>(x_256.y, x_256.y, x_256.y) * vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_266 : vec4<f32> = x_17.unity_WorldToLight[0i];
  let x_268 : vec4<f32> = u_xlat0;
  let x_271 : vec4<f32> = u_xlat1;
  let x_273 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_268.x, x_268.x, x_268.x)) + vec3<f32>(x_271.x, x_271.y, x_271.z));
  let x_274 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
  let x_277 : vec4<f32> = x_17.unity_WorldToLight[2i];
  let x_279 : vec4<f32> = u_xlat0;
  let x_282 : vec4<f32> = u_xlat1;
  let x_284 : vec3<f32> = ((vec3<f32>(x_277.x, x_277.y, x_277.z) * vec3<f32>(x_279.z, x_279.z, x_279.z)) + vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_289 : vec4<f32> = x_17.unity_WorldToLight[3i];
  let x_291 : vec4<f32> = u_xlat0;
  let x_294 : vec4<f32> = u_xlat0;
  vs_TEXCOORD5 = ((vec3<f32>(x_289.x, x_289.y, x_289.z) * vec3<f32>(x_291.w, x_291.w, x_291.w)) + vec3<f32>(x_294.x, x_294.y, x_294.z));
  vs_TEXCOORD6 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec4<f32>, @location(2) in_NORMAL0_param : vec3<f32>, @location(1) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD4);
}

