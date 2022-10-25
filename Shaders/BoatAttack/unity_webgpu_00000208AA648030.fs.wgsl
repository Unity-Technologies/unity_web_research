struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  x_DitheringTextureInvSize : f32,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  x_MainLightShadowOffset0 : vec4<f32>,
  x_MainLightShadowOffset1 : vec4<f32>,
  x_MainLightShadowParams : vec4<f32>,
  x_MainLightShadowmapSize : vec4<f32>,
}

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

type Arr_7 = array<vec4<f32>, 256u>;

struct strided_arr_1 {
  @size(16)
  el : f32,
}

type Arr_8 = array<strided_arr_1, 256u>;

type Arr_9 = array<vec4<f32>, 256u>;

type Arr_10 = array<strided_arr_1, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_9,
  x_AdditionalLightsColor : Arr_9,
  x_AdditionalLightsAttenuation : Arr_9,
  x_AdditionalLightsSpotDir : Arr_9,
  x_AdditionalLightsOcclusionProbes : Arr_9,
  x_AdditionalLightsLayerMasks : Arr_10,
}

type Arr_11 = array<mat4x4<f32>, 256u>;

struct AdditionalLightsCookies {
  x_AdditionalLightsWorldToLights : Arr_11,
  x_AdditionalLightsCookieAtlasUVRects : Arr_9,
  x_AdditionalLightsLightTypes : Arr_10,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_244 : MainLightShadows;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_606 : LightCookies;

@group(0) @binding(2) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_852 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_954 : AdditionalLightsCookies;

@group(0) @binding(3) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_130 : f32;
  var u_xlatb11 : bool;
  var u_xlatb33 : bool;
  var x_190 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu11 : u32;
  var u_xlati11 : i32;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_559 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_690 : f32;
  var x_701 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu1 : u32;
  var u_xlati35 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlatu36 : u32;
  var u_xlati37 : i32;
  var u_xlati36 : i32;
  var u_xlati27 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb36 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_1250 : f32;
  var x_1263 : f32;
  var x_1315 : f32;
  var x_1326 : vec3<f32>;
  var x_1409 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_49 : f32 = x_43.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_49);
  u_xlat0 = x_50;
  let x_52 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_68 >= x_71);
  let x_73 : bool = u_xlatb0;
  if (x_73) {
    let x_78 : f32 = u_xlat1.x;
    x_74 = x_78;
  } else {
    x_74 = 0.0f;
  }
  let x_81 : f32 = x_74;
  u_xlat0.x = x_81;
  let x_86 : f32 = u_xlat0.w;
  let x_88 : f32 = x_56.x_BaseColor.w;
  let x_91 : f32 = x_56.x_Cutoff;
  u_xlat11.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat33;
  let x_105 : f32 = u_xlat22;
  u_xlat22 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat22;
  u_xlat22 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat11.x;
  let x_113 : f32 = u_xlat22;
  u_xlat11.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat11.x;
  u_xlat11.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_122, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb22;
  if (x_129) {
    let x_134 : f32 = u_xlat11.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat11.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat11.x;
  u_xlatb11 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb11;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_157 : vec4<f32> = hlslcc_FragCoord;
  let x_161 : f32 = x_43.x_DitheringTextureInvSize;
  let x_163 : vec2<f32> = (vec2<f32>(x_157.x, x_157.y) * vec2<f32>(x_161, x_161));
  let x_164 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_163.x, x_164.y, x_163.y);
  let x_171 : vec3<f32> = u_xlat11;
  let x_174 : f32 = x_43.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_171.x, x_171.z), x_174);
  u_xlat11.x = x_175.w;
  let x_187 : f32 = x_184.unity_LODFade.x;
  u_xlatb33 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb33;
  if (x_189) {
    let x_194 : f32 = u_xlat11.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat11.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat11.x = x_201;
  let x_204 : f32 = u_xlat11.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat11.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat11.x;
  u_xlatb11 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb11;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat11.x;
  u_xlat11.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat11;
  let x_233 : vec3<f32> = vs_TEXCOORD2;
  let x_234 : vec3<f32> = (vec3<f32>(x_231.x, x_231.x, x_231.x) * x_233);
  let x_235 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
  let x_239 : vec3<f32> = vs_TEXCOORD1;
  let x_246 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres0;
  let x_249 : vec3<f32> = (x_239 + -(vec3<f32>(x_246.x, x_246.y, x_246.z)));
  let x_250 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_253 : vec3<f32> = vs_TEXCOORD1;
  let x_255 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres1;
  let x_258 : vec3<f32> = (x_253 + -(vec3<f32>(x_255.x, x_255.y, x_255.z)));
  let x_259 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_262 : vec3<f32> = vs_TEXCOORD1;
  let x_265 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres2;
  let x_268 : vec3<f32> = (x_262 + -(vec3<f32>(x_265.x, x_265.y, x_265.z)));
  let x_269 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
  let x_272 : vec3<f32> = vs_TEXCOORD1;
  let x_274 : vec4<f32> = x_244.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_272 + -(vec3<f32>(x_274.x, x_274.y, x_274.z)));
  let x_278 : vec4<f32> = u_xlat3;
  let x_280 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_278.x, x_278.y, x_278.z), vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_284 : vec4<f32> = u_xlat4;
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_291 : vec4<f32> = u_xlat5;
  let x_293 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_291.x, x_291.y, x_291.z), vec3<f32>(x_293.x, x_293.y, x_293.z));
  let x_297 : vec3<f32> = u_xlat6;
  let x_298 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_297, x_298);
  let x_304 : vec4<f32> = u_xlat3;
  let x_307 : vec4<f32> = x_244.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_304 < x_307);
  let x_310 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_310);
  let x_314 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_314);
  let x_318 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_318);
  let x_322 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_322);
  let x_326 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_326);
  let x_332 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_332);
  let x_336 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_336);
  let x_339 : vec4<f32> = u_xlat3;
  let x_341 : vec4<f32> = u_xlat4;
  let x_343 : vec3<f32> = (vec3<f32>(x_339.x, x_339.y, x_339.z) + vec3<f32>(x_341.y, x_341.z, x_341.w));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : vec4<f32> = u_xlat3;
  let x_349 : vec3<f32> = max(vec3<f32>(x_346.x, x_346.y, x_346.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_350 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_350.x, x_349.x, x_349.y, x_349.z);
  let x_352 : vec4<f32> = u_xlat4;
  u_xlat11.x = dot(x_352, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_360 : f32 = u_xlat11.x;
  u_xlat11.x = (-(x_360) + 4.0f);
  let x_367 : f32 = u_xlat11.x;
  u_xlatu11 = u32(x_367);
  let x_371 : u32 = u_xlatu11;
  u_xlati11 = (bitcast<i32>(x_371) << bitcast<u32>(2i));
  let x_374 : vec3<f32> = vs_TEXCOORD1;
  let x_376 : i32 = u_xlati11;
  let x_379 : i32 = u_xlati11;
  let x_383 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_376 + 1i) / 4i)][((x_379 + 1i) % 4i)];
  let x_385 : vec3<f32> = (vec3<f32>(x_374.y, x_374.y, x_374.y) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_388 : i32 = u_xlati11;
  let x_390 : i32 = u_xlati11;
  let x_393 : vec4<f32> = x_244.x_MainLightWorldToShadow[(x_388 / 4i)][(x_390 % 4i)];
  let x_395 : vec3<f32> = vs_TEXCOORD1;
  let x_398 : vec4<f32> = u_xlat3;
  let x_400 : vec3<f32> = ((vec3<f32>(x_393.x, x_393.y, x_393.z) * vec3<f32>(x_395.x, x_395.x, x_395.x)) + vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_401 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
  let x_403 : i32 = u_xlati11;
  let x_406 : i32 = u_xlati11;
  let x_410 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_403 + 2i) / 4i)][((x_406 + 2i) % 4i)];
  let x_412 : vec3<f32> = vs_TEXCOORD1;
  let x_415 : vec4<f32> = u_xlat3;
  let x_417 : vec3<f32> = ((vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412.z, x_412.z, x_412.z)) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat3;
  let x_422 : i32 = u_xlati11;
  let x_425 : i32 = u_xlati11;
  let x_429 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_422 + 3i) / 4i)][((x_425 + 3i) % 4i)];
  let x_431 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.z) + vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  u_xlat2.w = 1.0f;
  let x_437 : vec4<f32> = x_184.unity_SHAr;
  let x_438 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_437, x_438);
  let x_443 : vec4<f32> = x_184.unity_SHAg;
  let x_444 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_443, x_444);
  let x_449 : vec4<f32> = x_184.unity_SHAb;
  let x_450 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_449, x_450);
  let x_453 : vec4<f32> = u_xlat2;
  let x_455 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_453.y, x_453.z, x_453.z, x_453.x) * vec4<f32>(x_455.x, x_455.y, x_455.z, x_455.z));
  let x_460 : vec4<f32> = x_184.unity_SHBr;
  let x_461 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_460, x_461);
  let x_466 : vec4<f32> = x_184.unity_SHBg;
  let x_467 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_466, x_467);
  let x_472 : vec4<f32> = x_184.unity_SHBb;
  let x_473 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_472, x_473);
  let x_477 : f32 = u_xlat2.y;
  let x_479 : f32 = u_xlat2.y;
  u_xlat11.x = (x_477 * x_479);
  let x_483 : f32 = u_xlat2.x;
  let x_485 : f32 = u_xlat2.x;
  let x_488 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_483 * x_485) + -(x_488));
  let x_494 : vec4<f32> = x_184.unity_SHC;
  let x_496 : vec3<f32> = u_xlat11;
  let x_499 : vec3<f32> = u_xlat6;
  let x_500 : vec3<f32> = ((vec3<f32>(x_494.x, x_494.y, x_494.z) * vec3<f32>(x_496.x, x_496.x, x_496.x)) + x_499);
  let x_501 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_503 : vec4<f32> = u_xlat4;
  let x_505 : vec4<f32> = u_xlat5;
  let x_507 : vec3<f32> = (vec3<f32>(x_503.x, x_503.y, x_503.z) + vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_508 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
  let x_510 : vec4<f32> = u_xlat4;
  let x_512 : vec3<f32> = max(vec3<f32>(x_510.x, x_510.y, x_510.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_516 : vec4<f32> = u_xlat3;
  let x_517 : vec2<f32> = vec2<f32>(x_516.x, x_516.y);
  let x_519 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_517.x, x_517.y, x_519);
  let x_531 : vec3<f32> = txVec0;
  let x_533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_531.xy, x_531.z);
  u_xlat11.x = x_533;
  let x_537 : f32 = x_244.x_MainLightShadowParams.x;
  u_xlat33 = (-(x_537) + 1.0f);
  let x_541 : f32 = u_xlat11.x;
  let x_543 : f32 = x_244.x_MainLightShadowParams.x;
  let x_545 : f32 = u_xlat33;
  u_xlat11.x = ((x_541 * x_543) + x_545);
  let x_549 : f32 = u_xlat3.z;
  u_xlatb33 = (0.0f >= x_549);
  let x_553 : f32 = u_xlat3.z;
  u_xlatb1 = (x_553 >= 1.0f);
  let x_555 : bool = u_xlatb33;
  let x_556 : bool = u_xlatb1;
  u_xlatb33 = (x_555 | x_556);
  let x_558 : bool = u_xlatb33;
  if (x_558) {
    x_559 = 1.0f;
  } else {
    let x_564 : f32 = u_xlat11.x;
    x_559 = x_564;
  }
  let x_565 : f32 = x_559;
  u_xlat11.x = x_565;
  let x_567 : vec3<f32> = vs_TEXCOORD1;
  let x_570 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_572 : vec3<f32> = (x_567 + -(x_570));
  let x_573 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
  let x_575 : vec4<f32> = u_xlat3;
  let x_577 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(vec3<f32>(x_575.x, x_575.y, x_575.z), vec3<f32>(x_577.x, x_577.y, x_577.z));
  let x_580 : f32 = u_xlat33;
  let x_582 : f32 = x_244.x_MainLightShadowParams.z;
  let x_585 : f32 = x_244.x_MainLightShadowParams.w;
  u_xlat33 = ((x_580 * x_582) + x_585);
  let x_587 : f32 = u_xlat33;
  u_xlat33 = clamp(x_587, 0.0f, 1.0f);
  let x_590 : f32 = u_xlat11.x;
  u_xlat1.x = (-(x_590) + 1.0f);
  let x_594 : f32 = u_xlat33;
  let x_596 : f32 = u_xlat1.x;
  let x_599 : f32 = u_xlat11.x;
  u_xlat11.x = ((x_594 * x_596) + x_599);
  let x_608 : f32 = x_606.x_MainLightCookieTextureFormat;
  u_xlatb33 = !((x_608 == -1.0f));
  let x_610 : bool = u_xlatb33;
  if (x_610) {
    let x_613 : vec3<f32> = vs_TEXCOORD1;
    let x_616 : vec4<f32> = x_606.x_MainLightWorldToLight[1i];
    let x_618 : vec2<f32> = (vec2<f32>(x_613.y, x_613.y) * vec2<f32>(x_616.x, x_616.y));
    let x_619 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
    let x_622 : vec4<f32> = x_606.x_MainLightWorldToLight[0i];
    let x_624 : vec3<f32> = vs_TEXCOORD1;
    let x_627 : vec4<f32> = u_xlat3;
    let x_629 : vec2<f32> = ((vec2<f32>(x_622.x, x_622.y) * vec2<f32>(x_624.x, x_624.x)) + vec2<f32>(x_627.x, x_627.y));
    let x_630 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
    let x_633 : vec4<f32> = x_606.x_MainLightWorldToLight[2i];
    let x_635 : vec3<f32> = vs_TEXCOORD1;
    let x_638 : vec4<f32> = u_xlat3;
    let x_640 : vec2<f32> = ((vec2<f32>(x_633.x, x_633.y) * vec2<f32>(x_635.z, x_635.z)) + vec2<f32>(x_638.x, x_638.y));
    let x_641 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
    let x_643 : vec4<f32> = u_xlat3;
    let x_646 : vec4<f32> = x_606.x_MainLightWorldToLight[3i];
    let x_648 : vec2<f32> = (vec2<f32>(x_643.x, x_643.y) + vec2<f32>(x_646.x, x_646.y));
    let x_649 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
    let x_651 : vec4<f32> = u_xlat3;
    let x_655 : vec2<f32> = ((vec2<f32>(x_651.x, x_651.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_656 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
    let x_663 : vec4<f32> = u_xlat3;
    let x_666 : f32 = x_43.x_GlobalMipBias.x;
    let x_667 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_663.x, x_663.y), x_666);
    u_xlat3 = x_667;
    let x_672 : f32 = x_606.x_MainLightCookieTextureFormat;
    let x_674 : f32 = x_606.x_MainLightCookieTextureFormat;
    let x_676 : f32 = x_606.x_MainLightCookieTextureFormat;
    let x_678 : f32 = x_606.x_MainLightCookieTextureFormat;
    let x_679 : vec4<f32> = vec4<f32>(x_672, x_674, x_676, x_678);
    let x_686 : vec4<bool> = (vec4<f32>(x_679.x, x_679.y, x_679.z, x_679.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_686.x, x_686.y);
    let x_689 : bool = u_xlatb5.y;
    if (x_689) {
      let x_694 : f32 = u_xlat3.w;
      x_690 = x_694;
    } else {
      let x_697 : f32 = u_xlat3.x;
      x_690 = x_697;
    }
    let x_698 : f32 = x_690;
    u_xlat33 = x_698;
    let x_700 : bool = u_xlatb5.x;
    if (x_700) {
      let x_704 : vec4<f32> = u_xlat3;
      x_701 = vec3<f32>(x_704.x, x_704.y, x_704.z);
    } else {
      let x_707 : f32 = u_xlat33;
      x_701 = vec3<f32>(x_707, x_707, x_707);
    }
    let x_709 : vec3<f32> = x_701;
    let x_710 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_716 : vec4<f32> = u_xlat3;
  let x_719 : vec4<f32> = x_43.x_MainLightColor;
  let x_721 : vec3<f32> = (vec3<f32>(x_716.x, x_716.y, x_716.z) * vec3<f32>(x_719.x, x_719.y, x_719.z));
  let x_722 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
  let x_725 : f32 = u_xlat11.x;
  let x_727 : f32 = x_184.unity_LightData.z;
  u_xlat11.x = (x_725 * x_727);
  let x_730 : vec3<f32> = u_xlat11;
  let x_732 : vec4<f32> = u_xlat3;
  let x_734 : vec3<f32> = (vec3<f32>(x_730.x, x_730.x, x_730.x) * vec3<f32>(x_732.x, x_732.y, x_732.z));
  let x_735 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
  let x_737 : vec4<f32> = u_xlat2;
  let x_740 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat11.x = dot(vec3<f32>(x_737.x, x_737.y, x_737.z), vec3<f32>(x_740.x, x_740.y, x_740.z));
  let x_745 : f32 = u_xlat11.x;
  u_xlat11.x = clamp(x_745, 0.0f, 1.0f);
  let x_748 : vec3<f32> = u_xlat11;
  let x_750 : vec4<f32> = u_xlat3;
  let x_752 : vec3<f32> = (vec3<f32>(x_748.x, x_748.x, x_748.x) * vec3<f32>(x_750.x, x_750.y, x_750.z));
  let x_753 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_752.x, x_752.y, x_752.z, x_753.w);
  let x_755 : vec4<f32> = u_xlat1;
  let x_757 : vec4<f32> = u_xlat3;
  let x_759 : vec3<f32> = (vec3<f32>(x_755.y, x_755.z, x_755.w) * vec3<f32>(x_757.x, x_757.y, x_757.z));
  let x_760 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_759.x, x_759.y, x_759.z, x_760.w);
  let x_762 : vec4<f32> = u_xlat0;
  let x_764 : vec4<f32> = u_xlat3;
  let x_766 : vec3<f32> = (vec3<f32>(x_762.x, x_762.x, x_762.x) * vec3<f32>(x_764.x, x_764.y, x_764.z));
  let x_767 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_770 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_772 : f32 = x_184.unity_LightData.y;
  u_xlat11.x = min(x_770, x_772);
  let x_776 : f32 = u_xlat11.x;
  u_xlatu11 = bitcast<u32>(i32(x_776));
  let x_780 : f32 = x_606.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_782 : f32 = x_606.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_784 : f32 = x_606.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_786 : f32 = x_606.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_787 : vec4<f32> = vec4<f32>(x_780, x_782, x_784, x_786);
  let x_793 : vec4<bool> = (vec4<f32>(x_787.x, x_787.y, x_787.z, x_787.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_793.x, x_793.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_804 : u32 = u_xlatu_loop_1;
    let x_805 : u32 = u_xlatu11;
    if ((x_804 < x_805)) {
    } else {
      break;
    }
    let x_808 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_808 >> 2u);
    let x_811 : u32 = u_xlatu_loop_1;
    u_xlati35 = bitcast<i32>((x_811 & 3u));
    let x_814 : u32 = u_xlatu1;
    let x_817 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_814)];
    let x_827 : i32 = u_xlati35;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_832 : vec4<u32> = indexable[x_827];
    u_xlat1.x = dot(x_817, bitcast<vec4<f32>>(x_832));
    let x_837 : f32 = u_xlat1.x;
    u_xlatu1 = bitcast<u32>(i32(x_837));
    let x_841 : vec3<f32> = vs_TEXCOORD1;
    let x_853 : u32 = u_xlatu1;
    let x_856 : vec4<f32> = x_852.x_AdditionalLightsPosition[bitcast<i32>(x_853)];
    let x_859 : u32 = u_xlatu1;
    let x_862 : vec4<f32> = x_852.x_AdditionalLightsPosition[bitcast<i32>(x_859)];
    u_xlat7 = ((-(x_841) * vec3<f32>(x_856.w, x_856.w, x_856.w)) + vec3<f32>(x_862.x, x_862.y, x_862.z));
    let x_866 : vec3<f32> = u_xlat7;
    let x_867 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_866, x_867);
    let x_869 : f32 = u_xlat35;
    u_xlat35 = max(x_869, 6.10351562e-05f);
    let x_873 : f32 = u_xlat35;
    u_xlat36 = inverseSqrt(x_873);
    let x_875 : f32 = u_xlat36;
    let x_877 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_875, x_875, x_875) * x_877);
    let x_879 : f32 = u_xlat35;
    u_xlat36 = (1.0f / x_879);
    let x_881 : f32 = u_xlat35;
    let x_882 : u32 = u_xlatu1;
    let x_885 : f32 = x_852.x_AdditionalLightsAttenuation[bitcast<i32>(x_882)].x;
    u_xlat35 = (x_881 * x_885);
    let x_887 : f32 = u_xlat35;
    let x_889 : f32 = u_xlat35;
    u_xlat35 = ((-(x_887) * x_889) + 1.0f);
    let x_892 : f32 = u_xlat35;
    u_xlat35 = max(x_892, 0.0f);
    let x_894 : f32 = u_xlat35;
    let x_895 : f32 = u_xlat35;
    u_xlat35 = (x_894 * x_895);
    let x_897 : f32 = u_xlat35;
    let x_898 : f32 = u_xlat36;
    u_xlat35 = (x_897 * x_898);
    let x_900 : u32 = u_xlatu1;
    let x_903 : vec4<f32> = x_852.x_AdditionalLightsSpotDir[bitcast<i32>(x_900)];
    let x_905 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(vec3<f32>(x_903.x, x_903.y, x_903.z), x_905);
    let x_907 : f32 = u_xlat36;
    let x_908 : u32 = u_xlatu1;
    let x_911 : f32 = x_852.x_AdditionalLightsAttenuation[bitcast<i32>(x_908)].z;
    let x_913 : u32 = u_xlatu1;
    let x_916 : f32 = x_852.x_AdditionalLightsAttenuation[bitcast<i32>(x_913)].w;
    u_xlat36 = ((x_907 * x_911) + x_916);
    let x_918 : f32 = u_xlat36;
    u_xlat36 = clamp(x_918, 0.0f, 1.0f);
    let x_920 : f32 = u_xlat36;
    let x_921 : f32 = u_xlat36;
    u_xlat36 = (x_920 * x_921);
    let x_923 : f32 = u_xlat35;
    let x_924 : f32 = u_xlat36;
    u_xlat35 = (x_923 * x_924);
    let x_927 : u32 = u_xlatu1;
    u_xlatu36 = (x_927 >> 5u);
    let x_930 : u32 = u_xlatu1;
    u_xlati37 = (1i << bitcast<u32>((bitcast<i32>(x_930) & 31i)));
    let x_936 : i32 = u_xlati37;
    let x_938 : u32 = u_xlatu36;
    let x_941 : f32 = x_606.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_938)].el;
    u_xlati36 = bitcast<i32>((bitcast<u32>(x_936) & bitcast<u32>(x_941)));
    let x_945 : i32 = u_xlati36;
    if ((x_945 != 0i)) {
      let x_955 : u32 = u_xlatu1;
      let x_958 : f32 = x_954.x_AdditionalLightsLightTypes[bitcast<i32>(x_955)].el;
      u_xlati36 = i32(x_958);
      let x_960 : i32 = u_xlati36;
      u_xlati37 = select(1i, 0i, (x_960 != 0i));
      let x_964 : u32 = u_xlatu1;
      u_xlati27 = (bitcast<i32>(x_964) << bitcast<u32>(2i));
      let x_967 : i32 = u_xlati37;
      if ((x_967 != 0i)) {
        let x_972 : vec3<f32> = vs_TEXCOORD1;
        let x_974 : i32 = u_xlati27;
        let x_977 : i32 = u_xlati27;
        let x_981 : vec4<f32> = x_954.x_AdditionalLightsWorldToLights[((x_974 + 1i) / 4i)][((x_977 + 1i) % 4i)];
        let x_983 : vec3<f32> = (vec3<f32>(x_972.y, x_972.y, x_972.y) * vec3<f32>(x_981.x, x_981.y, x_981.w));
        let x_984 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
        let x_986 : i32 = u_xlati27;
        let x_988 : i32 = u_xlati27;
        let x_991 : vec4<f32> = x_954.x_AdditionalLightsWorldToLights[(x_986 / 4i)][(x_988 % 4i)];
        let x_993 : vec3<f32> = vs_TEXCOORD1;
        let x_996 : vec4<f32> = u_xlat8;
        let x_998 : vec3<f32> = ((vec3<f32>(x_991.x, x_991.y, x_991.w) * vec3<f32>(x_993.x, x_993.x, x_993.x)) + vec3<f32>(x_996.x, x_996.y, x_996.z));
        let x_999 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_998.x, x_998.y, x_998.z, x_999.w);
        let x_1001 : i32 = u_xlati27;
        let x_1004 : i32 = u_xlati27;
        let x_1008 : vec4<f32> = x_954.x_AdditionalLightsWorldToLights[((x_1001 + 2i) / 4i)][((x_1004 + 2i) % 4i)];
        let x_1010 : vec3<f32> = vs_TEXCOORD1;
        let x_1013 : vec4<f32> = u_xlat8;
        let x_1015 : vec3<f32> = ((vec3<f32>(x_1008.x, x_1008.y, x_1008.w) * vec3<f32>(x_1010.z, x_1010.z, x_1010.z)) + vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
        let x_1016 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1015.x, x_1015.y, x_1015.z, x_1016.w);
        let x_1018 : vec4<f32> = u_xlat8;
        let x_1020 : i32 = u_xlati27;
        let x_1023 : i32 = u_xlati27;
        let x_1027 : vec4<f32> = x_954.x_AdditionalLightsWorldToLights[((x_1020 + 3i) / 4i)][((x_1023 + 3i) % 4i)];
        let x_1029 : vec3<f32> = (vec3<f32>(x_1018.x, x_1018.y, x_1018.z) + vec3<f32>(x_1027.x, x_1027.y, x_1027.w));
        let x_1030 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
        let x_1032 : vec4<f32> = u_xlat8;
        let x_1034 : vec4<f32> = u_xlat8;
        let x_1036 : vec2<f32> = (vec2<f32>(x_1032.x, x_1032.y) / vec2<f32>(x_1034.z, x_1034.z));
        let x_1037 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1036.x, x_1036.y, x_1037.z, x_1037.w);
        let x_1039 : vec4<f32> = u_xlat8;
        let x_1042 : vec2<f32> = ((vec2<f32>(x_1039.x, x_1039.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1043 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1042.x, x_1042.y, x_1043.z, x_1043.w);
        let x_1045 : vec4<f32> = u_xlat8;
        let x_1049 : vec2<f32> = clamp(vec2<f32>(x_1045.x, x_1045.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1050 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1049.x, x_1049.y, x_1050.z, x_1050.w);
        let x_1052 : u32 = u_xlatu1;
        let x_1055 : vec4<f32> = x_954.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1052)];
        let x_1057 : vec4<f32> = u_xlat8;
        let x_1060 : u32 = u_xlatu1;
        let x_1063 : vec4<f32> = x_954.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1060)];
        let x_1065 : vec2<f32> = ((vec2<f32>(x_1055.x, x_1055.y) * vec2<f32>(x_1057.x, x_1057.y)) + vec2<f32>(x_1063.z, x_1063.w));
        let x_1066 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1065.x, x_1065.y, x_1066.z, x_1066.w);
      } else {
        let x_1070 : i32 = u_xlati36;
        u_xlatb36 = (x_1070 == 1i);
        let x_1072 : bool = u_xlatb36;
        u_xlati36 = select(0i, 1i, x_1072);
        let x_1074 : i32 = u_xlati36;
        if ((x_1074 != 0i)) {
          let x_1080 : vec3<f32> = vs_TEXCOORD1;
          let x_1082 : i32 = u_xlati27;
          let x_1085 : i32 = u_xlati27;
          let x_1089 : vec4<f32> = x_954.x_AdditionalLightsWorldToLights[((x_1082 + 1i) / 4i)][((x_1085 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_1080.y, x_1080.y) * vec2<f32>(x_1089.x, x_1089.y));
          let x_1092 : i32 = u_xlati27;
          let x_1094 : i32 = u_xlati27;
          let x_1097 : vec4<f32> = x_954.x_AdditionalLightsWorldToLights[(x_1092 / 4i)][(x_1094 % 4i)];
          let x_1099 : vec3<f32> = vs_TEXCOORD1;
          let x_1102 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1099.x, x_1099.x)) + x_1102);
          let x_1104 : i32 = u_xlati27;
          let x_1107 : i32 = u_xlati27;
          let x_1111 : vec4<f32> = x_954.x_AdditionalLightsWorldToLights[((x_1104 + 2i) / 4i)][((x_1107 + 2i) % 4i)];
          let x_1113 : vec3<f32> = vs_TEXCOORD1;
          let x_1116 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_1111.x, x_1111.y) * vec2<f32>(x_1113.z, x_1113.z)) + x_1116);
          let x_1118 : vec2<f32> = u_xlat30;
          let x_1119 : i32 = u_xlati27;
          let x_1122 : i32 = u_xlati27;
          let x_1126 : vec4<f32> = x_954.x_AdditionalLightsWorldToLights[((x_1119 + 3i) / 4i)][((x_1122 + 3i) % 4i)];
          u_xlat30 = (x_1118 + vec2<f32>(x_1126.x, x_1126.y));
          let x_1129 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_1129 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1132 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_1132);
          let x_1134 : u32 = u_xlatu1;
          let x_1137 : vec4<f32> = x_954.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1134)];
          let x_1139 : vec2<f32> = u_xlat30;
          let x_1141 : u32 = u_xlatu1;
          let x_1144 : vec4<f32> = x_954.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1141)];
          let x_1146 : vec2<f32> = ((vec2<f32>(x_1137.x, x_1137.y) * x_1139) + vec2<f32>(x_1144.z, x_1144.w));
          let x_1147 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
        } else {
          let x_1151 : vec3<f32> = vs_TEXCOORD1;
          let x_1153 : i32 = u_xlati27;
          let x_1156 : i32 = u_xlati27;
          let x_1160 : vec4<f32> = x_954.x_AdditionalLightsWorldToLights[((x_1153 + 1i) / 4i)][((x_1156 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_1151.y, x_1151.y, x_1151.y, x_1151.y) * x_1160);
          let x_1162 : i32 = u_xlati27;
          let x_1164 : i32 = u_xlati27;
          let x_1167 : vec4<f32> = x_954.x_AdditionalLightsWorldToLights[(x_1162 / 4i)][(x_1164 % 4i)];
          let x_1168 : vec3<f32> = vs_TEXCOORD1;
          let x_1171 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1167 * vec4<f32>(x_1168.x, x_1168.x, x_1168.x, x_1168.x)) + x_1171);
          let x_1173 : i32 = u_xlati27;
          let x_1176 : i32 = u_xlati27;
          let x_1180 : vec4<f32> = x_954.x_AdditionalLightsWorldToLights[((x_1173 + 2i) / 4i)][((x_1176 + 2i) % 4i)];
          let x_1181 : vec3<f32> = vs_TEXCOORD1;
          let x_1184 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_1180 * vec4<f32>(x_1181.z, x_1181.z, x_1181.z, x_1181.z)) + x_1184);
          let x_1186 : vec4<f32> = u_xlat9;
          let x_1187 : i32 = u_xlati27;
          let x_1190 : i32 = u_xlati27;
          let x_1194 : vec4<f32> = x_954.x_AdditionalLightsWorldToLights[((x_1187 + 3i) / 4i)][((x_1190 + 3i) % 4i)];
          u_xlat9 = (x_1186 + x_1194);
          let x_1196 : vec4<f32> = u_xlat9;
          let x_1198 : vec4<f32> = u_xlat9;
          let x_1200 : vec3<f32> = (vec3<f32>(x_1196.x, x_1196.y, x_1196.z) / vec3<f32>(x_1198.w, x_1198.w, x_1198.w));
          let x_1201 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1200.x, x_1200.y, x_1200.z, x_1201.w);
          let x_1203 : vec4<f32> = u_xlat9;
          let x_1205 : vec4<f32> = u_xlat9;
          u_xlat36 = dot(vec3<f32>(x_1203.x, x_1203.y, x_1203.z), vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
          let x_1208 : f32 = u_xlat36;
          u_xlat36 = inverseSqrt(x_1208);
          let x_1210 : f32 = u_xlat36;
          let x_1212 : vec4<f32> = u_xlat9;
          let x_1214 : vec3<f32> = (vec3<f32>(x_1210, x_1210, x_1210) * vec3<f32>(x_1212.x, x_1212.y, x_1212.z));
          let x_1215 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_1214.x, x_1214.y, x_1214.z, x_1215.w);
          let x_1217 : vec4<f32> = u_xlat9;
          u_xlat36 = dot(abs(vec3<f32>(x_1217.x, x_1217.y, x_1217.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1222 : f32 = u_xlat36;
          u_xlat36 = max(x_1222, 0.000001f);
          let x_1225 : f32 = u_xlat36;
          u_xlat36 = (1.0f / x_1225);
          let x_1228 : f32 = u_xlat36;
          let x_1230 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_1228, x_1228, x_1228) * vec3<f32>(x_1230.z, x_1230.x, x_1230.y));
          let x_1234 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_1234);
          let x_1238 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_1238, 0.0f, 1.0f);
          let x_1242 : vec3<f32> = u_xlat10;
          let x_1245 : vec4<bool> = (vec4<f32>(x_1242.y, x_1242.z, x_1242.y, x_1242.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_1245.x, x_1245.y);
          let x_1249 : bool = u_xlatb27.x;
          if (x_1249) {
            let x_1254 : f32 = u_xlat10.x;
            x_1250 = x_1254;
          } else {
            let x_1257 : f32 = u_xlat10.x;
            x_1250 = -(x_1257);
          }
          let x_1259 : f32 = x_1250;
          u_xlat27.x = x_1259;
          let x_1262 : bool = u_xlatb27.y;
          if (x_1262) {
            let x_1267 : f32 = u_xlat10.x;
            x_1263 = x_1267;
          } else {
            let x_1270 : f32 = u_xlat10.x;
            x_1263 = -(x_1270);
          }
          let x_1272 : f32 = x_1263;
          u_xlat27.y = x_1272;
          let x_1274 : vec4<f32> = u_xlat9;
          let x_1276 : f32 = u_xlat36;
          let x_1279 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1274.x, x_1274.y) * vec2<f32>(x_1276, x_1276)) + x_1279);
          let x_1281 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1281 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1284 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1284, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1288 : u32 = u_xlatu1;
          let x_1291 : vec4<f32> = x_954.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1288)];
          let x_1293 : vec2<f32> = u_xlat27;
          let x_1295 : u32 = u_xlatu1;
          let x_1298 : vec4<f32> = x_954.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1295)];
          let x_1300 : vec2<f32> = ((vec2<f32>(x_1291.x, x_1291.y) * x_1293) + vec2<f32>(x_1298.z, x_1298.w));
          let x_1301 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1300.x, x_1300.y, x_1301.z, x_1301.w);
        }
      }
      let x_1308 : vec4<f32> = u_xlat8;
      let x_1311 : f32 = x_43.x_GlobalMipBias.x;
      let x_1312 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1308.x, x_1308.y), x_1311);
      u_xlat8 = x_1312;
      let x_1314 : bool = u_xlatb5.y;
      if (x_1314) {
        let x_1319 : f32 = u_xlat8.w;
        x_1315 = x_1319;
      } else {
        let x_1322 : f32 = u_xlat8.x;
        x_1315 = x_1322;
      }
      let x_1323 : f32 = x_1315;
      u_xlat36 = x_1323;
      let x_1325 : bool = u_xlatb5.x;
      if (x_1325) {
        let x_1329 : vec4<f32> = u_xlat8;
        x_1326 = vec3<f32>(x_1329.x, x_1329.y, x_1329.z);
      } else {
        let x_1332 : f32 = u_xlat36;
        x_1326 = vec3<f32>(x_1332, x_1332, x_1332);
      }
      let x_1334 : vec3<f32> = x_1326;
      let x_1335 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1341 : vec4<f32> = u_xlat8;
    let x_1343 : u32 = u_xlatu1;
    let x_1346 : vec4<f32> = x_852.x_AdditionalLightsColor[bitcast<i32>(x_1343)];
    let x_1348 : vec3<f32> = (vec3<f32>(x_1341.x, x_1341.y, x_1341.z) * vec3<f32>(x_1346.x, x_1346.y, x_1346.z));
    let x_1349 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1348.x, x_1348.y, x_1348.z, x_1349.w);
    let x_1351 : f32 = u_xlat35;
    let x_1353 : vec4<f32> = u_xlat8;
    let x_1355 : vec3<f32> = (vec3<f32>(x_1351, x_1351, x_1351) * vec3<f32>(x_1353.x, x_1353.y, x_1353.z));
    let x_1356 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1355.x, x_1355.y, x_1355.z, x_1356.w);
    let x_1358 : vec4<f32> = u_xlat2;
    let x_1360 : vec3<f32> = u_xlat7;
    u_xlat1.x = dot(vec3<f32>(x_1358.x, x_1358.y, x_1358.z), x_1360);
    let x_1364 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_1364, 0.0f, 1.0f);
    let x_1367 : vec4<f32> = u_xlat1;
    let x_1369 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1367.x, x_1367.x, x_1367.x) * vec3<f32>(x_1369.x, x_1369.y, x_1369.z));
    let x_1372 : vec4<f32> = u_xlat1;
    let x_1374 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1372.y, x_1372.z, x_1372.w) * x_1374);
    let x_1376 : vec3<f32> = u_xlat7;
    let x_1377 : vec4<f32> = u_xlat0;
    let x_1380 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1376 * vec3<f32>(x_1377.x, x_1377.x, x_1377.x)) + x_1380);

    continuing {
      let x_1382 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1382 + bitcast<u32>(1i));
    }
  }
  let x_1384 : vec4<f32> = u_xlat4;
  let x_1386 : vec4<f32> = u_xlat1;
  let x_1389 : vec4<f32> = u_xlat3;
  let x_1391 : vec3<f32> = ((vec3<f32>(x_1384.x, x_1384.y, x_1384.z) * vec3<f32>(x_1386.y, x_1386.z, x_1386.w)) + vec3<f32>(x_1389.x, x_1389.y, x_1389.z));
  let x_1392 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1391.x, x_1391.y, x_1391.z, x_1392.w);
  let x_1396 : vec3<f32> = u_xlat6;
  let x_1397 : vec4<f32> = u_xlat1;
  let x_1399 : vec3<f32> = (x_1396 + vec3<f32>(x_1397.x, x_1397.y, x_1397.z));
  let x_1400 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1399.x, x_1399.y, x_1399.z, x_1400.w);
  let x_1403 : f32 = x_56.x_Surface;
  u_xlatb11 = (x_1403 == 1.0f);
  let x_1405 : bool = u_xlatb11;
  let x_1406 : bool = u_xlatb22;
  u_xlatb11 = (x_1405 | x_1406);
  let x_1408 : bool = u_xlatb11;
  if (x_1408) {
    let x_1413 : f32 = u_xlat0.x;
    x_1409 = x_1413;
  } else {
    x_1409 = 1.0f;
  }
  let x_1415 : f32 = x_1409;
  SV_Target0.w = x_1415;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

