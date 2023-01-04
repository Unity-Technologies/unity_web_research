type Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr,
  unity_ProbesOcclusion : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_LightmapST : vec4<f32>,
  unity_DynamicLightmapST : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_SHBr : vec4<f32>,
  unity_SHBg : vec4<f32>,
  unity_SHBb : vec4<f32>,
  unity_SHC : vec4<f32>,
  unity_RendererBounds_Min : vec4<f32>,
  unity_RendererBounds_Max : vec4<f32>,
  unity_MatrixPreviousM : mat4x4<f32>,
  unity_MatrixPreviousMI : mat4x4<f32>,
  unity_MotionVectorsParams : vec4<f32>,
  unity_SpriteColor : vec4<f32>,
  unity_SpriteProps : vec4<f32>,
}

struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_TimeParameters : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScreenParams : vec4<f32>,
  unity_OrthoParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  x_BA_SkyboxRatio : f32,
  @size(12)
  padding_2 : u32,
  x_BA_CloudData : vec4<f32>,
}

struct UnityPerMaterial {
  x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0_TexelSize : vec4<f32>,
  Color_7eff2e7fc27440719d0a871a39dabdd3 : vec4<f32>,
  Vector1_2a375228e8d3437382814520b0cd8644 : f32,
  Vector1_5f4b185241524942830132fc71554a33 : f32,
  Vector1_2d1f70e8efb04843b1f8184ae06925e0 : f32,
  Vector1_33982692 : f32,
  Vector1_10DA9AB3 : f32,
  @size(4)
  padding_3 : u32,
  Vector2_65050940ec244ae3bf42db206c2dccca : vec2<f32>,
  Texture2D_4B382D9C_TexelSize : vec4<f32>,
  Texture2D_3DC46A50_TexelSize : vec4<f32>,
  x_BA_SkyboxMatrix : mat4x4<f32>,
}

var<private> gl_FragCoord : vec4<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_43 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_165 : PGlobals;

@group(0) @binding(1) var Texture2D_4B382D9C : texture_2d<f32>;

@group(0) @binding(4) var samplerTexture2D_4B382D9C : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_439 : UnityPerMaterial;

var<private> vs_INTERP0 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0 : texture_2d<f32>;

@group(0) @binding(3) var sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0 : sampler;

@group(0) @binding(2) var Texture2D_3DC46A50 : texture_2d<f32>;

