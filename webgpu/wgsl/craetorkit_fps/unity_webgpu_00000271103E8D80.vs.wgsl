type Arr = array<vec4<f32>, 8u>;

struct VGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_4LightPosX0 : vec4<f32>,
  unity_4LightPosY0 : vec4<f32>,
  unity_4LightPosZ0 : vec4<f32>,
  unity_4LightAtten0 : vec4<f32>,
  unity_LightColor : Arr,
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

@group(1) @binding(1) var<uniform> x_20 : VGlobals;

var<private> vs_TEXCOORD4 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

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
  let x_102 : f32 = u_xlat1.z;
  let x_105 : f32 = x_20.x_ProjectionParams.y;
  u_xlat18 = (x_102 / x_105);
  let x_107 : f32 = u_xlat18;
  u_xlat18 = (-(x_107) + 1.0f);
  let x_111 : f32 = u_xlat18;
  let x_113 : f32 = x_20.x_ProjectionParams.z;
  u_xlat18 = (x_111 * x_113);
  let x_115 : f32 = u_xlat18;
  u_xlat18 = max(x_115, 0.0f);
  let x_118 : f32 = u_xlat18;
  let x_122 : f32 = x_20.unity_FogParams.x;
  u_xlat18 = (x_118 * x_122);
  let x_124 : f32 = u_xlat18;
  let x_125 : f32 = u_xlat18;
  u_xlat18 = (x_124 * -(x_125));
  let x_130 : f32 = u_xlat18;
  vs_TEXCOORD4 = exp2(x_130);
  let x_136 : vec4<f32> = in_TEXCOORD0;
  let x_140 : vec4<f32> = x_20.x_MainTex_ST;
  let x_144 : vec4<f32> = x_20.x_MainTex_ST;
  vs_TEXCOORD0 = ((vec2<f32>(x_136.x, x_136.y) * vec2<f32>(x_140.x, x_140.y)) + vec2<f32>(x_144.z, x_144.w));
  let x_149 : vec3<f32> = in_NORMAL0;
  let x_152 : vec4<f32> = x_20.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_149, vec3<f32>(x_152.x, x_152.y, x_152.z));
  let x_156 : vec3<f32> = in_NORMAL0;
  let x_158 : vec4<f32> = x_20.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_156, vec3<f32>(x_158.x, x_158.y, x_158.z));
  let x_162 : vec3<f32> = in_NORMAL0;
  let x_164 : vec4<f32> = x_20.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_162, vec3<f32>(x_164.x, x_164.y, x_164.z));
  let x_168 : vec4<f32> = u_xlat1;
  let x_170 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_173);
  let x_175 : f32 = u_xlat18;
  let x_177 : vec4<f32> = u_xlat1;
  let x_179 : vec3<f32> = (vec3<f32>(x_175, x_175, x_175) * vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_184 : vec4<f32> = u_xlat1;
  vs_TEXCOORD1 = vec3<f32>(x_184.x, x_184.y, x_184.z);
  let x_187 : vec4<f32> = u_xlat0;
  vs_TEXCOORD2 = vec3<f32>(x_187.x, x_187.y, x_187.z);
  let x_190 : f32 = u_xlat1.y;
  let x_192 : f32 = u_xlat1.y;
  u_xlat18 = (x_190 * x_192);
  let x_195 : f32 = u_xlat1.x;
  let x_197 : f32 = u_xlat1.x;
  let x_199 : f32 = u_xlat18;
  u_xlat18 = ((x_195 * x_197) + -(x_199));
  let x_202 : vec4<f32> = u_xlat1;
  let x_204 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_202.y, x_202.z, x_202.z, x_202.x) * vec4<f32>(x_204.x, x_204.y, x_204.z, x_204.z));
  let x_210 : vec4<f32> = x_20.unity_SHBr;
  let x_211 : vec4<f32> = u_xlat2;
  u_xlat3.x = dot(x_210, x_211);
  let x_216 : vec4<f32> = x_20.unity_SHBg;
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat3.y = dot(x_216, x_217);
  let x_222 : vec4<f32> = x_20.unity_SHBb;
  let x_223 : vec4<f32> = u_xlat2;
  u_xlat3.z = dot(x_222, x_223);
  let x_228 : vec4<f32> = x_20.unity_SHC;
  let x_230 : f32 = u_xlat18;
  let x_233 : vec4<f32> = u_xlat3;
  let x_235 : vec3<f32> = ((vec3<f32>(x_228.x, x_228.y, x_228.z) * vec3<f32>(x_230, x_230, x_230)) + vec3<f32>(x_233.x, x_233.y, x_233.z));
  let x_236 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  u_xlat1.w = 1.0f;
  let x_242 : vec4<f32> = x_20.unity_SHAr;
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_242, x_243);
  let x_248 : vec4<f32> = x_20.unity_SHAg;
  let x_249 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_248, x_249);
  let x_254 : vec4<f32> = x_20.unity_SHAb;
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_254, x_255);
  let x_258 : vec4<f32> = u_xlat2;
  let x_260 : vec4<f32> = u_xlat3;
  let x_262 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) + vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_263 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
  let x_265 : vec4<f32> = u_xlat2;
  let x_268 : vec3<f32> = max(vec3<f32>(x_265.x, x_265.y, x_265.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_269 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_271 : vec4<f32> = u_xlat0;
  let x_275 : vec4<f32> = x_20.unity_4LightPosY0;
  u_xlat3 = (-(vec4<f32>(x_271.y, x_271.y, x_271.y, x_271.y)) + x_275);
  let x_278 : vec4<f32> = u_xlat1;
  let x_280 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_278.y, x_278.y, x_278.y, x_278.y) * x_280);
  let x_282 : vec4<f32> = u_xlat3;
  let x_283 : vec4<f32> = u_xlat3;
  u_xlat3 = (x_282 * x_283);
  let x_286 : vec4<f32> = u_xlat0;
  let x_290 : vec4<f32> = x_20.unity_4LightPosX0;
  u_xlat5 = (-(vec4<f32>(x_286.x, x_286.x, x_286.x, x_286.x)) + x_290);
  let x_292 : vec4<f32> = u_xlat0;
  let x_296 : vec4<f32> = x_20.unity_4LightPosZ0;
  u_xlat0 = (-(vec4<f32>(x_292.z, x_292.z, x_292.z, x_292.z)) + x_296);
  let x_298 : vec4<f32> = u_xlat5;
  let x_299 : vec4<f32> = u_xlat1;
  let x_302 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_298 * vec4<f32>(x_299.x, x_299.x, x_299.x, x_299.x)) + x_302);
  let x_304 : vec4<f32> = u_xlat0;
  let x_305 : vec4<f32> = u_xlat1;
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat1 = ((x_304 * vec4<f32>(x_305.z, x_305.z, x_305.z, x_305.z)) + x_308);
  let x_310 : vec4<f32> = u_xlat5;
  let x_311 : vec4<f32> = u_xlat5;
  let x_313 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_310 * x_311) + x_313);
  let x_315 : vec4<f32> = u_xlat0;
  let x_316 : vec4<f32> = u_xlat0;
  let x_318 : vec4<f32> = u_xlat3;
  u_xlat0 = ((x_315 * x_316) + x_318);
  let x_320 : vec4<f32> = u_xlat0;
  u_xlat0 = max(x_320, vec4<f32>(0.000001f, 0.000001f, 0.000001f, 0.000001f));
  let x_324 : vec4<f32> = u_xlat0;
  u_xlat3 = inverseSqrt(x_324);
  let x_326 : vec4<f32> = u_xlat0;
  let x_329 : vec4<f32> = x_20.unity_4LightAtten0;
  u_xlat0 = ((x_326 * x_329) + vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_333 : vec4<f32> = u_xlat0;
  u_xlat0 = (vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f) / x_333);
  let x_335 : vec4<f32> = u_xlat1;
  let x_336 : vec4<f32> = u_xlat3;
  u_xlat1 = (x_335 * x_336);
  let x_338 : vec4<f32> = u_xlat1;
  u_xlat1 = max(x_338, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
  let x_341 : vec4<f32> = u_xlat0;
  let x_342 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_341 * x_342);
  let x_344 : vec4<f32> = u_xlat0;
  let x_348 : vec4<f32> = x_20.unity_LightColor[1i];
  let x_350 : vec3<f32> = (vec3<f32>(x_344.y, x_344.y, x_344.y) * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : vec4<f32> = x_20.unity_LightColor[0i];
  let x_356 : vec4<f32> = u_xlat0;
  let x_359 : vec4<f32> = u_xlat1;
  let x_361 : vec3<f32> = ((vec3<f32>(x_354.x, x_354.y, x_354.z) * vec3<f32>(x_356.x, x_356.x, x_356.x)) + vec3<f32>(x_359.x, x_359.y, x_359.z));
  let x_362 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_365 : vec4<f32> = x_20.unity_LightColor[2i];
  let x_367 : vec4<f32> = u_xlat0;
  let x_370 : vec4<f32> = u_xlat1;
  let x_372 : vec3<f32> = ((vec3<f32>(x_365.x, x_365.y, x_365.z) * vec3<f32>(x_367.z, x_367.z, x_367.z)) + vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_376 : vec4<f32> = x_20.unity_LightColor[3i];
  let x_378 : vec4<f32> = u_xlat0;
  let x_381 : vec4<f32> = u_xlat0;
  let x_383 : vec3<f32> = ((vec3<f32>(x_376.x, x_376.y, x_376.z) * vec3<f32>(x_378.w, x_378.w, x_378.w)) + vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_387 : vec4<f32> = u_xlat2;
  let x_389 : vec4<f32> = u_xlat0;
  vs_TEXCOORD3 = (vec3<f32>(x_387.x, x_387.y, x_387.z) + vec3<f32>(x_389.x, x_389.y, x_389.z));
  vs_TEXCOORD5 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(1)
  vs_TEXCOORD4_1 : f32,
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(2)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD3_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD4, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3);
}

