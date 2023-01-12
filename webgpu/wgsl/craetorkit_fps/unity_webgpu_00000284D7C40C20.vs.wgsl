type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> in_COLOR0 : vec4<f32>;

var<private> vs_TEXCOORD4 : f32;

var<private> vs_TEXCOORD5 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_26 : vec4<f32> = x_20.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_26);
  let x_30 : vec4<f32> = x_20.unity_ObjectToWorld[0i];
  let x_31 : vec4<f32> = in_POSITION0;
  let x_34 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_30 * vec4<f32>(x_31.x, x_31.x, x_31.x, x_31.x)) + x_34);
  let x_38 : vec4<f32> = x_20.unity_ObjectToWorld[2i];
  let x_39 : vec4<f32> = in_POSITION0;
  let x_42 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_38 * vec4<f32>(x_39.z, x_39.z, x_39.z, x_39.z)) + x_42);
  let x_45 : vec4<f32> = u_xlat0;
  let x_48 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  u_xlat1 = (x_45 + x_48);
  let x_52 : vec4<f32> = x_20.unity_ObjectToWorld[3i];
  let x_54 : vec4<f32> = in_POSITION0;
  let x_57 : vec4<f32> = u_xlat0;
  let x_59 : vec3<f32> = ((vec3<f32>(x_52.x, x_52.y, x_52.z) * vec3<f32>(x_54.w, x_54.w, x_54.w)) + vec3<f32>(x_57.x, x_57.y, x_57.z));
  let x_60 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_59.x, x_59.y, x_59.z, x_60.w);
  let x_63 : vec4<f32> = u_xlat1;
  let x_67 : vec4<f32> = x_20.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_63.y, x_63.y, x_63.y, x_63.y) * x_67);
  let x_70 : vec4<f32> = x_20.unity_MatrixVP[0i];
  let x_71 : vec4<f32> = u_xlat1;
  let x_74 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_70 * vec4<f32>(x_71.x, x_71.x, x_71.x, x_71.x)) + x_74);
  let x_77 : vec4<f32> = x_20.unity_MatrixVP[2i];
  let x_78 : vec4<f32> = u_xlat1;
  let x_81 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_77 * vec4<f32>(x_78.z, x_78.z, x_78.z, x_78.z)) + x_81);
  let x_84 : vec4<f32> = x_20.unity_MatrixVP[3i];
  let x_85 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_84 * vec4<f32>(x_85.w, x_85.w, x_85.w, x_85.w)) + x_88);
  let x_95 : vec4<f32> = u_xlat1;
  gl_Position = x_95;
  let x_100 : vec3<f32> = in_NORMAL0;
  let x_103 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_100, vec3<f32>(x_103.x, x_103.y, x_103.z));
  let x_109 : vec3<f32> = in_NORMAL0;
  let x_111 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_109, vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_115 : vec3<f32> = in_NORMAL0;
  let x_117 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_115, vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_123 : vec4<f32> = u_xlat2;
  let x_125 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_123.x, x_123.y, x_123.z), vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_128 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_128);
  let x_130 : f32 = u_xlat18;
  let x_132 : vec4<f32> = u_xlat2;
  let x_134 : vec3<f32> = (vec3<f32>(x_130, x_130, x_130) * vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_135 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_139 : vec4<f32> = u_xlat2;
  vs_TEXCOORD0 = vec3<f32>(x_139.x, x_139.y, x_139.z);
  let x_142 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_142.x, x_142.y, x_142.z);
  let x_146 : vec4<f32> = in_COLOR0;
  vs_COLOR0 = x_146;
  let x_150 : f32 = u_xlat1.z;
  vs_TEXCOORD4 = x_150;
  let x_153 : vec4<f32> = u_xlat1;
  let x_154 : vec2<f32> = vec2<f32>(x_153.z, x_153.w);
  let x_155 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_155.x, x_155.y, x_154.x, x_154.y);
  let x_161 : vec2<f32> = in_TEXCOORD0;
  let x_164 : vec4<f32> = x_20.x_MainTex_ST;
  let x_168 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD2 = ((x_161 * vec2<f32>(x_164.x, x_164.y)) + vec2<f32>(x_168.z, x_168.w));
  let x_172 : vec4<f32> = u_xlat0;
  let x_176 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat3 = (-(vec4<f32>(x_172.x, x_172.x, x_172.x, x_172.x)) + x_176);
  let x_179 : vec4<f32> = u_xlat0;
  let x_183 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat4 = (-(vec4<f32>(x_179.y, x_179.y, x_179.y, x_179.y)) + x_183);
  let x_185 : vec4<f32> = u_xlat0;
  let x_189 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_185.z, x_185.z, x_185.z, x_185.z)) + x_189);
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec4<f32> = u_xlat4;
  u_xlat5 = (vec4<f32>(x_192.y, x_192.y, x_192.y, x_192.y) * x_194);
  let x_196 : vec4<f32> = u_xlat4;
  let x_197 : vec4<f32> = u_xlat4;
  u_xlat4 = (x_196 * x_197);
  let x_199 : vec4<f32> = u_xlat3;
  let x_200 : vec4<f32> = u_xlat3;
  let x_202 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_199 * x_200) + x_202);
  let x_204 : vec4<f32> = u_xlat3;
  let x_205 : vec4<f32> = u_xlat2;
  let x_208 : vec4<f32> = u_xlat5;
  u_xlat3 = ((x_204 * vec4<f32>(x_205.x, x_205.x, x_205.x, x_205.x)) + x_208);
  let x_210 : vec4<f32> = u_xlat0;
  let x_211 : vec4<f32> = u_xlat2;
  let x_214 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_210 * vec4<f32>(x_211.z, x_211.z, x_211.z, x_211.z)) + x_214);
  let x_216 : vec4<f32> = u_xlat0;
  let x_217 : vec4<f32> = u_xlat0;
  let x_219 : vec4<f32> = u_xlat4;
  u_xlat0 = ((x_216 * x_217) + x_219);
  let x_221 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_221, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_225 : vec4<f32> = u_xlat0;
  u_xlat4 = inverseSqrt(x_225);
  let x_227 : vec4<f32> = u_xlat0;
  let x_230 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_227 * x_230) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_235 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_235);
  let x_237 : vec4<f32> = u_xlat3;
  let x_238 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_237 * x_238);
  let x_240 : vec4<f32> = u_xlat3;
  u_xlat3 = max(x_240, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_244 : vec4<f32> = u_xlat0;
  let x_245 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_244 * x_245);
  let x_247 : vec4<f32> = u_xlat0;
  let x_251 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_253 : vec3<f32> = (vec3<f32>(x_247.y, x_247.y, x_247.y) * vec3<f32>(x_251.x, x_251.y, x_251.z));
  let x_254 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_257 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_259 : vec4<f32> = u_xlat0;
  let x_262 : vec4<f32> = u_xlat3;
  let x_264 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.x, x_259.x, x_259.x)) + vec3<f32>(x_262.x, x_262.y, x_262.z));
  let x_265 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_264.x, x_264.y, x_264.z, x_265.w);
  let x_268 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_270 : vec4<f32> = u_xlat0;
  let x_273 : vec4<f32> = u_xlat3;
  let x_275 : vec3<f32> = ((vec3<f32>(x_268.x, x_268.y, x_268.z) * vec3<f32>(x_270.z, x_270.z, x_270.z)) + vec3<f32>(x_273.x, x_273.y, x_273.z));
  let x_276 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
  let x_279 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_281 : vec4<f32> = u_xlat0;
  let x_284 : vec4<f32> = u_xlat0;
  let x_286 : vec3<f32> = ((vec3<f32>(x_279.x, x_279.y, x_279.z) * vec3<f32>(x_281.w, x_281.w, x_281.w)) + vec3<f32>(x_284.x, x_284.y, x_284.z));
  let x_287 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
  let x_290 : f32 = u_xlat2.y;
  let x_292 : f32 = u_xlat2.y;
  u_xlat18 = (x_290 * x_292);
  let x_295 : f32 = u_xlat2.x;
  let x_297 : f32 = u_xlat2.x;
  let x_299 : f32 = u_xlat18;
  u_xlat18 = ((x_295 * x_297) + -(x_299));
  let x_302 : vec4<f32> = u_xlat2;
  let x_304 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_302.y, x_302.z, x_302.z, x_302.x) * vec4<f32>(x_304.x, x_304.y, x_304.z, x_304.z));
  let x_309 : vec4<f32> = x_20.unity_SHBr;
  let x_310 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_309, x_310);
  let x_315 : vec4<f32> = x_20.unity_SHBg;
  let x_316 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_315, x_316);
  let x_321 : vec4<f32> = x_20.unity_SHBb;
  let x_322 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_321, x_322);
  let x_327 : vec4<f32> = x_20.unity_SHC;
  let x_329 : f32 = u_xlat18;
  let x_332 : vec4<f32> = u_xlat3;
  let x_334 : vec3<f32> = ((vec3<f32>(x_327.x, x_327.y, x_327.z) * vec3<f32>(x_329, x_329, x_329)) + vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_338 : vec4<f32> = u_xlat0;
  let x_340 : vec4<f32> = u_xlat2;
  vs_TEXCOORD3 = (vec3<f32>(x_338.x, x_338.y, x_338.z) + vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_344 : f32 = u_xlat1.y;
  let x_347 : f32 = x_20.x_ProjectionParams.x;
  u_xlat0.x = (x_344 * x_347);
  let x_350 : vec4<f32> = u_xlat1;
  let x_354 : vec2<f32> = (vec2<f32>(x_350.x, x_350.w) * vec2<f32>(0.5f, 0.5f));
  let x_355 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_354.x, x_355.y, x_354.y, x_355.w);
  let x_358 : f32 = u_xlat0.x;
  u_xlat1.w = (x_358 * 0.5f);
  let x_362 : vec4<f32> = u_xlat1;
  let x_364 : vec4<f32> = u_xlat1;
  let x_366 : vec2<f32> = (vec2<f32>(x_362.z, x_362.z) + vec2<f32>(x_364.x, x_364.w));
  let x_367 : vec4<f32> = vs_TEXCOORD5;
  vs_TEXCOORD5 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_367.w);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec3<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_COLOR0_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD4_1 : f32,
  @location(6)
  vs_TEXCOORD5_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec2<f32>,
  @location(5)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_COLOR0_param : vec4<f32>, @location(3) in_TEXCOORD0_param : vec2<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_COLOR0 = in_COLOR0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_COLOR0, vs_TEXCOORD4, vs_TEXCOORD5, vs_TEXCOORD2, vs_TEXCOORD3);
}