@group(0) @binding(5) var samplerTexture2D_3DC46A50 : sampler;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlatb0 : vec2<bool>;
  var u_xlat0 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlatb18 : bool;
  var u_xlat19 : f32;
  var u_xlatb1 : vec3<bool>;
  var x_260 : f32;
  var x_272 : f32;
  var u_xlat7 : f32;
  var u_xlat13 : vec2<f32>;
  var x_322 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var x_473 : f32;
  var x_485 : f32;
  var x_497 : f32;
  var x_587 : vec3<f32>;
  var x_879 : f32;
  var u_xlat12 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_33 : f32 = vs_INTERP2.w;
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
  let x_73 : vec3<f32> = vs_INTERP1;
  let x_75 : vec4<f32> = vs_INTERP2;
  u_xlat6 = (vec3<f32>(x_73.y, x_73.z, x_73.x) * vec3<f32>(x_75.x, x_75.y, x_75.z));
  let x_78 : vec3<f32> = vs_INTERP1;
  let x_79 : vec4<f32> = vs_INTERP2;
  let x_82 : vec3<f32> = u_xlat6;
  u_xlat6 = ((x_78 * vec3<f32>(x_79.y, x_79.z, x_79.x)) + -(x_82));
  let x_85 : vec3<f32> = u_xlat6;
  let x_86 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_85 * vec3<f32>(x_86.x, x_86.x, x_86.x));
  let x_90 : vec3<f32> = vs_INTERP1;
  let x_91 : vec3<f32> = vs_INTERP1;
  u_xlat18 = dot(x_90, x_91);
  let x_93 : f32 = u_xlat18;
  u_xlat18 = sqrt(x_93);
  let x_95 : f32 = u_xlat18;
  u_xlat18 = (1.0f / x_95);
  let x_97 : vec3<f32> = u_xlat0;
  let x_98 : f32 = u_xlat18;
  u_xlat0 = (x_97 * vec3<f32>(x_98, x_98, x_98));
  let x_102 : f32 = u_xlat18;
  let x_104 : vec3<f32> = vs_INTERP1;
  let x_106 : vec3<f32> = (vec3<f32>(x_102, x_102, x_102) * vec3<f32>(x_104.y, x_104.z, x_104.x));
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_110 : f32 = u_xlat18;
  let x_112 : vec4<f32> = vs_INTERP2;
  let x_114 : vec3<f32> = (vec3<f32>(x_110, x_110, x_110) * vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_114.x, x_114.y, x_114.z, x_115.w);
  let x_118 : vec3<f32> = u_xlat0;
  let x_119 : vec4<f32> = u_xlat1;
  let x_121 : vec3<f32> = (x_118 * vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec3<f32> = u_xlat0;
  let x_126 : vec4<f32> = u_xlat1;
  let x_129 : vec4<f32> = u_xlat3;
  let x_132 : vec3<f32> = ((vec3<f32>(x_124.x, x_124.z, x_124.y) * vec3<f32>(x_126.z, x_126.y, x_126.x)) + -(vec3<f32>(x_129.y, x_129.x, x_129.z)));
  let x_133 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_132.x, x_132.y, x_132.z, x_133.w);
  let x_135 : vec4<f32> = u_xlat2;
  let x_137 : vec4<f32> = u_xlat3;
  u_xlat18 = dot(vec3<f32>(x_135.y, x_135.x, x_135.z), vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_141 : f32 = u_xlat18;
  u_xlatb18 = (x_141 < 0.0f);
  let x_143 : bool = u_xlatb18;
  u_xlat18 = select(1.0f, -1.0f, x_143);
  let x_147 : f32 = u_xlat0.x;
  let x_149 : f32 = u_xlat2.x;
  u_xlat19 = (x_147 * x_149);
  let x_152 : f32 = u_xlat2.z;
  let x_154 : f32 = u_xlat0.y;
  let x_156 : f32 = u_xlat19;
  u_xlat3.z = ((x_152 * x_154) + -(x_156));
  let x_160 : vec3<f32> = u_xlat0;
  let x_169 : vec4<f32> = x_165.x_MainLightPosition;
  u_xlat0.y = dot(vec3<f32>(x_160.y, x_160.z, x_160.x), vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_174 : f32 = u_xlat1.z;
  let x_176 : f32 = u_xlat2.z;
  u_xlat19 = (x_174 * x_176);
  let x_179 : f32 = u_xlat1.y;
  let x_181 : f32 = u_xlat2.x;
  let x_183 : f32 = u_xlat19;
  u_xlat3.y = ((x_179 * x_181) + -(x_183));
  let x_187 : vec4<f32> = u_xlat1;
  let x_190 : vec4<f32> = x_165.x_MainLightPosition;
  u_xlat0.z = dot(vec3<f32>(x_187.z, x_187.x, x_187.y), vec3<f32>(x_190.x, x_190.y, x_190.z));
  let x_194 : vec4<f32> = u_xlat2;
  let x_197 : vec4<f32> = x_165.x_MainLightPosition;
  u_xlat0.x = dot(vec3<f32>(x_194.x, x_194.y, x_194.z), vec3<f32>(x_197.x, x_197.y, x_197.z));
  let x_201 : f32 = u_xlat18;
  let x_203 : vec4<f32> = u_xlat3;
  let x_205 : vec3<f32> = (vec3<f32>(x_201, x_201, x_201) * vec3<f32>(x_203.x, x_203.y, x_203.z));
  let x_206 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_208.x, x_208.y, x_208.z), vec3<f32>(x_210.x, x_210.y, x_210.z));
  let x_213 : f32 = u_xlat18;
  u_xlat18 = max(x_213, 1.17549435e-37f);
  let x_216 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_216);
  let x_218 : f32 = u_xlat18;
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec3<f32> = (vec3<f32>(x_218, x_218, x_218) * vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_223 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_225 : vec4<f32> = u_xlat1;
  let x_227 : vec4<f32> = u_xlat1;
  let x_229 : vec3<f32> = (vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
  let x_236 : vec4<f32> = u_xlat1;
  let x_239 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_236.x, x_236.y, x_236.z, x_236.x));
  u_xlatb1 = vec3<bool>(x_239.x, x_239.y, x_239.z);
  let x_252 : vec4<f32> = vs_INTERP3;
  let x_256 : f32 = x_165.x_GlobalMipBias.x;
  let x_257 : vec4<f32> = textureSampleBias(Texture2D_4B382D9C, samplerTexture2D_4B382D9C, vec2<f32>(x_252.x, x_252.y), x_256);
  u_xlat3 = x_257;
  let x_259 : bool = u_xlatb1.x;
  if (x_259) {
    let x_264 : f32 = u_xlat3.z;
    x_260 = x_264;
  } else {
    let x_267 : f32 = u_xlat3.x;
    x_260 = x_267;
  }
  let x_268 : f32 = x_260;
  u_xlat1.x = x_268;
  let x_271 : bool = u_xlatb1.y;
  if (x_271) {
    let x_276 : f32 = u_xlat3.y;
    x_272 = x_276;
  } else {
    let x_279 : f32 = u_xlat3.w;
    x_272 = x_279;
  }
  let x_280 : f32 = x_272;
  u_xlat1.y = x_280;
  let x_282 : vec4<f32> = u_xlat2;
  let x_284 : vec4<f32> = u_xlat1;
  let x_286 : vec2<f32> = (vec2<f32>(x_282.x, x_282.y) * vec2<f32>(x_284.x, x_284.y));
  let x_287 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_286.x, x_286.y, x_287.z, x_287.w);
  let x_290 : f32 = u_xlat1.y;
  let x_292 : f32 = u_xlat1.x;
  u_xlat18 = (x_290 + x_292);
  let x_294 : vec4<f32> = u_xlat3;
  let x_296 : vec4<f32> = u_xlat3;
  let x_298 : vec2<f32> = (vec2<f32>(x_294.z, x_294.w) + vec2<f32>(x_296.x, x_296.y));
  let x_299 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_298.x, x_298.y, x_299.z, x_299.w);
  let x_302 : f32 = u_xlat1.y;
  let x_304 : f32 = u_xlat1.x;
  u_xlat1.x = (x_302 + x_304);
  let x_309 : f32 = u_xlat1.x;
  u_xlat7 = (x_309 * 0.25f);
  let x_313 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_313) * 0.25f) + 1.0f);
  let x_321 : bool = u_xlatb1.z;
  if (x_321) {
    let x_325 : f32 = u_xlat7;
    x_322 = x_325;
  } else {
    let x_328 : f32 = u_xlat1.x;
    x_322 = x_328;
  }
  let x_329 : f32 = x_322;
  u_xlat13.x = x_329;
  let x_332 : f32 = u_xlat13.x;
  let x_334 : f32 = u_xlat2.z;
  let x_336 : f32 = u_xlat18;
  u_xlat2.y = ((x_332 * x_334) + x_336);
  u_xlat2.x = 1.0f;
  u_xlat2.z = 1.0f;
  u_xlat2.w = 1.0f;
  let x_342 : vec4<f32> = u_xlat2;
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat18 = dot(vec3<f32>(x_342.y, x_342.z, x_342.z), vec3<f32>(x_344.y, x_344.z, x_344.z));
  let x_347 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_347);
  let x_349 : f32 = u_xlat18;
  let x_351 : vec4<f32> = u_xlat2;
  let x_353 : vec3<f32> = (vec3<f32>(x_349, x_349, x_349) * vec3<f32>(x_351.x, x_351.y, x_351.z));
  let x_354 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_357 : vec4<f32> = u_xlat2;
  let x_359 : vec4<f32> = u_xlat2;
  u_xlat4 = (vec3<f32>(x_357.y, x_357.z, x_357.y) * vec3<f32>(x_359.z, x_359.z, x_359.y));
  let x_363 : f32 = u_xlat2.z;
  let x_365 : f32 = u_xlat2.z;
  let x_368 : f32 = u_xlat4.z;
  u_xlat18 = ((x_363 * x_365) + -(x_368));
  let x_374 : vec4<f32> = x_43.unity_SHBr;
  let x_375 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_374, vec4<f32>(x_375.x, x_375.x, x_375.y, x_375.y));
  let x_381 : vec4<f32> = x_43.unity_SHBg;
  let x_382 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_381, vec4<f32>(x_382.x, x_382.x, x_382.y, x_382.y));
  let x_388 : vec4<f32> = x_43.unity_SHBb;
  let x_389 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_388, vec4<f32>(x_389.x, x_389.x, x_389.y, x_389.y));
  let x_395 : vec4<f32> = x_43.unity_SHC;
  let x_397 : f32 = u_xlat18;
  let x_400 : vec3<f32> = u_xlat5;
  u_xlat4 = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397, x_397, x_397)) + x_400);
  let x_404 : vec4<f32> = x_43.unity_SHAr;
  let x_406 : vec4<f32> = u_xlat2;
  u_xlat5.x = dot(vec4<f32>(x_404.y, x_404.x, x_404.z, x_404.w), vec4<f32>(x_406.y, x_406.z, x_406.z, x_406.w));
  let x_412 : vec4<f32> = x_43.unity_SHAg;
  let x_414 : vec4<f32> = u_xlat2;
  u_xlat5.y = dot(vec4<f32>(x_412.y, x_412.x, x_412.z, x_412.w), vec4<f32>(x_414.y, x_414.z, x_414.z, x_414.w));
  let x_420 : vec4<f32> = x_43.unity_SHAb;
  let x_421 : vec4<f32> = u_xlat2;
  u_xlat5.z = dot(x_420, x_421);
  let x_424 : vec3<f32> = u_xlat4;
  let x_425 : vec3<f32> = u_xlat5;
  let x_426 : vec3<f32> = (x_424 + x_425);
  let x_427 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_429 : vec4<f32> = u_xlat2;
  let x_432 : vec3<f32> = max(vec3<f32>(x_429.x, x_429.y, x_429.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_433 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_432.x, x_432.y, x_432.z, x_433.w);
  let x_435 : vec4<f32> = u_xlat2;
  let x_441 : f32 = x_439.Vector1_5f4b185241524942830132fc71554a33;
  let x_443 : f32 = x_439.Vector1_5f4b185241524942830132fc71554a33;
  let x_445 : f32 = x_439.Vector1_5f4b185241524942830132fc71554a33;
  let x_446 : vec3<f32> = vec3<f32>(x_441, x_443, x_445);
  let x_451 : vec3<f32> = (vec3<f32>(x_435.x, x_435.y, x_435.z) * vec3<f32>(x_446.x, x_446.y, x_446.z));
  let x_452 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_454 : vec3<f32> = u_xlat0;
  let x_455 : vec3<f32> = u_xlat0;
  u_xlat18 = dot(x_454, x_455);
  let x_457 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_457);
  let x_459 : f32 = u_xlat18;
  let x_461 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_459, x_459, x_459) * x_461);
  let x_464 : vec3<f32> = u_xlat0;
  let x_466 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_464.x, x_464.y, x_464.z, x_464.x));
  u_xlatb4 = vec3<bool>(x_466.x, x_466.y, x_466.z);
  let x_468 : vec3<f32> = u_xlat0;
  let x_469 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_468 * x_469);
  let x_472 : bool = u_xlatb4.x;
  if (x_472) {
    let x_477 : f32 = u_xlat3.z;
    x_473 = x_477;
  } else {
    let x_480 : f32 = u_xlat3.x;
    x_473 = x_480;
  }
  let x_481 : f32 = x_473;
  u_xlat13.x = x_481;
  let x_484 : bool = u_xlatb4.y;
  if (x_484) {
    let x_489 : f32 = u_xlat3.y;
    x_485 = x_489;
  } else {
    let x_492 : f32 = u_xlat3.w;
    x_485 = x_492;
  }
  let x_493 : f32 = x_485;
  u_xlat13.y = x_493;
  let x_496 : bool = u_xlatb4.z;
  if (x_496) {
    let x_500 : f32 = u_xlat7;
    x_497 = x_500;
  } else {
    let x_503 : f32 = u_xlat1.x;
    x_497 = x_503;
  }
  let x_504 : f32 = x_497;
  u_xlat18 = x_504;
  let x_505 : vec3<f32> = u_xlat0;
  let x_507 : vec2<f32> = u_xlat13;
  let x_508 : vec2<f32> = (vec2<f32>(x_505.x, x_505.y) * x_507);
  let x_509 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_508.x, x_508.y, x_509.z);
  let x_512 : f32 = u_xlat0.y;
  let x_514 : f32 = u_xlat0.x;
  u_xlat0.x = (x_512 + x_514);
  let x_517 : f32 = u_xlat18;
  let x_519 : f32 = u_xlat0.z;
  let x_522 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_517 * x_519) + x_522);
  let x_526 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_526);
  let x_530 : f32 = x_439.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_530 * 0.5f);
  let x_535 : f32 = u_xlat6.x;
  u_xlat6.x = max(x_535, 0.001f);
  let x_540 : f32 = u_xlat0.x;
  let x_542 : f32 = u_xlat6.x;
  u_xlat0.x = (x_540 * x_542);
  let x_546 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_546);
  let x_550 : vec3<f32> = vs_INTERP0;
  let x_555 : vec3<f32> = x_165.x_WorldSpaceCameraPos;
  u_xlat6 = (-(x_550) + x_555);
  let x_557 : vec3<f32> = u_xlat6;
  let x_558 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_557, x_558);
  let x_562 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_562);
  let x_565 : vec3<f32> = u_xlat6;
  let x_566 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_565 * vec3<f32>(x_566.x, x_566.x, x_566.x));
  let x_571 : f32 = x_165.unity_OrthoParams.w;
  u_xlatb1.x = (x_571 == 0.0f);
  let x_577 : f32 = x_165.unity_MatrixV[0i].z;
  u_xlat3.x = x_577;
  let x_580 : f32 = x_165.unity_MatrixV[1i].z;
  u_xlat3.y = x_580;
  let x_583 : f32 = x_165.unity_MatrixV[2i].z;
  u_xlat3.z = x_583;
  let x_586 : bool = u_xlatb1.x;
  if (x_586) {
    let x_590 : vec3<f32> = u_xlat6;
    x_587 = x_590;
  } else {
    let x_592 : vec4<f32> = u_xlat3;
    x_587 = vec3<f32>(x_592.x, x_592.y, x_592.z);
  }
  let x_594 : vec3<f32> = x_587;
  u_xlat6 = x_594;
  let x_595 : vec3<f32> = u_xlat6;
  let x_596 : vec3<f32> = u_xlat6;
  u_xlat1.x = dot(x_595, x_596);
  let x_600 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_600);
  let x_603 : vec3<f32> = u_xlat6;
  let x_604 : vec4<f32> = u_xlat1;
  u_xlat6 = (x_603 * vec3<f32>(x_604.x, x_604.x, x_604.x));
  let x_607 : vec3<f32> = u_xlat6;
  let x_609 : vec4<f32> = x_165.x_MainLightPosition;
  u_xlat6.x = dot(x_607, -(vec3<f32>(x_609.x, x_609.y, x_609.z)));
  let x_615 : f32 = u_xlat6.x;
  u_xlat6.x = clamp(x_615, 0.0f, 1.0f);
  let x_619 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_619);
  let x_623 : f32 = u_xlat6.x;
  u_xlat6.x = (x_623 * 150.0f);
  let x_628 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_628);
  let x_632 : f32 = u_xlat6.x;
  u_xlat6.x = (x_632 + 1.0f);
  let x_636 : f32 = u_xlat0.x;
  let x_638 : f32 = u_xlat6.x;
  u_xlat0.x = (x_636 * x_638);
  let x_642 : vec4<f32> = x_165.x_MainLightColor;
  let x_644 : vec3<f32> = u_xlat0;
  let x_647 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_642.x, x_642.y, x_642.z) * vec3<f32>(x_644.x, x_644.x, x_644.x)) + vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_651 : vec4<f32> = x_439.Color_7eff2e7fc27440719d0a871a39dabdd3;
  let x_653 : vec3<f32> = u_xlat0;
  let x_657 : vec4<f32> = x_165.unity_FogColor;
  u_xlat0 = ((vec3<f32>(x_651.x, x_651.y, x_651.z) * x_653) + -(vec3<f32>(x_657.x, x_657.y, x_657.z)));
  let x_661 : vec3<f32> = vs_INTERP0;
  let x_664 : vec4<f32> = x_43.unity_WorldToObject[1i];
  let x_666 : vec3<f32> = (vec3<f32>(x_661.y, x_661.y, x_661.y) * vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_667 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_670 : vec4<f32> = x_43.unity_WorldToObject[0i];
  let x_672 : vec3<f32> = vs_INTERP0;
  let x_675 : vec4<f32> = u_xlat1;
  let x_677 : vec3<f32> = ((vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(x_672.x, x_672.x, x_672.x)) + vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_681 : vec4<f32> = x_43.unity_WorldToObject[2i];
  let x_683 : vec3<f32> = vs_INTERP0;
  let x_686 : vec4<f32> = u_xlat1;
  let x_688 : vec3<f32> = ((vec3<f32>(x_681.x, x_681.y, x_681.z) * vec3<f32>(x_683.z, x_683.z, x_683.z)) + vec3<f32>(x_686.x, x_686.y, x_686.z));
  let x_689 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
  let x_691 : vec4<f32> = u_xlat1;
  let x_694 : vec4<f32> = x_43.unity_WorldToObject[3i];
  let x_696 : vec3<f32> = (vec3<f32>(x_691.x, x_691.y, x_691.z) + vec3<f32>(x_694.x, x_694.y, x_694.z));
  let x_697 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  let x_699 : vec4<f32> = u_xlat1;
  let x_702 : vec4<f32> = x_43.unity_ObjectToWorld[1i];
  let x_704 : vec3<f32> = (vec3<f32>(x_699.y, x_699.y, x_699.y) * vec3<f32>(x_702.x, x_702.y, x_702.z));
  let x_705 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
  let x_708 : vec4<f32> = x_43.unity_ObjectToWorld[0i];
  let x_710 : vec4<f32> = u_xlat1;
  let x_713 : vec4<f32> = u_xlat2;
  let x_715 : vec3<f32> = ((vec3<f32>(x_708.x, x_708.y, x_708.z) * vec3<f32>(x_710.x, x_710.x, x_710.x)) + vec3<f32>(x_713.x, x_713.y, x_713.z));
  let x_716 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_715.x, x_715.y, x_716.z, x_715.z);
  let x_719 : vec4<f32> = x_43.unity_ObjectToWorld[2i];
  let x_721 : vec4<f32> = u_xlat1;
  let x_724 : vec4<f32> = u_xlat1;
  let x_726 : vec3<f32> = ((vec3<f32>(x_719.x, x_719.y, x_719.z) * vec3<f32>(x_721.z, x_721.z, x_721.z)) + vec3<f32>(x_724.x, x_724.y, x_724.w));
  let x_727 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
  let x_729 : vec4<f32> = u_xlat1;
  let x_732 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_734 : vec3<f32> = (vec3<f32>(x_729.x, x_729.y, x_729.z) + vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_735 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_738 : f32 = u_xlat1.y;
  let x_740 : f32 = x_165.unity_MatrixV[1i].z;
  u_xlat18 = (x_738 * x_740);
  let x_743 : f32 = x_165.unity_MatrixV[0i].z;
  let x_745 : f32 = u_xlat1.x;
  let x_747 : f32 = u_xlat18;
  u_xlat18 = ((x_743 * x_745) + x_747);
  let x_750 : f32 = x_165.unity_MatrixV[2i].z;
  let x_752 : f32 = u_xlat1.z;
  let x_754 : f32 = u_xlat18;
  u_xlat18 = ((x_750 * x_752) + x_754);
  let x_756 : f32 = u_xlat18;
  let x_758 : f32 = x_165.unity_MatrixV[3i].z;
  u_xlat18 = (x_756 + x_758);
  let x_760 : f32 = u_xlat18;
  let x_764 : f32 = x_165.x_ProjectionParams.y;
  u_xlat18 = (-(x_760) + -(x_764));
  let x_767 : f32 = u_xlat18;
  u_xlat18 = max(x_767, 0.0f);
  let x_769 : f32 = u_xlat18;
  let x_772 : f32 = x_165.unity_FogParams.x;
  u_xlat18 = (x_769 * x_772);
  let x_774 : f32 = u_xlat18;
  let x_775 : f32 = u_xlat18;
  u_xlat18 = (x_774 * -(x_775));
  let x_778 : f32 = u_xlat18;
  u_xlat18 = exp2(x_778);
  let x_780 : f32 = u_xlat18;
  u_xlat18 = (-(x_780) + 1.0f);
  let x_783 : f32 = u_xlat18;
  let x_786 : f32 = x_165.x_BA_SkyboxRatio;
  u_xlat18 = (x_783 / x_786);
  let x_788 : f32 = u_xlat18;
  let x_790 : f32 = u_xlat18;
  u_xlat18 = ((-(x_788) * x_790) + 1.0f);
  let x_793 : f32 = u_xlat18;
  u_xlat18 = exp2(x_793);
  let x_795 : f32 = u_xlat18;
  u_xlat18 = (-(x_795) + 1.0f);
  let x_799 : f32 = x_165.x_BA_SkyboxRatio;
  u_xlat1.x = (-(x_799) + 1.0f);
  let x_804 : f32 = x_165.x_WorldSpaceCameraPos.y;
  let x_807 : f32 = u_xlat1.x;
  let x_810 : f32 = vs_INTERP0.y;
  u_xlat1.x = ((-(x_804) * x_807) + x_810);
  let x_814 : f32 = x_439.Vector1_10DA9AB3;
  let x_817 : f32 = x_165.x_BA_SkyboxRatio;
  let x_820 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_814) * x_817) + x_820);
  let x_824 : f32 = x_165.x_BA_SkyboxRatio;
  let x_826 : f32 = x_439.Vector1_33982692;
  u_xlat7 = (x_824 * x_826);
  let x_828 : f32 = u_xlat7;
  u_xlat7 = max(x_828, 0.0f);
  let x_830 : f32 = u_xlat7;
  u_xlat7 = (1.0f / x_830);
  let x_832 : f32 = u_xlat7;
  let x_834 : f32 = u_xlat1.x;
  u_xlat1.x = (x_832 * x_834);
  let x_838 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_838, 0.0f, 1.0f);
  let x_842 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_842) + 1.0f);
  let x_847 : f32 = u_xlat1.x;
  let x_849 : f32 = u_xlat18;
  u_xlat18 = ((-(x_847) * x_849) + 1.0f);
  let x_852 : f32 = u_xlat18;
  u_xlat18 = min(x_852, 1.0f);
  let x_856 : f32 = u_xlat18;
  let x_858 : vec3<f32> = u_xlat0;
  let x_861 : vec4<f32> = x_165.unity_FogColor;
  let x_863 : vec3<f32> = ((vec3<f32>(x_856, x_856, x_856) * x_858) + vec3<f32>(x_861.x, x_861.y, x_861.z));
  let x_864 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_863.x, x_863.y, x_863.z, x_864.w);
  let x_867 : f32 = x_165.x_ProjectionParams.x;
  u_xlatb0.x = (x_867 < 0.0f);
  let x_871 : f32 = hlslcc_FragCoord.y;
  let x_874 : f32 = x_165.x_ScaledScreenParams.y;
  u_xlat6.x = (-(x_871) + x_874);
  let x_878 : bool = u_xlatb0.x;
  if (x_878) {
    let x_883 : f32 = u_xlat6.x;
    x_879 = x_883;
  } else {
    let x_886 : f32 = hlslcc_FragCoord.y;
    x_879 = x_886;
  }
  let x_887 : f32 = x_879;
  u_xlat0.y = x_887;
  let x_890 : f32 = hlslcc_FragCoord.x;
  u_xlat0.x = x_890;
  let x_892 : vec3<f32> = u_xlat0;
  let x_895 : vec4<f32> = x_165.x_ScaledScreenParams;
  let x_897 : vec2<f32> = (vec2<f32>(x_892.x, x_892.y) / vec2<f32>(x_895.x, x_895.y));
  let x_898 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_897.x, x_897.y, x_898.z);
  let x_901 : f32 = u_xlat0.y;
  u_xlat0.z = (-(x_901) + 1.0f);
  let x_905 : vec3<f32> = u_xlat0;
  let x_909 : vec4<f32> = x_165.x_ScreenParams;
  let x_911 : vec2<f32> = (vec2<f32>(x_905.x, x_905.z) * vec2<f32>(x_909.x, x_909.y));
  let x_912 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_911.x, x_911.y, x_912.z);
  let x_914 : vec3<f32> = u_xlat0;
  let x_916 : vec2<f32> = floor(vec2<f32>(x_914.x, x_914.y));
  let x_917 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_916.x, x_916.y, x_917.z);
  let x_921 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  let x_924 : vec4<f32> = x_43.unity_ObjectToWorld[3i];
  u_xlat12.x = dot(vec3<f32>(x_921.x, x_921.y, x_921.z), vec3<f32>(x_924.x, x_924.y, x_924.z));
  let x_929 : f32 = u_xlat12.x;
  u_xlat12.x = sqrt(x_929);
  let x_934 : vec4<f32> = x_165.x_TimeParameters;
  let x_939 : vec2<f32> = (vec2<f32>(x_934.x, x_934.x) * vec2<f32>(0.017999999f, 0.319999993f));
  let x_940 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
  let x_942 : vec2<f32> = u_xlat12;
  let x_947 : vec4<f32> = u_xlat1;
  u_xlat12 = ((vec2<f32>(x_942.x, x_942.x) * vec2<f32>(0.32100001f, 0.32100001f)) + vec2<f32>(x_947.x, x_947.y));
  let x_950 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_950);
  let x_952 : vec2<f32> = u_xlat12;
  u_xlat12.x = dot(vec2<f32>(x_952.x, x_952.x), vec2<f32>(12.989800453f, 78.233001709f));
  let x_959 : vec2<f32> = u_xlat12;
  u_xlat12.y = dot(vec2<f32>(x_959.y, x_959.y), vec2<f32>(12.989800453f, 78.233001709f));
  let x_963 : vec2<f32> = u_xlat12;
  u_xlat12 = sin(x_963);
  let x_965 : vec2<f32> = u_xlat12;
  u_xlat12 = (x_965 * vec2<f32>(43758.546875f, 43758.546875f));
  let x_969 : vec2<f32> = u_xlat12;
  u_xlat12 = fract(x_969);
  let x_971 : vec2<f32> = u_xlat12;
  let x_973 : vec4<f32> = x_165.x_ScreenParams;
  let x_975 : vec2<f32> = (x_971 * vec2<f32>(x_973.x, x_973.y));
  let x_976 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
  let x_978 : vec3<f32> = u_xlat0;
  let x_980 : vec4<f32> = u_xlat1;
  let x_982 : vec2<f32> = (vec2<f32>(x_978.x, x_978.y) + vec2<f32>(x_980.x, x_980.y));
  let x_983 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_982.x, x_982.y, x_983.z);
  let x_985 : vec3<f32> = u_xlat0;
  let x_989 : vec2<f32> = (vec2<f32>(x_985.x, x_985.y) * vec2<f32>(0.00390625f, 0.00390625f));
  let x_990 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_989.x, x_989.y, x_990.z);
  let x_992 : vec3<f32> = u_xlat0;
  let x_994 : vec2<f32> = fract(vec2<f32>(x_992.x, x_992.y));
  let x_995 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_994.x, x_994.y, x_995.z);
  let x_1002 : vec3<f32> = u_xlat0;
  let x_1005 : f32 = x_165.x_GlobalMipBias.x;
  let x_1006 : vec4<f32> = textureSampleBias(x_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0, sampler_Texture2DAsset_36aff2641eb842bfb8ac1025d9bb12f9_Out_0, vec2<f32>(x_1002.x, x_1002.y), x_1005);
  u_xlat0.x = x_1006.y;
  let x_1010 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_1010 * 0.300000012f) + 0.800000012f);
  let x_1017 : f32 = u_xlat0.x;
  let x_1021 : f32 = x_165.x_BA_CloudData.w;
  u_xlat0.x = ((-(x_1017) * x_1021) + 1.0f);
  let x_1030 : vec4<f32> = vs_INTERP3;
  let x_1033 : f32 = x_165.x_GlobalMipBias.x;
  let x_1034 : vec4<f32> = textureSampleBias(Texture2D_3DC46A50, samplerTexture2D_3DC46A50, vec2<f32>(x_1030.x, x_1030.y), x_1033);
  let x_1035 : vec2<f32> = vec2<f32>(x_1034.z, x_1034.w);
  let x_1036 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_1035.x, x_1035.y, x_1036.z);
  let x_1039 : f32 = u_xlat0.x;
  let x_1042 : f32 = u_xlat6.x;
  u_xlat0.x = (-(x_1039) + x_1042);
  let x_1046 : f32 = u_xlat6.y;
  u_xlat6.x = (-(x_1046) + 1.0f);
  let x_1051 : f32 = u_xlat6.x;
  u_xlat6.x = log2(x_1051);
  let x_1055 : f32 = u_xlat6.x;
  let x_1057 : f32 = x_439.Vector1_2a375228e8d3437382814520b0cd8644;
  u_xlat6.x = (x_1055 * x_1057);
  let x_1061 : f32 = u_xlat6.x;
  u_xlat6.x = exp2(x_1061);
  let x_1065 : f32 = u_xlat6.x;
  u_xlat6.x = (-(x_1065) + 1.0f);
  let x_1070 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1070 * 10.0f);
  let x_1075 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1075, 0.0f, 1.0f);
  let x_1079 : f32 = u_xlat0.x;
  u_xlat12.x = ((x_1079 * -2.0f) + 3.0f);
  let x_1086 : f32 = u_xlat0.x;
  let x_1088 : f32 = u_xlat0.x;
  u_xlat0.x = (x_1086 * x_1088);
  let x_1092 : f32 = u_xlat0.x;
  let x_1094 : f32 = u_xlat12.x;
  u_xlat0.x = (x_1092 * x_1094);
  let x_1098 : f32 = u_xlat0.x;
  let x_1100 : f32 = u_xlat6.x;
  SV_Target0.w = min(x_1098, x_1100);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(0) vs_INTERP0_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP0 = vs_INTERP0_param;
  main_1();
  return main_out(SV_Target0);
}

