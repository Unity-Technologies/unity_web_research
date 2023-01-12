struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  unity_FogParams : vec4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_17 : VGlobals;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat12 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_23 : vec4<f32> = x_17.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_23);
  let x_27 : vec4<f32> = x_17.unity_ObjectToWorld[0i];
  let x_28 : vec4<f32> = in_POSITION0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_27 * vec4<f32>(x_28.x, x_28.x, x_28.x, x_28.x)) + x_31);
  let x_35 : vec4<f32> = x_17.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_51 : vec4<f32> = x_17.unity_ObjectToWorld[3i];
  let x_53 : vec4<f32> = in_POSITION0;
  let x_56 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = ((vec3<f32>(x_51.x, x_51.y, x_51.z) * vec3<f32>(x_53.w, x_53.w, x_53.w)) + vec3<f32>(x_56.x, x_56.y, x_56.z));
  let x_59 : vec4<f32> = u_xlat1;
  let x_63 : vec4<f32> = x_17.unity_MatrixVP[1i];
  u_xlat0 = (vec4<f32>(x_59.y, x_59.y, x_59.y, x_59.y) * x_63);
  let x_66 : vec4<f32> = x_17.unity_MatrixVP[0i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_73 : vec4<f32> = x_17.unity_MatrixVP[2i];
  let x_74 : vec4<f32> = u_xlat1;
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_73 * vec4<f32>(x_74.z, x_74.z, x_74.z, x_74.z)) + x_77);
  let x_80 : vec4<f32> = x_17.unity_MatrixVP[3i];
  let x_81 : vec4<f32> = u_xlat1;
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_80 * vec4<f32>(x_81.w, x_81.w, x_81.w, x_81.w)) + x_84);
  let x_92 : vec4<f32> = u_xlat0;
  gl_Position = x_92;
  let x_98 : f32 = u_xlat0.z;
  let x_101 : f32 = x_17.x_ProjectionParams.y;
  u_xlat0.x = (x_98 / x_101);
  let x_106 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_106) + 1.0f);
  let x_112 : f32 = u_xlat0.x;
  let x_114 : f32 = x_17.x_ProjectionParams.z;
  u_xlat0.x = (x_112 * x_114);
  let x_118 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_118, 0.0f);
  let x_123 : f32 = u_xlat0.x;
  let x_126 : f32 = x_17.unity_FogParams.x;
  u_xlat0.x = (x_123 * x_126);
  let x_130 : f32 = u_xlat0.x;
  let x_132 : f32 = u_xlat0.x;
  u_xlat0.x = (x_130 * -(x_132));
  let x_139 : f32 = u_xlat0.x;
  vs_TEXCOORD4 = exp2(x_139);
  let x_145 : vec4<f32> = in_TEXCOORD0;
  let x_149 : vec4<f32> = x_17.x_MainTex_ST;
  let x_153 : vec4<f32> = x_17.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_145.x, x_145.y) * vec2<f32>(x_149.x, x_149.y)) + vec2<f32>(x_153.z, x_153.w));
  let x_158 : vec3<f32> = in_NORMAL0;
  let x_161 : vec4<f32> = x_17.unity_WorldToObject[0i];
  u_xlat0.x = dot(x_158, vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_165 : vec3<f32> = in_NORMAL0;
  let x_167 : vec4<f32> = x_17.unity_WorldToObject[1i];
  u_xlat0.y = dot(x_165, vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_171 : vec3<f32> = in_NORMAL0;
  let x_173 : vec4<f32> = x_17.unity_WorldToObject[2i];
  u_xlat0.z = dot(x_171, vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_178 : vec4<f32> = u_xlat0;
  let x_180 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_178.x, x_178.y, x_178.z), vec3<f32>(x_180.x, x_180.y, x_180.z));
  let x_183 : f32 = u_xlat12;
  u_xlat12 = inverseSqrt(x_183);
  let x_185 : f32 = u_xlat12;
  let x_187 : vec4<f32> = u_xlat0;
  let x_189 : vec3<f32> = (vec3<f32>(x_185, x_185, x_185) * vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_193 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_193.x, x_193.y, x_193.z);
  let x_196 : f32 = u_xlat0.y;
  let x_198 : f32 = u_xlat0.y;
  u_xlat1.x = (x_196 * x_198);
  let x_202 : f32 = u_xlat0.x;
  let x_204 : f32 = u_xlat0.x;
  let x_207 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_202 * x_204) + -(x_207));
  let x_212 : vec4<f32> = u_xlat0;
  let x_214 : vec4<f32> = u_xlat0;
  u_xlat2 = (vec4<f32>(x_212.y, x_212.z, x_212.z, x_212.x) * vec4<f32>(x_214.x, x_214.y, x_214.z, x_214.z));
  let x_221 : vec4<f32> = x_17.unity_SHBr;
  let x_222 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_221, x_222);
  let x_227 : vec4<f32> = x_17.unity_SHBg;
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_227, x_228);
  let x_233 : vec4<f32> = x_17.unity_SHBb;
  let x_234 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_233, x_234);
  let x_239 : vec4<f32> = x_17.unity_SHC;
  let x_241 : vec4<f32> = u_xlat1;
  let x_244 : vec3<f32> = u_xlat3;
  let x_245 : vec3<f32> = ((vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_241.x, x_241.x, x_241.x)) + x_244);
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
  u_xlat0.w = 1.0f;
  let x_251 : vec4<f32> = x_17.unity_SHAr;
  let x_252 : vec4<f32> = u_xlat0;
  u_xlat2.x = dot(x_251, x_252);
  let x_256 : vec4<f32> = x_17.unity_SHAg;
  let x_257 : vec4<f32> = u_xlat0;
  u_xlat2.y = dot(x_256, x_257);
  let x_261 : vec4<f32> = x_17.unity_SHAb;
  let x_262 : vec4<f32> = u_xlat0;
  u_xlat2.z = dot(x_261, x_262);
  let x_265 : vec4<f32> = u_xlat1;
  let x_267 : vec4<f32> = u_xlat2;
  let x_269 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) + vec3<f32>(x_267.x, x_267.y, x_267.z));
  let x_270 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
  let x_273 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = max(vec3<f32>(x_273.x, x_273.y, x_273.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD4_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD2, gl_Position, vs_TEXCOORD4, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD3);
}

