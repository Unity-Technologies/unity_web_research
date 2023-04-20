diagnostic(off, derivative_uniformity);

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

struct PGlobals {
  /* @offset(0) */
  x_ScaledScreenParams : vec4<f32>,
  /* @offset(16) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(32) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(48) */
  x_MainLightColor : vec4<f32>,
  /* @offset(64) */
  x_TimeParameters : vec4<f32>,
  /* @offset(80) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(96) */
  x_ProjectionParams : vec4<f32>,
  /* @offset(112) */
  x_ScreenParams : vec4<f32>,
  /* @offset(128) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(208) */
  x_BA_CloudData : vec4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D_TexelSize : vec4<f32>,
  /* @offset(16) */
  Color_7eff2e7fc27440719d0a871a39dabdd3 : vec4<f32>,
  /* @offset(32) */
  Vector1_2a375228e8d3437382814520b0cd8644 : f32,
  /* @offset(36) */
  Vector1_5f4b185241524942830132fc71554a33 : f32,
  /* @offset(40) */
  Vector1_2d1f70e8efb04843b1f8184ae06925e0 : f32,
  /* @offset(44) */
  Vector1_33982692 : f32,
  /* @offset(48) */
  Vector1_10DA9AB3 : f32,
  /* @offset(56) */
  Vector2_65050940ec244ae3bf42db206c2dccca : vec2<f32>,
  /* @offset(64) */
  Texture2D_4B382D9C_TexelSize : vec4<f32>,
  /* @offset(80) */
  Texture2D_3DC46A50_TexelSize : vec4<f32>,
  /* @offset(96) */
  x_BA_SkyboxMatrix : mat4x4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatb0 : vec2<bool>;

var<private> vs_INTERP0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_43 : UnityPerDraw;

var<private> u_xlat0 : vec3<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> vs_INTERP3 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb18 : bool;

var<private> u_xlat19 : f32;

@group(1) @binding(0) var<uniform> x_163 : PGlobals;

var<private> u_xlatb1 : vec3<bool>;

@group(0) @binding(1) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(4) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP1 : vec4<f32>;

var<private> u_xlat7 : f32;

var<private> u_xlat13 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_429 : UnityPerMaterial;

var<private> u_xlatb4 : vec3<bool>;

var<private> vs_INTERP2 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> u_xlat12 : vec2<f32>;

@group(0) @binding(0) var x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D : texture_2d<f32>;

@group(0) @binding(3) var sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D : sampler;

@group(0) @binding(2) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(5) var samplerTexture2D_3DC46A50 : sampler;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var x_250 : f32;
  var x_262 : f32;
  var x_312 : f32;
  var x_463 : f32;
  var x_475 : f32;
  var x_487 : f32;
  var x_566 : f32;
  var x_580 : f32;
  var x_592 : f32;
  var x_683 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_33 : f32 = vs_INTERP0.w;
  u_xlatb0.x = (0.0f < x_33);
  let x_48 : f32 = x_43.unity_WorldTransformParams.w;
  u_xlatb0.y = (x_48 >= 0.0f);
  let x_55 : bool = u_xlatb0.x;
  u_xlat0.x = select(-1.0f, 1.0f, x_55);
  let x_61 : bool = u_xlatb0.y;
  u_xlat0.y = select(-1.0f, 1.0f, x_61);
  let x_65 : f32 = u_xlat0.y;
  let x_67 : f32 = u_xlat0.x;
  u_xlat0.x = (x_65 * x_67);
  let x_71 : vec4<f32> = vs_INTERP0;
  let x_75 : vec3<f32> = vs_INTERP3;
  u_xlat6 = (vec3<f32>(x_71.x, x_71.y, x_71.z) * vec3<f32>(x_75.y, x_75.z, x_75.x));
  let x_78 : vec3<f32> = vs_INTERP3;
  let x_79 : vec4<f32> = vs_INTERP0;
  let x_82 : vec3<f32> = u_xlat6;
  u_xlat6 = ((x_78 * vec3<f32>(x_79.y, x_79.z, x_79.x)) + -(x_82));
  let x_85 : vec3<f32> = u_xlat6;
  let x_86 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_85 * vec3<f32>(x_86.x, x_86.x, x_86.x));
  let x_90 : vec3<f32> = vs_INTERP3;
  let x_91 : vec3<f32> = vs_INTERP3;
  u_xlat18 = dot(x_90, x_91);
  let x_93 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_93);
  let x_95 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_95);
  let x_97 : vec3<f32> = u_xlat0;
  let x_98 : f32 = u_xlat18;
  u_xlat0 = (x_97 * vec3<f32>(x_98, x_98, x_98));
  let x_102 : f32 = u_xlat18;
  let x_104 : vec3<f32> = vs_INTERP3;
  u_xlat1 = (vec3<f32>(x_102, x_102, x_102) * vec3<f32>(x_104.y, x_104.z, x_104.x));
  let x_109 : f32 = u_xlat18;
  let x_111 : vec4<f32> = vs_INTERP0;
  let x_113 : vec3<f32> = (vec3<f32>(x_109, x_109, x_109) * vec3<f32>(x_111.x, x_111.y, x_111.z));
  let x_114 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_113.x, x_113.y, x_113.z, x_114.w);
  let x_117 : vec3<f32> = u_xlat0;
  let x_118 : vec3<f32> = u_xlat1;
  let x_119 : vec3<f32> = (x_117 * x_118);
  let x_120 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_122 : vec3<f32> = u_xlat0;
  let x_124 : vec3<f32> = u_xlat1;
  let x_127 : vec4<f32> = u_xlat3;
  let x_130 : vec3<f32> = ((vec3<f32>(x_122.x, x_122.z, x_122.y) * vec3<f32>(x_124.z, x_124.y, x_124.x)) + -(vec3<f32>(x_127.y, x_127.x, x_127.z)));
  let x_131 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  let x_133 : vec4<f32> = u_xlat2;
  let x_135 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_133.y, x_133.x, x_133.z), vec3<f32>(x_135.x, x_135.y, x_135.z));
  let x_139 : f32 = u_xlat18;
  u_xlatb18 = (x_139 < 0.0f);
  let x_141 : bool = u_xlatb18;
  u_xlat18 = select(1.0f, -1.0f, x_141);
  let x_145 : f32 = u_xlat0.x;
  let x_147 : f32 = u_xlat2.x;
  u_xlat19 = (x_145 * x_147);
  let x_150 : f32 = u_xlat2.z;
  let x_152 : f32 = u_xlat0.y;
  let x_154 : f32 = u_xlat19;
  u_xlat3.z = ((x_150 * x_152) + -(x_154));
  let x_158 : vec3<f32> = u_xlat0;
  let x_167 : vec4<f32> = x_163.x_MainLightPosition;
  u_xlat0.y = dot(vec3<f32>(x_158.y, x_158.z, x_158.x), vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_172 : f32 = u_xlat1.z;
  let x_174 : f32 = u_xlat2.z;
  u_xlat19 = (x_172 * x_174);
  let x_177 : f32 = u_xlat1.y;
  let x_179 : f32 = u_xlat2.x;
  let x_181 : f32 = u_xlat19;
  u_xlat3.y = ((x_177 * x_179) + -(x_181));
  let x_185 : vec3<f32> = u_xlat1;
  let x_188 : vec4<f32> = x_163.x_MainLightPosition;
  u_xlat0.z = dot(vec3<f32>(x_185.z, x_185.x, x_185.y), vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_192 : vec4<f32> = u_xlat2;
  let x_195 : vec4<f32> = x_163.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_192.x, x_192.y, x_192.z), vec3<f32>(x_195.x, x_195.y, x_195.z));
  let x_199 : f32 = u_xlat18;
  let x_201 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_199, x_199, x_199) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_204 : vec3<f32> = u_xlat1;
  let x_205 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(x_204, x_205);
  let x_207 : f32 = u_xlat18;
  u_xlat18 = max(x_207, 1.17549435e-38f);
  let x_210 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_210);
  let x_212 : f32 = u_xlat18;
  let x_214 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_212, x_212, x_212) * x_214);
  let x_216 : vec3<f32> = u_xlat1;
  let x_217 : vec3<f32> = u_xlat1;
  let x_218 : vec3<f32> = (x_216 * x_217);
  let x_219 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_225 : vec3<f32> = u_xlat1;
  let x_228 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_225.x, x_225.y, x_225.z, x_225.x));
  u_xlatb1 = vec3<bool>(x_228.x, x_228.y, x_228.z);
  let x_241 : vec4<f32> = vs_INTERP1;
  let x_245 : f32 = x_163.x_GlobalMipBias.x;
  let x_246 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_241.x, x_241.y), x_245);
  u_xlat3 = x_246;
  let x_248 : bool = u_xlatb1.x;
  if (x_248) {
    let x_254 : f32 = u_xlat3.z;
    x_250 = x_254;
  } else {
    let x_257 : f32 = u_xlat3.x;
    x_250 = x_257;
  }
  let x_258 : f32 = x_250;
  u_xlat1.x = x_258;
  let x_261 : bool = u_xlatb1.y;
  if (x_261) {
    let x_266 : f32 = u_xlat3.y;
    x_262 = x_266;
  } else {
    let x_269 : f32 = u_xlat3.w;
    x_262 = x_269;
  }
  let x_270 : f32 = x_262;
  u_xlat1.y = x_270;
  let x_272 : vec4<f32> = u_xlat2;
  let x_274 : vec3<f32> = u_xlat1;
  let x_276 : vec2<f32> = (vec2<f32>(x_272.x, x_272.y) * vec2<f32>(x_274.x, x_274.y));
  let x_277 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_276.x, x_276.y, x_277.z);
  let x_280 : f32 = u_xlat1.y;
  let x_282 : f32 = u_xlat1.x;
  u_xlat18 = (x_280 + x_282);
  let x_284 : vec4<f32> = u_xlat3;
  let x_286 : vec4<f32> = u_xlat3;
  let x_288 : vec2<f32> = (vec2<f32>(x_284.z, x_284.w) + vec2<f32>(x_286.x, x_286.y));
  let x_289 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_288.x, x_288.y, x_289.z);
  let x_292 : f32 = u_xlat1.y;
  let x_294 : f32 = u_xlat1.x;
  u_xlat1.x = (x_292 + x_294);
  let x_299 : f32 = u_xlat1.x;
  u_xlat7 = (x_299 * 0.25f);
  let x_303 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_303) * 0.25f) + 1.0f);
  let x_311 : bool = u_xlatb1.z;
  if (x_311) {
    let x_315 : f32 = u_xlat7;
    x_312 = x_315;
  } else {
    let x_318 : f32 = u_xlat1.x;
    x_312 = x_318;
  }
  let x_319 : f32 = x_312;
  u_xlat13.x = x_319;
  let x_322 : f32 = u_xlat13.x;
  let x_324 : f32 = u_xlat2.z;
  let x_326 : f32 = u_xlat18;
  u_xlat2.y = ((x_322 * x_324) + x_326);
  u_xlat2.x = 1.0f;
  u_xlat2.z = 1.0f;
  u_xlat2.w = 1.0f;
  let x_332 : vec4<f32> = u_xlat2;
  let x_334 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_332.y, x_332.z, x_332.z), vec3<f32>(x_334.y, x_334.z, x_334.z));
  let x_337 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_337);
  let x_339 : f32 = u_xlat18;
  let x_341 : vec4<f32> = u_xlat2;
  let x_343 : vec3<f32> = (vec3<f32>(x_339, x_339, x_339) * vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_347 : vec4<f32> = u_xlat2;
  let x_349 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec3<f32>(x_347.y, x_347.z, x_347.y) * vec3<f32>(x_349.z, x_349.z, x_349.y));
  let x_353 : f32 = u_xlat2.z;
  let x_355 : f32 = u_xlat2.z;
  let x_358 : f32 = u_xlat4.z;
  u_xlat18 = ((x_353 * x_355) + -(x_358));
  let x_364 : vec4<f32> = x_43.unity_SHBr;
  let x_365 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_364, vec4<f32>(x_365.x, x_365.x, x_365.y, x_365.y));
  let x_371 : vec4<f32> = x_43.unity_SHBg;
  let x_372 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_371, vec4<f32>(x_372.x, x_372.x, x_372.y, x_372.y));
  let x_378 : vec4<f32> = x_43.unity_SHBb;
  let x_379 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_378, vec4<f32>(x_379.x, x_379.x, x_379.y, x_379.y));
  let x_385 : vec4<f32> = x_43.unity_SHC;
  let x_387 : f32 = u_xlat18;
  let x_390 : vec3<f32> = u_xlat5;
  u_xlat4 = ((vec3<f32>(x_385.x, x_385.y, x_385.z) * vec3<f32>(x_387, x_387, x_387)) + x_390);
  let x_394 : vec4<f32> = x_43.unity_SHAr;
  let x_396 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(vec4<f32>(x_394.y, x_394.x, x_394.z, x_394.w), vec4<f32>(x_396.y, x_396.z, x_396.z, x_396.w));
  let x_402 : vec4<f32> = x_43.unity_SHAg;
  let x_404 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(vec4<f32>(x_402.y, x_402.x, x_402.z, x_402.w), vec4<f32>(x_404.y, x_404.z, x_404.z, x_404.w));
  let x_410 : vec4<f32> = x_43.unity_SHAb;
  let x_411 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_410, x_411);
  let x_414 : vec3<f32> = u_xlat4;
  let x_415 : vec3<f32> = u_xlat5;
  let x_416 : vec3<f32> = (x_414 + x_415);
  let x_417 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_416.x, x_416.y, x_416.z, x_417.w);
  let x_419 : vec4<f32> = u_xlat2;
  let x_422 : vec3<f32> = max(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_423 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
  let x_425 : vec4<f32> = u_xlat2;
  let x_431 : f32 = x_429.Vector1_5f4b185241524942830132fc71554a33;
  let x_433 : f32 = x_429.Vector1_5f4b185241524942830132fc71554a33;
  let x_435 : f32 = x_429.Vector1_5f4b185241524942830132fc71554a33;
  let x_436 : vec3<f32> = vec3<f32>(x_431, x_433, x_435);
  let x_441 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) * vec3<f32>(x_436.x, x_436.y, x_436.z));
  let x_442 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec3<f32> = u_xlat0;
  let x_445 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_444, x_445);
  let x_447 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_447);
  let x_449 : f32 = u_xlat18;
  let x_451 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_449, x_449, x_449) * x_451);
  let x_454 : vec3<f32> = u_xlat0;
  let x_456 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_454.x, x_454.y, x_454.z, x_454.x));
  u_xlatb4 = vec3<bool>(x_456.x, x_456.y, x_456.z);
  let x_458 : vec3<f32> = u_xlat0;
  let x_459 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_458 * x_459);
  let x_462 : bool = u_xlatb4.x;
  if (x_462) {
    let x_467 : f32 = u_xlat3.z;
    x_463 = x_467;
  } else {
    let x_470 : f32 = u_xlat3.x;
    x_463 = x_470;
  }
  let x_471 : f32 = x_463;
  u_xlat13.x = x_471;
  let x_474 : bool = u_xlatb4.y;
  if (x_474) {
    let x_479 : f32 = u_xlat3.y;
    x_475 = x_479;
  } else {
    let x_482 : f32 = u_xlat3.w;
    x_475 = x_482;
  }
  let x_483 : f32 = x_475;
  u_xlat13.y = x_483;
  let x_486 : bool = u_xlatb4.z;
  if (x_486) {
    let x_490 : f32 = u_xlat7;
    x_487 = x_490;
  } else {
    let x_493 : f32 = u_xlat1.x;
    x_487 = x_493;
  }
  let x_494 : f32 = x_487;
  u_xlat18 = x_494;
  let x_495 : vec3<f32> = u_xlat0;
  let x_497 : vec2<f32> = u_xlat13;
  let x_498 : vec2<f32> = (vec2<f32>(x_495.x, x_495.y) * x_497);
  let x_499 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_498.x, x_498.y, x_499.z);
  let x_502 : f32 = u_xlat0.y;
  let x_504 : f32 = u_xlat0.x;
  u_xlat0.x = (x_502 + x_504);
  let x_507 : f32 = u_xlat18;
  let x_509 : f32 = u_xlat0.z;
  let x_512 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_507 * x_509) + x_512);
  let x_516 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_516);
  let x_520 : f32 = x_429.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_520 * 0.5f);
  let x_525 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_525, 0.00100000004749745131f);
  let x_530 : f32 = u_xlat0.x;
  let x_532 : f32 = u_xlat6.x;
  u_xlat0.x = (x_530 * x_532);
  let x_536 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_536);
  let x_540 : vec3<f32> = vs_INTERP2;
  let x_545 : vec3<f32> = x_163.x_WorldSpaceCameraPos;
  u_xlat6 = (-(x_540) + x_545);
  let x_547 : vec3<f32> = u_xlat6;
  let x_548 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_547, x_548);
  let x_552 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_552);
  let x_555 : vec3<f32> = u_xlat6;
  let x_556 : vec3<f32> = u_xlat1;
  u_xlat6 = (x_555 * vec3<f32>(x_556.x, x_556.x, x_556.x));
  let x_561 : f32 = x_163.unity_OrthoParams.w;
  u_xlatb1.x = (x_561 == 0.0f);
  let x_565 : bool = u_xlatb1.x;
  if (x_565) {
    let x_570 : f32 = u_xlat6.x;
    x_566 = x_570;
  } else {
    let x_575 : f32 = x_163.unity_MatrixV[0i].z;
    x_566 = x_575;
  }
  let x_576 : f32 = x_566;
  u_xlat3.x = x_576;
  let x_579 : bool = u_xlatb1.x;
  if (x_579) {
    let x_584 : f32 = u_xlat6.y;
    x_580 = x_584;
  } else {
    let x_587 : f32 = x_163.unity_MatrixV[1i].z;
    x_580 = x_587;
  }
  let x_588 : f32 = x_580;
  u_xlat3.y = x_588;
  let x_591 : bool = u_xlatb1.x;
  if (x_591) {
    let x_596 : f32 = u_xlat6.z;
    x_592 = x_596;
  } else {
    let x_599 : f32 = x_163.unity_MatrixV[2i].z;
    x_592 = x_599;
  }
  let x_600 : f32 = x_592;
  u_xlat3.z = x_600;
  let x_602 : vec4<f32> = u_xlat3;
  let x_604 : vec4<f32> = u_xlat3;
  u_xlat6.x = dot(vec3<f32>(x_602.x, x_602.y, x_602.z), vec3<f32>(x_604.x, x_604.y, x_604.z));
  let x_609 : f32 = u_xlat6.x;
  u_xlat6.x = inverseSqrt(x_609);
  let x_612 : vec3<f32> = u_xlat6;
  let x_614 : vec4<f32> = u_xlat3;
  u_xlat6 = (vec3<f32>(x_612.x, x_612.x, x_612.x) * vec3<f32>(x_614.x, x_614.y, x_614.z));
  let x_617 : vec3<f32> = u_xlat6;
  let x_619 : vec4<f32> = x_163.x_MainLightPosition;
  u_xlat6.x = dot(x_617, -(vec3<f32>(x_619.x, x_619.y, x_619.z)));
  let x_625 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_625, 0.0f, 1.0f);
  let x_629 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_629);
  let x_633 : f32 = u_xlat6.x;
  u_xlat6.x = (x_633 * 150.0f);
  let x_638 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_638);
  let x_642 : f32 = u_xlat6.x;
  u_xlat6.x = (x_642 + 1.0f);
  let x_646 : f32 = u_xlat0.x;
  let x_648 : f32 = u_xlat6.x;
  u_xlat0.x = (x_646 * x_648);
  let x_652 : vec4<f32> = x_163.x_MainLightColor;
  let x_654 : vec3<f32> = u_xlat0;
  let x_657 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_652.x, x_652.y, x_652.z) * vec3<f32>(x_654.x, x_654.x, x_654.x)) + vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_662 : vec3<f32> = u_xlat0;
  let x_664 : vec4<f32> = x_429.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_666 : vec3<f32> = (x_662 * vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_671 : f32 = x_163.x_ProjectionParams.x;
  u_xlatb0.x = (x_671 < 0.0f);
  let x_675 : f32 = hlslcc_FragCoord.y;
  let x_678 : f32 = x_163.x_ScaledScreenParams.y;
  u_xlat6.x = (-(x_675) + x_678);
  let x_682 : bool = u_xlatb0.x;
  if (x_682) {
    let x_687 : f32 = u_xlat6.x;
    x_683 = x_687;
  } else {
    let x_690 : f32 = hlslcc_FragCoord.y;
    x_683 = x_690;
  }
  let x_691 : f32 = x_683;
  u_xlat0.y = x_691;
  let x_694 : f32 = hlslcc_FragCoord.x;
  u_xlat0.x = x_694;
  let x_696 : vec3<f32> = u_xlat0;
  let x_699 : vec4<f32> = x_163.x_ScaledScreenParams;
  let x_701 : vec2<f32> = (vec2<f32>(x_696.x, x_696.y) / vec2<f32>(x_699.x, x_699.y));
  let x_702 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_701.x, x_701.y, x_702.z);
  let x_705 : f32 = u_xlat0.y;
  u_xlat0.z = (-(x_705) + 1.0f);
  let x_709 : vec3<f32> = u_xlat0;
  let x_713 : vec4<f32> = x_163.x_ScreenParams;
  let x_715 : vec2<f32> = (vec2<f32>(x_709.x, x_709.z) * vec2<f32>(x_713.x, x_713.y));
  let x_716 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_715.x, x_715.y, x_716.z);
  let x_718 : vec3<f32> = u_xlat0;
  let x_720 : vec2<f32> = floor(vec2<f32>(x_718.x, x_718.y));
  let x_721 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_720.x, x_720.y, x_721.z);
  let x_725 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_728 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  u_xlat12.x = dot(vec3<f32>(x_725.x, x_725.y, x_725.z), vec3<f32>(x_728.x, x_728.y, x_728.z));
  let x_733 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_733);
  let x_738 : vec4<f32> = x_163.x_TimeParameters;
  let x_743 : vec2<f32> = (vec2<f32>(x_738.x, x_738.x) * vec2<f32>(0.01799999922513961792f, 0.31999999284744262695f));
  let x_744 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_743.x, x_743.y, x_744.z);
  let x_746 : vec2<f32> = u_xlat12;
  let x_751 : vec3<f32> = u_xlat1;
  u_xlat12 = ((vec2<f32>(x_746.x, x_746.x) * vec2<f32>(0.32100000977516174316f, 0.32100000977516174316f)) + vec2<f32>(x_751.x, x_751.y));
  let x_754 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_754);
  let x_756 : vec2<f32> = u_xlat12;
  u_xlat12.x = dot(vec2<f32>(x_756.x, x_756.x), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_763 : vec2<f32> = u_xlat12;
  u_xlat12.y = dot(vec2<f32>(x_763.y, x_763.y), vec2<f32>(12.98980045318603515625f, 78.233001708984375f));
  let x_767 : vec2<f32> = u_xlat12;
  u_xlat12 = sin(x_767);
  let x_769 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_769 * vec2<f32>(43758.546875f, 43758.546875f));
  let x_773 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_773);
  let x_775 : vec2<f32> = u_xlat12;
  let x_777 : vec4<f32> = x_163.x_ScreenParams;
  let x_779 : vec2<f32> = (x_775 * vec2<f32>(x_777.x, x_777.y));
  let x_780 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_779.x, x_779.y, x_780.z);
  let x_782 : vec3<f32> = u_xlat0;
  let x_784 : vec3<f32> = u_xlat1;
  let x_786 : vec2<f32> = (vec2<f32>(x_782.x, x_782.y) + vec2<f32>(x_784.x, x_784.y));
  let x_787 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_786.x, x_786.y, x_787.z);
  let x_789 : vec3<f32> = u_xlat0;
  let x_793 : vec2<f32> = (vec2<f32>(x_789.x, x_789.y) * vec2<f32>(0.00390625f, 0.00390625f));
  let x_794 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_793.x, x_793.y, x_794.z);
  let x_796 : vec3<f32> = u_xlat0;
  let x_798 : vec2<f32> = fract(vec2<f32>(x_796.x, x_796.y));
  let x_799 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_798.x, x_798.y, x_799.z);
  let x_806 : vec3<f32> = u_xlat0;
  let x_809 : f32 = x_163.x_GlobalMipBias.x;
  let x_810 : vec4<f32> = textureSampleBias(x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D, sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_Texture2D, vec2<f32>(x_806.x, x_806.y), x_809);
  u_xlat0.x = x_810.y;
  let x_814 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_814 * 0.30000001192092895508f) + 0.80000001192092895508f);
  let x_821 : f32 = u_xlat0.x;
  let x_825 : f32 = x_163.x_BA_CloudData.w;
  u_xlat0.x = ((-(x_821) * x_825) + 1.0f);
  let x_834 : vec4<f32> = vs_INTERP1;
  let x_837 : f32 = x_163.x_GlobalMipBias.x;
  let x_838 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_834.x, x_834.y), x_837);
  let x_839 : vec2<f32> = vec2<f32>(x_838.z, x_838.w);
  let x_840 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_839.x, x_839.y, x_840.z);
  let x_843 : f32 = u_xlat0.x;
  let x_846 : f32 = u_xlat6.x;
  u_xlat0.x = (-(x_843) + x_846);
  let x_850 : f32 = u_xlat6.y;
  u_xlat6.x = (-(x_850) + 1.0f);
  let x_855 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_855);
  let x_859 : f32 = u_xlat6.x;
  let x_861 : f32 = x_429.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_859 * x_861);
  let x_865 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_865);
  let x_869 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_869) + 1.0f);
  let x_874 : f32 = u_xlat0.x;
  u_xlat0.x = (x_874 * 10.0f);
  let x_879 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_879, 0.0f, 1.0f);
  let x_883 : f32 = u_xlat0.x;
  u_xlat12.x = ((x_883 * -2.0f) + 3.0f);
  let x_890 : f32 = u_xlat0.x;
  let x_892 : f32 = u_xlat0.x;
  u_xlat0.x = (x_890 * x_892);
  let x_896 : f32 = u_xlat0.x;
  let x_898 : f32 = u_xlat12.x;
  u_xlat0.x = (x_896 * x_898);
  let x_902 : f32 = u_xlat0.x;
  let x_904 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_902, x_904);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_INTERP0_param : vec4<f32>, @location(3) vs_INTERP3_param : vec3<f32>, @location(1) vs_INTERP1_param : vec4<f32>, @location(2) vs_INTERP2_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP2 = vs_INTERP2_param;
  main_1();
  return main_out(SV_Target0);
}


