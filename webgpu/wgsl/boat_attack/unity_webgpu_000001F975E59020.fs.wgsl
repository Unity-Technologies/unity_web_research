diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightColor : vec4<f32>,
  /* @offset(32) */
  x_TimeParameters : vec4<f32>,
  /* @offset(48) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(64) */
  x_WindZone_Vector : vec4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_82b413015ec74e89b64888c7e58113cb_TexelSize : vec4<f32>,
  /* @offset(16) */
  Vector1_5938df77fca14c0db6439fcfee84628c : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_INTERP0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat19 : f32;

var<private> u_xlat12 : vec2<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat7 : f32;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_383 : PGlobals;

@group(0) @binding(0) var Texture2D_82b413015ec74e89b64888c7e58113cb : texture_2d<f32>;

@group(0) @binding(1) var samplerTexture2D_82b413015ec74e89b64888c7e58113cb : sampler;

var<private> u_xlatb4 : vec4<bool>;

var<private> u_xlatb3 : bool;

var<private> u_xlat15 : vec2<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlatb21 : bool;

var<private> u_xlat16 : vec2<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatb15 : bool;

var<private> u_xlatb8 : bool;

var<private> u_xlatb2 : bool;

@group(1) @binding(2) var<uniform> x_1252 : UnityPerMaterial;

@group(1) @binding(1) var<uniform> x_1634 : UnityPerDraw;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_INTERP1 : vec3<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = vs_INTERP0;
  u_xlat0 = (vec4<f32>(x_12.x, x_12.y, x_12.x, x_12.y) * vec4<f32>(5.409999847412109375f, 5.409999847412109375f, 2.7049999237060546875f, 2.7049999237060546875f));
  let x_19 : vec4<f32> = u_xlat0;
  u_xlat1 = floor(x_19);
  let x_21 : vec4<f32> = u_xlat0;
  u_xlat0 = fract(x_21);
  let x_24 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec4<f32>(x_24.z, x_24.w, x_24.z, x_24.w) + vec4<f32>(0.0f, 1.0f, 1.0f, 1.0f));
  let x_31 : vec4<f32> = u_xlat2;
  u_xlat2.z = dot(vec2<f32>(x_31.z, x_31.w), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_41 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec2<f32>(x_41.x, x_41.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_46 : vec4<f32> = u_xlat2;
  let x_48 : vec2<f32> = sin(vec2<f32>(x_46.x, x_46.z));
  let x_49 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_48.x, x_48.y, x_49.z, x_49.w);
  let x_51 : vec4<f32> = u_xlat2;
  let x_55 : vec2<f32> = (vec2<f32>(x_51.x, x_51.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_55.x, x_55.y, x_56.z, x_56.w);
  let x_58 : vec4<f32> = u_xlat2;
  let x_60 : vec2<f32> = fract(vec2<f32>(x_58.x, x_58.y));
  let x_61 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_60.x, x_60.y, x_61.z, x_61.w);
  let x_66 : f32 = u_xlat2.x;
  let x_70 : f32 = u_xlat2.y;
  u_xlat8.x = (-(x_66) + x_70);
  let x_74 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = u_xlat0;
  u_xlat3 = (x_74 * x_75);
  let x_77 : vec4<f32> = u_xlat0;
  u_xlat0 = ((-(x_77) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
  let x_85 : vec4<f32> = u_xlat0;
  let x_86 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_85 * x_86);
  let x_89 : f32 = u_xlat0.z;
  let x_91 : f32 = u_xlat8.x;
  let x_94 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_89 * x_91) + x_94);
  let x_97 : vec4<f32> = u_xlat1;
  u_xlat3 = (x_97 + vec4<f32>(1.0f, 1.0f, 1.0f, 0.0f));
  let x_100 : vec4<f32> = u_xlat3;
  u_xlat8.x = dot(vec2<f32>(x_100.z, x_100.w), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_104 : vec4<f32> = u_xlat3;
  u_xlat8.y = dot(vec2<f32>(x_104.x, x_104.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_108 : vec2<f32> = u_xlat8;
  u_xlat8 = sin(x_108);
  let x_110 : vec2<f32> = u_xlat8;
  u_xlat8 = (x_110 * vec2<f32>(43758.546875f, 43758.546875f));
  let x_112 : vec2<f32> = u_xlat8;
  u_xlat8 = fract(x_112);
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat13 = dot(vec2<f32>(x_115.z, x_115.w), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_118 : f32 = u_xlat13;
  u_xlat13 = sin(x_118);
  let x_120 : f32 = u_xlat13;
  u_xlat13 = (x_120 * 43758.546875f);
  let x_122 : f32 = u_xlat13;
  u_xlat13 = fract(x_122);
  let x_125 : f32 = u_xlat13;
  let x_128 : f32 = u_xlat8.x;
  u_xlat19 = (-(x_125) + x_128);
  let x_132 : f32 = u_xlat0.z;
  let x_133 : f32 = u_xlat19;
  let x_135 : f32 = u_xlat13;
  u_xlat12.x = ((x_132 * x_133) + x_135);
  let x_139 : f32 = u_xlat12.x;
  let x_142 : f32 = u_xlat2.x;
  u_xlat13 = (-(x_139) + x_142);
  let x_146 : f32 = u_xlat0.w;
  let x_147 : f32 = u_xlat13;
  let x_150 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_146 * x_147) + x_150);
  let x_153 : vec4<f32> = u_xlat1;
  u_xlat3 = (vec4<f32>(x_153.x, x_153.y, x_153.x, x_153.y) + vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
  let x_158 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec2<f32>(x_158.x, x_158.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_161 : f32 = u_xlat18;
  u_xlat12.y = sin(x_161);
  let x_164 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_164 * vec2<f32>(0.25f, 43758.546875f));
  let x_169 : f32 = u_xlat12.y;
  u_xlat18 = fract(x_169);
  let x_171 : vec4<f32> = u_xlat3;
  u_xlat1.x = dot(vec2<f32>(x_171.z, x_171.w), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_175 : vec4<f32> = u_xlat3;
  u_xlat1.y = dot(vec2<f32>(x_175.x, x_175.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_179 : vec4<f32> = u_xlat1;
  let x_181 : vec2<f32> = sin(vec2<f32>(x_179.x, x_179.y));
  let x_182 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_181.x, x_181.y, x_182.z, x_182.w);
  let x_184 : vec4<f32> = u_xlat1;
  let x_186 : vec2<f32> = (vec2<f32>(x_184.x, x_184.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_187 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_186.x, x_186.y, x_187.z, x_187.w);
  let x_189 : vec4<f32> = u_xlat1;
  let x_191 : vec2<f32> = fract(vec2<f32>(x_189.x, x_189.y));
  let x_192 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_191.x, x_191.y, x_192.z, x_192.w);
  let x_195 : f32 = u_xlat18;
  let x_198 : f32 = u_xlat1.y;
  u_xlat7 = (-(x_195) + x_198);
  let x_201 : f32 = u_xlat0.x;
  let x_202 : f32 = u_xlat7;
  let x_204 : f32 = u_xlat18;
  u_xlat18 = ((x_201 * x_202) + x_204);
  let x_207 : f32 = u_xlat1.x;
  let x_210 : f32 = u_xlat8.y;
  u_xlat7 = (-(x_207) + x_210);
  let x_213 : f32 = u_xlat0.x;
  let x_214 : f32 = u_xlat7;
  let x_217 : f32 = u_xlat1.x;
  u_xlat0.x = ((x_213 * x_214) + x_217);
  let x_220 : f32 = u_xlat18;
  let x_223 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_220) + x_223);
  let x_227 : f32 = u_xlat0.y;
  let x_229 : f32 = u_xlat0.x;
  let x_231 : f32 = u_xlat18;
  u_xlat0.x = ((x_227 * x_229) + x_231);
  let x_235 : f32 = u_xlat0.x;
  let x_239 : f32 = u_xlat12.x;
  u_xlat0.x = ((x_235 * 0.125f) + x_239);
  let x_242 : vec4<f32> = vs_INTERP0;
  u_xlat1 = (vec4<f32>(x_242.x, x_242.y, x_242.x, x_242.y) * vec4<f32>(1.35249996185302734375f, 1.35249996185302734375f, 21.200000762939453125f, 21.200000762939453125f));
  let x_248 : vec4<f32> = u_xlat1;
  u_xlat2 = floor(x_248);
  let x_250 : vec4<f32> = u_xlat1;
  u_xlat1 = fract(x_250);
  let x_252 : vec4<f32> = u_xlat2;
  u_xlat3 = (x_252 + vec4<f32>(1.0f, 1.0f, 1.0f, 0.0f));
  let x_257 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(vec2<f32>(x_257.x, x_257.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_261 : vec4<f32> = u_xlat3;
  u_xlat6.y = dot(vec2<f32>(x_261.z, x_261.w), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_265 : vec3<f32> = u_xlat6;
  let x_267 : vec2<f32> = sin(vec2<f32>(x_265.x, x_265.y));
  let x_268 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_267.x, x_267.y, x_268.z);
  let x_270 : vec3<f32> = u_xlat6;
  let x_272 : vec2<f32> = (vec2<f32>(x_270.x, x_270.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_273 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_272.x, x_272.y, x_273.z);
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec4<f32>(x_275.x, x_275.y, x_275.x, x_275.y) + vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
  let x_278 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec2<f32>(x_278.z, x_278.w), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_281 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_281.x, x_281.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_286 : f32 = u_xlat3.x;
  u_xlat3.x = sin(x_286);
  let x_290 : f32 = u_xlat3.x;
  u_xlat3.x = (x_290 * 43758.546875f);
  let x_294 : f32 = u_xlat3.x;
  u_xlat3.x = fract(x_294);
  let x_297 : f32 = u_xlat18;
  u_xlat18 = sin(x_297);
  let x_299 : f32 = u_xlat18;
  u_xlat6.z = (x_299 * 43758.546875f);
  let x_302 : vec3<f32> = u_xlat6;
  u_xlat6 = fract(x_302);
  let x_305 : f32 = u_xlat6.z;
  let x_308 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_305) + x_308);
  let x_312 : vec4<f32> = u_xlat1;
  let x_313 : vec4<f32> = u_xlat1;
  u_xlat4 = (x_312 * x_313);
  let x_315 : vec4<f32> = u_xlat1;
  u_xlat1 = ((-(x_315) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
  let x_319 : vec4<f32> = u_xlat1;
  let x_320 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_319 * x_320);
  let x_323 : f32 = u_xlat1.x;
  let x_325 : f32 = u_xlat6.x;
  let x_328 : f32 = u_xlat6.z;
  u_xlat6.x = ((x_323 * x_325) + x_328);
  let x_331 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec2<f32>(x_331.x, x_331.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_334 : f32 = u_xlat18;
  u_xlat18 = sin(x_334);
  let x_336 : f32 = u_xlat18;
  u_xlat18 = (x_336 * 43758.546875f);
  let x_338 : f32 = u_xlat18;
  u_xlat18 = fract(x_338);
  let x_340 : f32 = u_xlat18;
  let x_343 : f32 = u_xlat3.x;
  u_xlat2.x = (-(x_340) + x_343);
  let x_347 : f32 = u_xlat1.x;
  let x_349 : f32 = u_xlat2.x;
  let x_351 : f32 = u_xlat18;
  u_xlat18 = ((x_347 * x_349) + x_351);
  let x_353 : f32 = u_xlat18;
  let x_356 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_353) + x_356);
  let x_360 : f32 = u_xlat1.y;
  let x_362 : f32 = u_xlat6.x;
  let x_364 : f32 = u_xlat18;
  u_xlat6.x = ((x_360 * x_362) + x_364);
  let x_368 : f32 = u_xlat6.x;
  let x_372 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_368 * 0.5f) + x_372);
  let x_376 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_376 * 0.5f) + -1.0f);
  let x_388 : f32 = x_383.x_TimeParameters.x;
  u_xlat6.x = (x_388 * 0.05000000074505805969f);
  let x_394 : f32 = x_383.x_WindZone_Vector.x;
  u_xlat1.x = sin(x_394);
  let x_398 : f32 = x_383.x_WindZone_Vector.x;
  u_xlat2.x = cos(x_398);
  let x_402 : f32 = u_xlat2.x;
  u_xlat1.y = x_402;
  let x_404 : vec3<f32> = u_xlat6;
  let x_407 : vec4<f32> = u_xlat1;
  let x_410 : vec4<f32> = vs_INTERP0;
  let x_412 : vec2<f32> = ((-(vec2<f32>(x_404.x, x_404.x)) * vec2<f32>(x_407.x, x_407.y)) + vec2<f32>(x_410.x, x_410.y));
  let x_413 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_412.x, x_413.y, x_412.y);
  let x_415 : vec3<f32> = u_xlat6;
  let x_417 : vec4<f32> = u_xlat0;
  let x_419 : vec2<f32> = (vec2<f32>(x_415.x, x_415.z) + vec2<f32>(x_417.x, x_417.x));
  let x_420 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_419.x, x_420.y, x_419.y);
  let x_422 : vec4<f32> = u_xlat0;
  let x_424 : vec4<f32> = vs_INTERP0;
  let x_426 : vec2<f32> = (vec2<f32>(x_422.x, x_422.x) + vec2<f32>(x_424.x, x_424.y));
  let x_427 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat1;
  let x_433 : vec2<f32> = (vec2<f32>(x_429.x, x_429.y) * vec2<f32>(6.0f, 6.0f));
  let x_434 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_433.x, x_433.y, x_434.z, x_434.w);
  let x_446 : vec4<f32> = u_xlat1;
  let x_450 : f32 = x_383.x_GlobalMipBias.x;
  let x_451 : vec4<f32> = textureSampleBias(Texture2D_82b413015ec74e89b64888c7e58113cb, samplerTexture2D_82b413015ec74e89b64888c7e58113cb, vec2<f32>(x_446.x, x_446.y), x_450);
  u_xlat0.x = x_451.x;
  let x_454 : vec3<f32> = u_xlat6;
  let x_458 : vec2<f32> = (vec2<f32>(x_454.x, x_454.z) * vec2<f32>(1.89999997615814208984f, 1.89999997615814208984f));
  let x_459 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_458.x, x_458.y, x_459.z, x_459.w);
  let x_464 : vec3<f32> = u_xlat6;
  let x_467 : f32 = x_383.x_GlobalMipBias.x;
  let x_468 : vec4<f32> = textureSampleBias(Texture2D_82b413015ec74e89b64888c7e58113cb, samplerTexture2D_82b413015ec74e89b64888c7e58113cb, vec2<f32>(x_464.x, x_464.z), x_467);
  u_xlat6.x = x_468.x;
  let x_471 : vec4<f32> = u_xlat1;
  let x_473 : vec2<f32> = floor(vec2<f32>(x_471.x, x_471.y));
  let x_474 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_473.x, x_473.y, x_474.z, x_474.w);
  let x_476 : vec4<f32> = u_xlat1;
  let x_478 : vec2<f32> = fract(vec2<f32>(x_476.x, x_476.y));
  let x_479 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_478.x, x_478.y, x_479.z, x_479.w);
  let x_481 : vec4<f32> = u_xlat2;
  let x_484 : vec2<f32> = (vec2<f32>(x_481.x, x_481.y) + vec2<f32>(1.0f, 1.0f));
  let x_485 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
  let x_487 : vec4<f32> = u_xlat3;
  u_xlat4 = (vec4<f32>(x_487.x, x_487.y, x_487.x, x_487.y) * vec4<f32>(289.0f, 289.0f, 289.0f, 289.0f));
  let x_496 : vec4<f32> = u_xlat4;
  let x_497 : vec4<f32> = u_xlat4;
  u_xlatb4 = (x_496 >= -(vec4<f32>(x_497.z, x_497.w, x_497.z, x_497.w)));
  let x_503 : bool = u_xlatb4.x;
  u_xlat4.x = select(-289.0f, 289.0f, x_503);
  let x_508 : bool = u_xlatb4.y;
  u_xlat4.y = select(-289.0f, 289.0f, x_508);
  let x_512 : bool = u_xlatb4.z;
  u_xlat4.z = select(-0.00346020772121846676f, 0.00346020772121846676f, x_512);
  let x_518 : bool = u_xlatb4.w;
  u_xlat4.w = select(-0.00346020772121846676f, 0.00346020772121846676f, x_518);
  let x_521 : vec4<f32> = u_xlat3;
  let x_523 : vec4<f32> = u_xlat4;
  let x_525 : vec2<f32> = (vec2<f32>(x_521.x, x_521.y) * vec2<f32>(x_523.z, x_523.w));
  let x_526 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
  let x_528 : vec4<f32> = u_xlat3;
  let x_530 : vec2<f32> = fract(vec2<f32>(x_528.x, x_528.y));
  let x_531 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat3;
  let x_535 : vec4<f32> = u_xlat4;
  let x_537 : vec2<f32> = (vec2<f32>(x_533.x, x_533.y) * vec2<f32>(x_535.x, x_535.y));
  let x_538 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
  let x_541 : f32 = u_xlat3.x;
  u_xlat18 = ((x_541 * 34.0f) + 1.0f);
  let x_546 : f32 = u_xlat3.x;
  let x_547 : f32 = u_xlat18;
  u_xlat18 = (x_546 * x_547);
  let x_549 : f32 = u_xlat18;
  u_xlat3.x = (x_549 * 289.0f);
  let x_554 : f32 = u_xlat3.x;
  let x_556 : f32 = u_xlat3.x;
  u_xlatb3 = (x_554 >= -(x_556));
  let x_559 : bool = u_xlatb3;
  let x_564 : vec2<f32> = select(vec2<f32>(-289.0f, -0.00346020772121846676f), vec2<f32>(289.0f, 0.00346020772121846676f), vec2<bool>(x_559, x_559));
  let x_565 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_564.x, x_565.y, x_564.y, x_565.w);
  let x_567 : f32 = u_xlat18;
  let x_569 : f32 = u_xlat3.z;
  u_xlat18 = (x_567 * x_569);
  let x_571 : f32 = u_xlat18;
  u_xlat18 = fract(x_571);
  let x_574 : f32 = u_xlat3.x;
  let x_575 : f32 = u_xlat18;
  let x_578 : f32 = u_xlat3.y;
  u_xlat18 = ((x_574 * x_575) + x_578);
  let x_580 : f32 = u_xlat18;
  u_xlat3.x = ((x_580 * 34.0f) + 1.0f);
  let x_584 : f32 = u_xlat18;
  let x_586 : f32 = u_xlat3.x;
  u_xlat18 = (x_584 * x_586);
  let x_588 : f32 = u_xlat18;
  u_xlat3.x = (x_588 * 289.0f);
  let x_592 : f32 = u_xlat3.x;
  let x_594 : f32 = u_xlat3.x;
  u_xlatb3 = (x_592 >= -(x_594));
  let x_597 : bool = u_xlatb3;
  let x_599 : vec2<f32> = select(vec2<f32>(-289.0f, -0.00346020772121846676f), vec2<f32>(289.0f, 0.00346020772121846676f), vec2<bool>(x_597, x_597));
  let x_600 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_599.x, x_599.y, x_600.z, x_600.w);
  let x_602 : f32 = u_xlat18;
  let x_604 : f32 = u_xlat3.y;
  u_xlat18 = (x_602 * x_604);
  let x_606 : f32 = u_xlat18;
  u_xlat18 = fract(x_606);
  let x_608 : f32 = u_xlat18;
  let x_610 : f32 = u_xlat3.x;
  u_xlat18 = (x_608 * x_610);
  let x_612 : f32 = u_xlat18;
  u_xlat18 = (x_612 * 0.02439024299383163452f);
  let x_615 : f32 = u_xlat18;
  u_xlat18 = fract(x_615);
  let x_617 : f32 = u_xlat18;
  let x_623 : vec2<f32> = ((vec2<f32>(x_617, x_617) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -0.5f));
  let x_624 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_623.x, x_623.y, x_624.z, x_624.w);
  let x_627 : f32 = u_xlat3.y;
  u_xlat18 = floor(x_627);
  let x_629 : f32 = u_xlat18;
  let x_632 : f32 = u_xlat3.x;
  u_xlat4.x = (-(x_629) + x_632);
  let x_636 : f32 = u_xlat3.x;
  u_xlat4.y = (abs(x_636) + -0.5f);
  let x_640 : vec4<f32> = u_xlat4;
  let x_642 : vec4<f32> = u_xlat4;
  u_xlat18 = dot(vec2<f32>(x_640.x, x_640.y), vec2<f32>(x_642.x, x_642.y));
  let x_645 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_645);
  let x_647 : f32 = u_xlat18;
  let x_649 : vec4<f32> = u_xlat4;
  let x_651 : vec2<f32> = (vec2<f32>(x_647, x_647) * vec2<f32>(x_649.x, x_649.y));
  let x_652 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
  let x_655 : vec4<f32> = u_xlat1;
  u_xlat15 = (vec2<f32>(x_655.x, x_655.y) + vec2<f32>(-1.0f, -1.0f));
  let x_659 : vec4<f32> = u_xlat3;
  let x_661 : vec2<f32> = u_xlat15;
  u_xlat18 = dot(vec2<f32>(x_659.x, x_659.y), x_661);
  let x_663 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec4<f32>(x_663.x, x_663.y, x_663.x, x_663.y) + vec4<f32>(0.0f, 1.0f, 1.0f, 0.0f));
  let x_667 : vec4<f32> = u_xlat3;
  u_xlat4 = (x_667 * vec4<f32>(289.0f, 289.0f, 289.0f, 289.0f));
  let x_669 : vec4<f32> = u_xlat4;
  let x_670 : vec4<f32> = u_xlat4;
  u_xlatb4 = (x_669 >= -(x_670));
  let x_675 : bool = u_xlatb4.z;
  u_xlat5.x = select(-289.0f, 289.0f, x_675);
  let x_679 : bool = u_xlatb4.w;
  u_xlat5.y = select(-289.0f, 289.0f, x_679);
  let x_683 : bool = u_xlatb4.z;
  u_xlat5.z = select(-0.00346020772121846676f, 0.00346020772121846676f, x_683);
  let x_687 : bool = u_xlatb4.w;
  u_xlat5.w = select(-0.00346020772121846676f, 0.00346020772121846676f, x_687);
  let x_691 : bool = u_xlatb4.x;
  u_xlat4.x = select(-289.0f, 289.0f, x_691);
  let x_695 : bool = u_xlatb4.y;
  u_xlat4.y = select(-289.0f, 289.0f, x_695);
  let x_699 : bool = u_xlatb4.x;
  u_xlat4.z = select(-0.00346020772121846676f, 0.00346020772121846676f, x_699);
  let x_703 : bool = u_xlatb4.y;
  u_xlat4.w = select(-0.00346020772121846676f, 0.00346020772121846676f, x_703);
  let x_706 : vec4<f32> = u_xlat3;
  let x_708 : vec4<f32> = u_xlat5;
  let x_710 : vec2<f32> = (vec2<f32>(x_706.z, x_706.w) * vec2<f32>(x_708.z, x_708.w));
  let x_711 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_711.x, x_711.y, x_710.x, x_710.y);
  let x_713 : vec4<f32> = u_xlat3;
  let x_715 : vec4<f32> = u_xlat4;
  let x_717 : vec2<f32> = (vec2<f32>(x_713.x, x_713.y) * vec2<f32>(x_715.z, x_715.w));
  let x_718 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_717.x, x_717.y, x_718.z, x_718.w);
  let x_720 : vec4<f32> = u_xlat3;
  u_xlat3 = fract(x_720);
  let x_722 : vec4<f32> = u_xlat3;
  let x_724 : vec4<f32> = u_xlat4;
  let x_726 : vec2<f32> = (vec2<f32>(x_722.x, x_722.y) * vec2<f32>(x_724.x, x_724.y));
  let x_727 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_726.x, x_726.y, x_727.z, x_727.w);
  let x_729 : vec4<f32> = u_xlat3;
  let x_731 : vec4<f32> = u_xlat5;
  u_xlat15 = (vec2<f32>(x_729.z, x_729.w) * vec2<f32>(x_731.x, x_731.y));
  let x_735 : f32 = u_xlat15.x;
  u_xlat4.x = ((x_735 * 34.0f) + 1.0f);
  let x_740 : f32 = u_xlat15.x;
  let x_742 : f32 = u_xlat4.x;
  u_xlat15.x = (x_740 * x_742);
  let x_746 : f32 = u_xlat15.x;
  u_xlat4.x = (x_746 * 289.0f);
  let x_750 : f32 = u_xlat4.x;
  let x_752 : f32 = u_xlat4.x;
  u_xlatb4.x = (x_750 >= -(x_752));
  let x_757 : bool = u_xlatb4.x;
  let x_759 : vec2<f32> = select(vec2<f32>(-289.0f, -0.00346020772121846676f), vec2<f32>(289.0f, 0.00346020772121846676f), vec2<bool>(x_757, x_757));
  let x_760 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_759.x, x_759.y, x_760.z, x_760.w);
  let x_763 : f32 = u_xlat15.x;
  let x_765 : f32 = u_xlat4.y;
  u_xlat15.x = (x_763 * x_765);
  let x_769 : f32 = u_xlat15.x;
  u_xlat15.x = fract(x_769);
  let x_773 : f32 = u_xlat4.x;
  let x_775 : f32 = u_xlat15.x;
  let x_778 : f32 = u_xlat15.y;
  u_xlat15.x = ((x_773 * x_775) + x_778);
  let x_783 : f32 = u_xlat15.x;
  u_xlat21 = ((x_783 * 34.0f) + 1.0f);
  let x_787 : f32 = u_xlat15.x;
  let x_788 : f32 = u_xlat21;
  u_xlat15.x = (x_787 * x_788);
  let x_792 : f32 = u_xlat15.x;
  u_xlat21 = (x_792 * 289.0f);
  let x_795 : f32 = u_xlat21;
  let x_796 : f32 = u_xlat21;
  u_xlatb21 = (x_795 >= -(x_796));
  let x_799 : bool = u_xlatb21;
  let x_801 : vec2<f32> = select(vec2<f32>(-289.0f, -0.00346020772121846676f), vec2<f32>(289.0f, 0.00346020772121846676f), vec2<bool>(x_799, x_799));
  let x_802 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_801.x, x_801.y, x_802.z, x_802.w);
  let x_805 : f32 = u_xlat15.x;
  let x_807 : f32 = u_xlat4.y;
  u_xlat15.x = (x_805 * x_807);
  let x_811 : f32 = u_xlat15.x;
  u_xlat15.x = fract(x_811);
  let x_815 : f32 = u_xlat15.x;
  let x_817 : f32 = u_xlat4.x;
  u_xlat15.x = (x_815 * x_817);
  let x_821 : f32 = u_xlat15.x;
  u_xlat15.x = (x_821 * 0.02439024299383163452f);
  let x_825 : f32 = u_xlat15.x;
  u_xlat15.x = fract(x_825);
  let x_828 : vec2<f32> = u_xlat15;
  u_xlat15 = ((vec2<f32>(x_828.x, x_828.x) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -0.5f));
  let x_833 : f32 = u_xlat15.y;
  u_xlat21 = floor(x_833);
  let x_835 : f32 = u_xlat21;
  let x_838 : f32 = u_xlat15.x;
  u_xlat4.x = (-(x_835) + x_838);
  let x_842 : f32 = u_xlat15.x;
  u_xlat4.y = (abs(x_842) + -0.5f);
  let x_846 : vec4<f32> = u_xlat4;
  let x_848 : vec4<f32> = u_xlat4;
  u_xlat15.x = dot(vec2<f32>(x_846.x, x_846.y), vec2<f32>(x_848.x, x_848.y));
  let x_853 : f32 = u_xlat15.x;
  u_xlat15.x = inverseSqrt(x_853);
  let x_856 : vec2<f32> = u_xlat15;
  let x_858 : vec4<f32> = u_xlat4;
  u_xlat15 = (vec2<f32>(x_856.x, x_856.x) * vec2<f32>(x_858.x, x_858.y));
  let x_861 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_861.x, x_861.y, x_861.x, x_861.y) + vec4<f32>(-0.0f, -1.0f, -1.0f, -0.0f));
  let x_866 : vec2<f32> = u_xlat15;
  let x_867 : vec4<f32> = u_xlat4;
  u_xlat15.x = dot(x_866, vec2<f32>(x_867.z, x_867.w));
  let x_871 : f32 = u_xlat18;
  let x_873 : f32 = u_xlat15.x;
  u_xlat18 = (x_871 + -(x_873));
  let x_877 : vec4<f32> = u_xlat1;
  let x_879 : vec4<f32> = u_xlat1;
  u_xlat16 = (vec2<f32>(x_877.x, x_877.y) * vec2<f32>(x_879.x, x_879.y));
  let x_882 : vec4<f32> = u_xlat1;
  let x_884 : vec2<f32> = u_xlat16;
  u_xlat16 = (vec2<f32>(x_882.x, x_882.y) * x_884);
  let x_886 : vec4<f32> = u_xlat1;
  let x_891 : vec2<f32> = ((vec2<f32>(x_886.x, x_886.y) * vec2<f32>(6.0f, 6.0f)) + vec2<f32>(-15.0f, -15.0f));
  let x_892 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_891.x, x_891.y, x_892.z, x_892.w);
  let x_894 : vec4<f32> = u_xlat1;
  let x_896 : vec4<f32> = u_xlat5;
  let x_901 : vec2<f32> = ((vec2<f32>(x_894.x, x_894.y) * vec2<f32>(x_896.x, x_896.y)) + vec2<f32>(10.0f, 10.0f));
  let x_902 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
  let x_904 : vec2<f32> = u_xlat16;
  let x_905 : vec4<f32> = u_xlat5;
  u_xlat16 = (x_904 * vec2<f32>(x_905.x, x_905.y));
  let x_909 : f32 = u_xlat16.y;
  let x_910 : f32 = u_xlat18;
  let x_913 : f32 = u_xlat15.x;
  u_xlat18 = ((x_909 * x_910) + x_913);
  let x_915 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_915.x, x_915.y, x_915.x, x_915.y) * vec4<f32>(289.0f, 289.0f, 289.0f, 289.0f));
  let x_919 : vec4<f32> = u_xlat5;
  let x_920 : vec4<f32> = u_xlat5;
  u_xlatb5 = (x_919 >= -(vec4<f32>(x_920.z, x_920.w, x_920.z, x_920.w)));
  let x_925 : bool = u_xlatb5.x;
  u_xlat5.x = select(-289.0f, 289.0f, x_925);
  let x_929 : bool = u_xlatb5.y;
  u_xlat5.y = select(-289.0f, 289.0f, x_929);
  let x_933 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.00346020772121846676f, 0.00346020772121846676f, x_933);
  let x_937 : bool = u_xlatb5.w;
  u_xlat5.w = select(-0.00346020772121846676f, 0.00346020772121846676f, x_937);
  let x_940 : vec4<f32> = u_xlat2;
  let x_942 : vec4<f32> = u_xlat5;
  let x_944 : vec2<f32> = (vec2<f32>(x_940.x, x_940.y) * vec2<f32>(x_942.z, x_942.w));
  let x_945 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
  let x_947 : vec4<f32> = u_xlat2;
  let x_949 : vec2<f32> = fract(vec2<f32>(x_947.x, x_947.y));
  let x_950 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
  let x_952 : vec4<f32> = u_xlat2;
  let x_954 : vec4<f32> = u_xlat5;
  let x_956 : vec2<f32> = (vec2<f32>(x_952.x, x_952.y) * vec2<f32>(x_954.x, x_954.y));
  let x_957 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_956.x, x_956.y, x_957.z, x_957.w);
  let x_960 : f32 = u_xlat2.x;
  u_xlat15.x = ((x_960 * 34.0f) + 1.0f);
  let x_965 : f32 = u_xlat2.x;
  let x_967 : f32 = u_xlat15.x;
  u_xlat2.x = (x_965 * x_967);
  let x_971 : f32 = u_xlat2.x;
  u_xlat15.x = (x_971 * 289.0f);
  let x_976 : f32 = u_xlat15.x;
  let x_978 : f32 = u_xlat15.x;
  u_xlatb15 = (x_976 >= -(x_978));
  let x_981 : bool = u_xlatb15;
  u_xlat15 = select(vec2<f32>(-289.0f, -0.00346020772121846676f), vec2<f32>(289.0f, 0.00346020772121846676f), vec2<bool>(x_981, x_981));
  let x_985 : f32 = u_xlat2.x;
  let x_987 : f32 = u_xlat15.y;
  u_xlat2.x = (x_985 * x_987);
  let x_991 : f32 = u_xlat2.x;
  u_xlat2.x = fract(x_991);
  let x_995 : f32 = u_xlat15.x;
  let x_997 : f32 = u_xlat2.x;
  let x_1000 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_995 * x_997) + x_1000);
  let x_1004 : f32 = u_xlat2.x;
  u_xlat8.x = ((x_1004 * 34.0f) + 1.0f);
  let x_1009 : f32 = u_xlat2.x;
  let x_1011 : f32 = u_xlat8.x;
  u_xlat2.x = (x_1009 * x_1011);
  let x_1015 : f32 = u_xlat2.x;
  u_xlat8.x = (x_1015 * 289.0f);
  let x_1020 : f32 = u_xlat8.x;
  let x_1022 : f32 = u_xlat8.x;
  u_xlatb8 = (x_1020 >= -(x_1022));
  let x_1025 : bool = u_xlatb8;
  u_xlat15 = select(vec2<f32>(-289.0f, -0.00346020772121846676f), vec2<f32>(289.0f, 0.00346020772121846676f), vec2<bool>(x_1025, x_1025));
  let x_1029 : f32 = u_xlat2.x;
  let x_1031 : f32 = u_xlat15.y;
  u_xlat2.x = (x_1029 * x_1031);
  let x_1035 : f32 = u_xlat2.x;
  u_xlat2.x = fract(x_1035);
  let x_1039 : f32 = u_xlat2.x;
  let x_1041 : f32 = u_xlat15.x;
  u_xlat2.x = (x_1039 * x_1041);
  let x_1045 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1045 * 0.02439024299383163452f);
  let x_1049 : f32 = u_xlat2.x;
  u_xlat2.x = fract(x_1049);
  let x_1052 : vec4<f32> = u_xlat2;
  let x_1055 : vec2<f32> = ((vec2<f32>(x_1052.x, x_1052.x) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -0.5f));
  let x_1056 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1055.x, x_1055.y, x_1056.z, x_1056.w);
  let x_1059 : f32 = u_xlat2.y;
  u_xlat8.x = floor(x_1059);
  let x_1063 : f32 = u_xlat8.x;
  let x_1066 : f32 = u_xlat2.x;
  u_xlat5.x = (-(x_1063) + x_1066);
  let x_1070 : f32 = u_xlat2.x;
  u_xlat5.y = (abs(x_1070) + -0.5f);
  let x_1074 : vec4<f32> = u_xlat5;
  let x_1076 : vec4<f32> = u_xlat5;
  u_xlat2.x = dot(vec2<f32>(x_1074.x, x_1074.y), vec2<f32>(x_1076.x, x_1076.y));
  let x_1081 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_1081);
  let x_1084 : vec4<f32> = u_xlat2;
  let x_1086 : vec4<f32> = u_xlat5;
  let x_1088 : vec2<f32> = (vec2<f32>(x_1084.x, x_1084.x) * vec2<f32>(x_1086.x, x_1086.y));
  let x_1089 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1088.x, x_1088.y, x_1089.z, x_1089.w);
  let x_1091 : vec4<f32> = u_xlat2;
  let x_1093 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec2<f32>(x_1091.x, x_1091.y), vec2<f32>(x_1093.x, x_1093.y));
  let x_1098 : f32 = u_xlat3.x;
  u_xlat7 = ((x_1098 * 34.0f) + 1.0f);
  let x_1102 : f32 = u_xlat3.x;
  let x_1103 : f32 = u_xlat7;
  u_xlat7 = (x_1102 * x_1103);
  let x_1105 : f32 = u_xlat7;
  u_xlat2.x = (x_1105 * 289.0f);
  let x_1110 : f32 = u_xlat2.x;
  let x_1112 : f32 = u_xlat2.x;
  u_xlatb2 = (x_1110 >= -(x_1112));
  let x_1115 : bool = u_xlatb2;
  let x_1117 : vec2<f32> = select(vec2<f32>(-289.0f, -0.00346020772121846676f), vec2<f32>(289.0f, 0.00346020772121846676f), vec2<bool>(x_1115, x_1115));
  let x_1118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1117.x, x_1117.y, x_1118.z, x_1118.w);
  let x_1120 : f32 = u_xlat7;
  let x_1122 : f32 = u_xlat2.y;
  u_xlat7 = (x_1120 * x_1122);
  let x_1124 : f32 = u_xlat7;
  u_xlat7 = fract(x_1124);
  let x_1127 : f32 = u_xlat2.x;
  let x_1128 : f32 = u_xlat7;
  let x_1131 : f32 = u_xlat3.y;
  u_xlat7 = ((x_1127 * x_1128) + x_1131);
  let x_1133 : f32 = u_xlat7;
  u_xlat2.x = ((x_1133 * 34.0f) + 1.0f);
  let x_1137 : f32 = u_xlat7;
  let x_1139 : f32 = u_xlat2.x;
  u_xlat7 = (x_1137 * x_1139);
  let x_1141 : f32 = u_xlat7;
  u_xlat2.x = (x_1141 * 289.0f);
  let x_1145 : f32 = u_xlat2.x;
  let x_1147 : f32 = u_xlat2.x;
  u_xlatb2 = (x_1145 >= -(x_1147));
  let x_1150 : bool = u_xlatb2;
  let x_1152 : vec2<f32> = select(vec2<f32>(-289.0f, -0.00346020772121846676f), vec2<f32>(289.0f, 0.00346020772121846676f), vec2<bool>(x_1150, x_1150));
  let x_1153 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1152.x, x_1152.y, x_1153.z, x_1153.w);
  let x_1155 : f32 = u_xlat7;
  let x_1157 : f32 = u_xlat2.y;
  u_xlat7 = (x_1155 * x_1157);
  let x_1159 : f32 = u_xlat7;
  u_xlat7 = fract(x_1159);
  let x_1161 : f32 = u_xlat7;
  let x_1163 : f32 = u_xlat2.x;
  u_xlat7 = (x_1161 * x_1163);
  let x_1165 : f32 = u_xlat7;
  u_xlat7 = (x_1165 * 0.02439024299383163452f);
  let x_1167 : f32 = u_xlat7;
  u_xlat7 = fract(x_1167);
  let x_1169 : f32 = u_xlat7;
  let x_1172 : vec2<f32> = ((vec2<f32>(x_1169, x_1169) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -0.5f));
  let x_1173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1172.x, x_1172.y, x_1173.z, x_1173.w);
  let x_1176 : f32 = u_xlat2.y;
  u_xlat7 = floor(x_1176);
  let x_1178 : f32 = u_xlat7;
  let x_1181 : f32 = u_xlat2.x;
  u_xlat3.x = (-(x_1178) + x_1181);
  let x_1185 : f32 = u_xlat2.x;
  u_xlat3.y = (abs(x_1185) + -0.5f);
  let x_1189 : vec4<f32> = u_xlat3;
  let x_1191 : vec4<f32> = u_xlat3;
  u_xlat7 = dot(vec2<f32>(x_1189.x, x_1189.y), vec2<f32>(x_1191.x, x_1191.y));
  let x_1194 : f32 = u_xlat7;
  u_xlat7 = inverseSqrt(x_1194);
  let x_1196 : f32 = u_xlat7;
  let x_1198 : vec4<f32> = u_xlat3;
  let x_1200 : vec2<f32> = (vec2<f32>(x_1196, x_1196) * vec2<f32>(x_1198.x, x_1198.y));
  let x_1201 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1200.x, x_1200.y, x_1201.z, x_1201.w);
  let x_1203 : vec4<f32> = u_xlat2;
  let x_1205 : vec4<f32> = u_xlat4;
  u_xlat7 = dot(vec2<f32>(x_1203.x, x_1203.y), vec2<f32>(x_1205.x, x_1205.y));
  let x_1209 : f32 = u_xlat1.x;
  let x_1211 : f32 = u_xlat7;
  u_xlat7 = (-(x_1209) + x_1211);
  let x_1214 : f32 = u_xlat16.y;
  let x_1215 : f32 = u_xlat7;
  let x_1218 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_1214 * x_1215) + x_1218);
  let x_1221 : f32 = u_xlat18;
  let x_1223 : f32 = u_xlat1.x;
  u_xlat18 = (x_1221 + -(x_1223));
  let x_1227 : f32 = u_xlat16.x;
  let x_1228 : f32 = u_xlat18;
  let x_1231 : f32 = u_xlat1.x;
  u_xlat18 = ((x_1227 * x_1228) + x_1231);
  let x_1233 : f32 = u_xlat18;
  u_xlat18 = (x_1233 + 0.5f);
  let x_1236 : f32 = u_xlat6.x;
  let x_1237 : f32 = u_xlat18;
  u_xlat6.x = (x_1236 + x_1237);
  let x_1241 : f32 = u_xlat0.x;
  let x_1245 : f32 = u_xlat6.x;
  u_xlat0.x = ((x_1241 * 0.20000000298023223877f) + x_1245);
  let x_1249 : f32 = u_xlat0.x;
  let x_1255 : f32 = x_1252.Vector1_5938df77fca14c0db6439fcfee84628c;
  u_xlat0.x = (x_1249 + x_1255);
  let x_1259 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1259 + -0.5f);
  let x_1262 : vec4<f32> = u_xlat2;
  u_xlat6.x = dot(vec2<f32>(x_1262.z, x_1262.w), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_1266 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_1266.z, x_1266.w, x_1266.z, x_1266.w) + vec4<f32>(0.0f, 1.0f, 1.0f, 1.0f));
  let x_1270 : f32 = u_xlat6.x;
  u_xlat6.x = sin(x_1270);
  let x_1274 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1274 * 43758.546875f);
  let x_1278 : f32 = u_xlat6.x;
  u_xlat6.x = fract(x_1278);
  let x_1282 : f32 = u_xlat6.x;
  let x_1285 : f32 = u_xlat6.y;
  u_xlat12.x = (-(x_1282) + x_1285);
  let x_1289 : f32 = u_xlat1.z;
  let x_1291 : f32 = u_xlat12.x;
  let x_1294 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1289 * x_1291) + x_1294);
  let x_1297 : vec4<f32> = u_xlat2;
  u_xlat12.x = dot(vec2<f32>(x_1297.z, x_1297.w), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_1301 : vec4<f32> = u_xlat2;
  u_xlat12.y = dot(vec2<f32>(x_1301.x, x_1301.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_1305 : vec2<f32> = u_xlat12;
  u_xlat12 = sin(x_1305);
  let x_1307 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_1307 * vec2<f32>(43758.546875f, 43758.546875f));
  let x_1309 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_1309);
  let x_1312 : f32 = u_xlat12.y;
  let x_1315 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_1312) + x_1315);
  let x_1319 : f32 = u_xlat1.z;
  let x_1321 : f32 = u_xlat12.x;
  let x_1324 : f32 = u_xlat12.y;
  u_xlat12.x = ((x_1319 * x_1321) + x_1324);
  let x_1328 : f32 = u_xlat6.x;
  let x_1331 : f32 = u_xlat12.x;
  u_xlat12.x = (-(x_1328) + x_1331);
  let x_1335 : f32 = u_xlat1.w;
  let x_1337 : f32 = u_xlat12.x;
  let x_1340 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1335 * x_1337) + x_1340);
  let x_1343 : vec4<f32> = vs_INTERP0;
  u_xlat1 = (vec4<f32>(x_1343.x, x_1343.y, x_1343.x, x_1343.y) * vec4<f32>(10.6000003814697265625f, 10.6000003814697265625f, 5.30000019073486328125f, 5.30000019073486328125f));
  let x_1349 : vec4<f32> = u_xlat1;
  u_xlat2 = floor(x_1349);
  let x_1351 : vec4<f32> = u_xlat1;
  u_xlat1 = fract(x_1351);
  let x_1353 : vec4<f32> = u_xlat2;
  u_xlat3 = (x_1353 + vec4<f32>(1.0f, 1.0f, 1.0f, 0.0f));
  let x_1355 : vec4<f32> = u_xlat3;
  u_xlat12.x = dot(vec2<f32>(x_1355.x, x_1355.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_1359 : vec4<f32> = u_xlat3;
  u_xlat12.y = dot(vec2<f32>(x_1359.z, x_1359.w), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_1363 : vec2<f32> = u_xlat12;
  u_xlat12 = sin(x_1363);
  let x_1365 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_1365 * vec2<f32>(43758.546875f, 43758.546875f));
  let x_1367 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_1367);
  let x_1369 : vec4<f32> = u_xlat2;
  u_xlat3 = (vec4<f32>(x_1369.x, x_1369.y, x_1369.x, x_1369.y) + vec4<f32>(1.0f, 0.0f, 0.0f, 1.0f));
  let x_1372 : vec4<f32> = u_xlat3;
  u_xlat3.z = dot(vec2<f32>(x_1372.z, x_1372.w), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_1376 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec2<f32>(x_1376.x, x_1376.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_1380 : vec4<f32> = u_xlat3;
  let x_1382 : vec2<f32> = sin(vec2<f32>(x_1380.x, x_1380.z));
  let x_1383 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1382.x, x_1382.y, x_1383.z, x_1383.w);
  let x_1385 : vec4<f32> = u_xlat3;
  let x_1387 : vec2<f32> = (vec2<f32>(x_1385.x, x_1385.y) * vec2<f32>(43758.546875f, 43758.546875f));
  let x_1388 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1387.x, x_1387.y, x_1388.z, x_1388.w);
  let x_1390 : vec4<f32> = u_xlat3;
  let x_1392 : vec2<f32> = fract(vec2<f32>(x_1390.x, x_1390.y));
  let x_1393 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1392.x, x_1392.y, x_1393.z, x_1393.w);
  let x_1396 : f32 = u_xlat12.x;
  let x_1398 : f32 = u_xlat3.y;
  u_xlat12.x = (x_1396 + -(x_1398));
  let x_1402 : vec4<f32> = u_xlat1;
  let x_1403 : vec4<f32> = u_xlat1;
  u_xlat4 = (x_1402 * x_1403);
  let x_1405 : vec4<f32> = u_xlat1;
  u_xlat1 = ((-(x_1405) * vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f)) + vec4<f32>(3.0f, 3.0f, 3.0f, 3.0f));
  let x_1409 : vec4<f32> = u_xlat1;
  let x_1410 : vec4<f32> = u_xlat4;
  u_xlat1 = (x_1409 * x_1410);
  let x_1413 : f32 = u_xlat1.x;
  let x_1415 : f32 = u_xlat12.x;
  let x_1418 : f32 = u_xlat3.y;
  u_xlat12.x = ((x_1413 * x_1415) + x_1418);
  let x_1421 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec2<f32>(x_1421.x, x_1421.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_1426 : f32 = u_xlat2.x;
  u_xlat2.x = sin(x_1426);
  let x_1430 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1430 * 43758.546875f);
  let x_1434 : f32 = u_xlat2.x;
  u_xlat2.x = fract(x_1434);
  let x_1438 : f32 = u_xlat2.x;
  let x_1441 : f32 = u_xlat3.x;
  u_xlat8.x = (-(x_1438) + x_1441);
  let x_1445 : f32 = u_xlat1.x;
  let x_1447 : f32 = u_xlat8.x;
  let x_1450 : f32 = u_xlat2.x;
  u_xlat1.x = ((x_1445 * x_1447) + x_1450);
  let x_1454 : f32 = u_xlat12.x;
  let x_1456 : f32 = u_xlat1.x;
  u_xlat12.x = (x_1454 + -(x_1456));
  let x_1461 : f32 = u_xlat1.y;
  let x_1463 : f32 = u_xlat12.x;
  let x_1466 : f32 = u_xlat1.x;
  u_xlat12.x = ((x_1461 * x_1463) + x_1466);
  let x_1470 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1470 * 0.25f);
  let x_1474 : f32 = u_xlat6.x;
  let x_1477 : f32 = u_xlat12.x;
  u_xlat6.x = ((x_1474 * 0.125f) + x_1477);
  let x_1480 : vec4<f32> = u_xlat2;
  u_xlat12.x = dot(vec2<f32>(x_1480.z, x_1480.w), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_1484 : vec4<f32> = u_xlat2;
  u_xlat2 = (vec4<f32>(x_1484.z, x_1484.w, x_1484.z, x_1484.w) + vec4<f32>(0.0f, 1.0f, 1.0f, 1.0f));
  let x_1488 : f32 = u_xlat12.x;
  u_xlat12.x = sin(x_1488);
  let x_1492 : f32 = u_xlat12.x;
  u_xlat12.x = (x_1492 * 43758.546875f);
  let x_1496 : f32 = u_xlat12.x;
  u_xlat12.x = fract(x_1496);
  let x_1500 : f32 = u_xlat12.x;
  let x_1503 : f32 = u_xlat12.y;
  u_xlat18 = (-(x_1500) + x_1503);
  let x_1506 : f32 = u_xlat1.z;
  let x_1507 : f32 = u_xlat18;
  let x_1510 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_1506 * x_1507) + x_1510);
  let x_1513 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec2<f32>(x_1513.z, x_1513.w), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_1516 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec2<f32>(x_1516.x, x_1516.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_1521 : f32 = u_xlat1.x;
  u_xlat1.x = sin(x_1521);
  let x_1525 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1525 * 43758.546875f);
  let x_1529 : f32 = u_xlat1.x;
  u_xlat1.x = fract(x_1529);
  let x_1532 : f32 = u_xlat18;
  u_xlat18 = sin(x_1532);
  let x_1534 : f32 = u_xlat18;
  u_xlat18 = (x_1534 * 43758.546875f);
  let x_1536 : f32 = u_xlat18;
  u_xlat18 = fract(x_1536);
  let x_1539 : f32 = u_xlat1.x;
  let x_1541 : f32 = u_xlat18;
  u_xlat18 = (-(x_1539) + x_1541);
  let x_1544 : f32 = u_xlat1.z;
  let x_1545 : f32 = u_xlat18;
  let x_1548 : f32 = u_xlat1.x;
  u_xlat18 = ((x_1544 * x_1545) + x_1548);
  let x_1551 : f32 = u_xlat12.x;
  let x_1553 : f32 = u_xlat18;
  u_xlat18 = (-(x_1551) + x_1553);
  let x_1556 : f32 = u_xlat1.w;
  let x_1557 : f32 = u_xlat18;
  let x_1560 : f32 = u_xlat12.x;
  u_xlat12.x = ((x_1556 * x_1557) + x_1560);
  let x_1564 : f32 = u_xlat12.x;
  let x_1567 : f32 = u_xlat6.x;
  u_xlat6.x = ((x_1564 * 0.5f) + x_1567);
  let x_1571 : f32 = u_xlat6.x;
  let x_1575 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_1571) * 0.5f) + x_1575);
  let x_1579 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_1579) + 1.0f);
  let x_1584 : f32 = u_xlat0.x;
  let x_1586 : f32 = u_xlat6.x;
  u_xlat0.x = (x_1584 / x_1586);
  let x_1590 : f32 = u_xlat0.x;
  u_xlat6.x = (x_1590 + -1.0f);
  let x_1594 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1594 * 0.25f);
  let x_1598 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1598 * 0.5f);
  let x_1602 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1602, 0.0f, 1.0f);
  let x_1606 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_1606) + 1.0f);
  let x_1611 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_1611, 0.5f);
  let x_1615 : f32 = u_xlat0.x;
  u_xlat12.x = x_1615;
  let x_1618 : f32 = u_xlat12.x;
  u_xlat12.x = clamp(x_1618, 0.0f, 1.0f);
  let x_1621 : vec2<f32> = u_xlat12;
  let x_1625 : vec4<f32> = x_383.x_MainLightColor;
  let x_1627 : vec3<f32> = (vec3<f32>(x_1621.x, x_1621.x, x_1621.x) * vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
  let x_1628 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1627.x, x_1627.y, x_1627.z, x_1628.w);
  let x_1637 : vec4<f32> = x_1634.unity_SHAr;
  u_xlat2.x = dot(vec2<f32>(x_1637.y, x_1637.w), vec2<f32>(1.0f, 1.0f));
  let x_1643 : vec4<f32> = x_1634.unity_SHAg;
  u_xlat2.y = dot(vec2<f32>(x_1643.y, x_1643.w), vec2<f32>(1.0f, 1.0f));
  let x_1649 : vec4<f32> = x_1634.unity_SHAb;
  u_xlat2.z = dot(vec2<f32>(x_1649.y, x_1649.w), vec2<f32>(1.0f, 1.0f));
  let x_1653 : vec4<f32> = u_xlat2;
  let x_1657 : vec4<f32> = x_1634.unity_SHC;
  let x_1660 : vec3<f32> = (vec3<f32>(x_1653.x, x_1653.y, x_1653.z) + -(vec3<f32>(x_1657.x, x_1657.y, x_1657.z)));
  let x_1661 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1660.x, x_1660.y, x_1660.z, x_1661.w);
  let x_1663 : vec4<f32> = u_xlat2;
  let x_1666 : vec3<f32> = max(vec3<f32>(x_1663.x, x_1663.y, x_1663.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_1667 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1666.x, x_1666.y, x_1666.z, x_1667.w);
  let x_1671 : vec3<f32> = u_xlat6;
  let x_1673 : vec4<f32> = u_xlat1;
  let x_1676 : vec4<f32> = u_xlat2;
  let x_1678 : vec3<f32> = ((vec3<f32>(x_1671.x, x_1671.x, x_1671.x) * vec3<f32>(x_1673.x, x_1673.y, x_1673.z)) + vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
  let x_1679 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1678.x, x_1678.y, x_1678.z, x_1679.w);
  let x_1683 : f32 = x_383.x_WorldSpaceCameraPos.y;
  let x_1691 : f32 = vs_INTERP1.y;
  u_xlat6.x = ((-(x_1683) * 0.984375f) + x_1691);
  let x_1695 : f32 = u_xlat6.x;
  u_xlat6.x = (x_1695 * 0.18285714089870452881f);
  let x_1700 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_1700, 0.0f, 1.0f);
  let x_1704 : f32 = u_xlat6.x;
  let x_1706 : f32 = u_xlat0.x;
  SV_Target0.w = (x_1704 * x_1706);
  let x_1711 : f32 = SV_Target0.w;
  SV_Target0.w = clamp(x_1711, 0.0f, 1.0f);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_INTERP0_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP1 = vs_INTERP1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


