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

@group(1) @binding(5) var<uniform> x_1848 : LightCookies;

@group(0) @binding(2) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_2092 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2201 : AdditionalLightsCookies;

@group(0) @binding(3) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat57 : f32;
  var u_xlatb38 : bool;
  var x_130 : f32;
  var u_xlatb19 : bool;
  var u_xlatb57 : bool;
  var x_190 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu19 : u32;
  var u_xlati19 : i32;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat59 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat26 : vec2<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var txVec17 : vec3<f32>;
  var txVec18 : vec3<f32>;
  var txVec19 : vec3<f32>;
  var txVec20 : vec3<f32>;
  var txVec21 : vec3<f32>;
  var txVec22 : vec3<f32>;
  var txVec23 : vec3<f32>;
  var txVec24 : vec3<f32>;
  var txVec25 : vec3<f32>;
  var txVec26 : vec3<f32>;
  var txVec27 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb1 : bool;
  var x_1801 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_1931 : f32;
  var x_1942 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu1 : u32;
  var u_xlati59 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat60 : f32;
  var u_xlatu60 : u32;
  var u_xlati61 : i32;
  var u_xlati60 : i32;
  var u_xlati43 : i32;
  var u_xlatb60 : bool;
  var u_xlatb43 : vec2<bool>;
  var x_2493 : f32;
  var x_2506 : f32;
  var x_2558 : f32;
  var x_2569 : vec3<f32>;
  var x_2663 : f32;
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
  u_xlat19.x = ((x_86 * x_88) + -(x_91));
  let x_97 : f32 = u_xlat1.x;
  u_xlat38 = dpdxCoarse(x_97);
  let x_101 : f32 = u_xlat1.x;
  u_xlat57 = dpdyCoarse(x_101);
  let x_103 : f32 = u_xlat57;
  let x_105 : f32 = u_xlat38;
  u_xlat38 = (abs(x_103) + abs(x_105));
  let x_108 : f32 = u_xlat38;
  u_xlat38 = max(x_108, 0.0001f);
  let x_112 : f32 = u_xlat19.x;
  let x_113 : f32 = u_xlat38;
  u_xlat19.x = (x_112 / x_113);
  let x_117 : f32 = u_xlat19.x;
  u_xlat19.x = (x_117 + 0.5f);
  let x_122 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_122, 0.0f, 1.0f);
  let x_127 : f32 = x_43.x_AlphaToMaskAvailable;
  u_xlatb38 = !((x_127 == 0.0f));
  let x_129 : bool = u_xlatb38;
  if (x_129) {
    let x_134 : f32 = u_xlat19.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat0.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : f32 = u_xlat0.x;
  u_xlat19.x = (x_141 + -0.0001f);
  let x_147 : f32 = u_xlat19.x;
  u_xlatb19 = (x_147 < 0.0f);
  let x_149 : bool = u_xlatb19;
  if (((select(0i, 1i, x_149) * -1i) != 0i)) {
    discard;
  }
  let x_157 : vec4<f32> = hlslcc_FragCoord;
  let x_161 : f32 = x_43.x_DitheringTextureInvSize;
  let x_163 : vec2<f32> = (vec2<f32>(x_157.x, x_157.y) * vec2<f32>(x_161, x_161));
  let x_164 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_163.x, x_164.y, x_163.y);
  let x_171 : vec3<f32> = u_xlat19;
  let x_174 : f32 = x_43.x_GlobalMipBias.x;
  let x_175 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_171.x, x_171.z), x_174);
  u_xlat19.x = x_175.w;
  let x_187 : f32 = x_184.unity_LODFade.x;
  u_xlatb57 = (x_187 >= 0.0f);
  let x_189 : bool = u_xlatb57;
  if (x_189) {
    let x_194 : f32 = u_xlat19.x;
    x_190 = abs(x_194);
  } else {
    let x_198 : f32 = u_xlat19.x;
    x_190 = -(abs(x_198));
  }
  let x_201 : f32 = x_190;
  u_xlat19.x = x_201;
  let x_204 : f32 = u_xlat19.x;
  let x_207 : f32 = x_184.unity_LODFade.x;
  u_xlat19.x = (-(x_204) + x_207);
  let x_211 : f32 = u_xlat19.x;
  u_xlatb19 = (x_211 < 0.0f);
  let x_213 : bool = u_xlatb19;
  if (((select(0i, 1i, x_213) * -1i) != 0i)) {
    discard;
  }
  let x_222 : vec3<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vs_TEXCOORD2;
  u_xlat19.x = dot(x_222, x_223);
  let x_227 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_227);
  let x_231 : vec3<f32> = u_xlat19;
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
  let x_277 : vec3<f32> = (x_272 + -(vec3<f32>(x_274.x, x_274.y, x_274.z)));
  let x_278 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec4<f32> = u_xlat3;
  let x_282 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_286 : vec4<f32> = u_xlat4;
  let x_288 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_286.x, x_286.y, x_286.z), vec3<f32>(x_288.x, x_288.y, x_288.z));
  let x_293 : vec4<f32> = u_xlat5;
  let x_295 : vec4<f32> = u_xlat5;
  u_xlat3.z = dot(vec3<f32>(x_293.x, x_293.y, x_293.z), vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_299 : vec4<f32> = u_xlat6;
  let x_301 : vec4<f32> = u_xlat6;
  u_xlat3.w = dot(vec3<f32>(x_299.x, x_299.y, x_299.z), vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_308 : vec4<f32> = u_xlat3;
  let x_311 : vec4<f32> = x_244.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_308 < x_311);
  let x_314 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_314);
  let x_318 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_318);
  let x_322 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_322);
  let x_326 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_326);
  let x_330 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_330);
  let x_336 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_336);
  let x_340 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_340);
  let x_343 : vec4<f32> = u_xlat3;
  let x_345 : vec4<f32> = u_xlat4;
  let x_347 : vec3<f32> = (vec3<f32>(x_343.x, x_343.y, x_343.z) + vec3<f32>(x_345.y, x_345.z, x_345.w));
  let x_348 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_350 : vec4<f32> = u_xlat3;
  let x_353 : vec3<f32> = max(vec3<f32>(x_350.x, x_350.y, x_350.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_354 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_354.x, x_353.x, x_353.y, x_353.z);
  let x_356 : vec4<f32> = u_xlat4;
  u_xlat19.x = dot(x_356, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_364 : f32 = u_xlat19.x;
  u_xlat19.x = (-(x_364) + 4.0f);
  let x_371 : f32 = u_xlat19.x;
  u_xlatu19 = u32(x_371);
  let x_375 : u32 = u_xlatu19;
  u_xlati19 = (bitcast<i32>(x_375) << bitcast<u32>(2i));
  let x_378 : vec3<f32> = vs_TEXCOORD1;
  let x_380 : i32 = u_xlati19;
  let x_383 : i32 = u_xlati19;
  let x_387 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_380 + 1i) / 4i)][((x_383 + 1i) % 4i)];
  let x_389 : vec3<f32> = (vec3<f32>(x_378.y, x_378.y, x_378.y) * vec3<f32>(x_387.x, x_387.y, x_387.z));
  let x_390 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_389.x, x_389.y, x_389.z, x_390.w);
  let x_392 : i32 = u_xlati19;
  let x_394 : i32 = u_xlati19;
  let x_397 : vec4<f32> = x_244.x_MainLightWorldToShadow[(x_392 / 4i)][(x_394 % 4i)];
  let x_399 : vec3<f32> = vs_TEXCOORD1;
  let x_402 : vec4<f32> = u_xlat3;
  let x_404 : vec3<f32> = ((vec3<f32>(x_397.x, x_397.y, x_397.z) * vec3<f32>(x_399.x, x_399.x, x_399.x)) + vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : i32 = u_xlati19;
  let x_410 : i32 = u_xlati19;
  let x_414 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_407 + 2i) / 4i)][((x_410 + 2i) % 4i)];
  let x_416 : vec3<f32> = vs_TEXCOORD1;
  let x_419 : vec4<f32> = u_xlat3;
  let x_421 : vec3<f32> = ((vec3<f32>(x_414.x, x_414.y, x_414.z) * vec3<f32>(x_416.z, x_416.z, x_416.z)) + vec3<f32>(x_419.x, x_419.y, x_419.z));
  let x_422 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_421.x, x_421.y, x_421.z, x_422.w);
  let x_424 : vec4<f32> = u_xlat3;
  let x_426 : i32 = u_xlati19;
  let x_429 : i32 = u_xlati19;
  let x_433 : vec4<f32> = x_244.x_MainLightWorldToShadow[((x_426 + 3i) / 4i)][((x_429 + 3i) % 4i)];
  let x_435 : vec3<f32> = (vec3<f32>(x_424.x, x_424.y, x_424.z) + vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  u_xlat2.w = 1.0f;
  let x_441 : vec4<f32> = x_184.unity_SHAr;
  let x_442 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_441, x_442);
  let x_447 : vec4<f32> = x_184.unity_SHAg;
  let x_448 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_447, x_448);
  let x_453 : vec4<f32> = x_184.unity_SHAb;
  let x_454 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_453, x_454);
  let x_457 : vec4<f32> = u_xlat2;
  let x_459 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_457.y, x_457.z, x_457.z, x_457.x) * vec4<f32>(x_459.x, x_459.y, x_459.z, x_459.z));
  let x_464 : vec4<f32> = x_184.unity_SHBr;
  let x_465 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_464, x_465);
  let x_470 : vec4<f32> = x_184.unity_SHBg;
  let x_471 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_470, x_471);
  let x_476 : vec4<f32> = x_184.unity_SHBb;
  let x_477 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_476, x_477);
  let x_481 : f32 = u_xlat2.y;
  let x_483 : f32 = u_xlat2.y;
  u_xlat19.x = (x_481 * x_483);
  let x_487 : f32 = u_xlat2.x;
  let x_489 : f32 = u_xlat2.x;
  let x_492 : f32 = u_xlat19.x;
  u_xlat19.x = ((x_487 * x_489) + -(x_492));
  let x_498 : vec4<f32> = x_184.unity_SHC;
  let x_500 : vec3<f32> = u_xlat19;
  let x_503 : vec4<f32> = u_xlat6;
  let x_505 : vec3<f32> = ((vec3<f32>(x_498.x, x_498.y, x_498.z) * vec3<f32>(x_500.x, x_500.x, x_500.x)) + vec3<f32>(x_503.x, x_503.y, x_503.z));
  let x_506 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
  let x_508 : vec4<f32> = u_xlat4;
  let x_510 : vec4<f32> = u_xlat5;
  let x_512 : vec3<f32> = (vec3<f32>(x_508.x, x_508.y, x_508.z) + vec3<f32>(x_510.x, x_510.y, x_510.z));
  let x_513 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
  let x_515 : vec4<f32> = u_xlat4;
  let x_517 : vec3<f32> = max(vec3<f32>(x_515.x, x_515.y, x_515.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_518 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
  let x_522 : f32 = x_244.x_MainLightShadowParams.y;
  u_xlatb19 = (0.0f < x_522);
  let x_524 : bool = u_xlatb19;
  if (x_524) {
    let x_528 : f32 = x_244.x_MainLightShadowParams.y;
    u_xlatb19 = (x_528 == 1.0f);
    let x_530 : bool = u_xlatb19;
    if (x_530) {
      let x_533 : vec4<f32> = u_xlat3;
      let x_536 : vec4<f32> = x_244.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_533.x, x_533.y, x_533.x, x_533.y) + x_536);
      let x_539 : vec4<f32> = u_xlat5;
      let x_540 : vec2<f32> = vec2<f32>(x_539.x, x_539.y);
      let x_542 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_540.x, x_540.y, x_542);
      let x_554 : vec3<f32> = txVec0;
      let x_556 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_554.xy, x_554.z);
      u_xlat6.x = x_556;
      let x_559 : vec4<f32> = u_xlat5;
      let x_560 : vec2<f32> = vec2<f32>(x_559.z, x_559.w);
      let x_562 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_560.x, x_560.y, x_562);
      let x_569 : vec3<f32> = txVec1;
      let x_571 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_569.xy, x_569.z);
      u_xlat6.y = x_571;
      let x_573 : vec4<f32> = u_xlat3;
      let x_577 : vec4<f32> = x_244.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_573.x, x_573.y, x_573.x, x_573.y) + x_577);
      let x_580 : vec4<f32> = u_xlat5;
      let x_581 : vec2<f32> = vec2<f32>(x_580.x, x_580.y);
      let x_583 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_581.x, x_581.y, x_583);
      let x_590 : vec3<f32> = txVec2;
      let x_592 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_590.xy, x_590.z);
      u_xlat6.z = x_592;
      let x_595 : vec4<f32> = u_xlat5;
      let x_596 : vec2<f32> = vec2<f32>(x_595.z, x_595.w);
      let x_598 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_596.x, x_596.y, x_598);
      let x_605 : vec3<f32> = txVec3;
      let x_607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_605.xy, x_605.z);
      u_xlat6.w = x_607;
      let x_609 : vec4<f32> = u_xlat6;
      u_xlat19.x = dot(x_609, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_616 : f32 = x_244.x_MainLightShadowParams.y;
      u_xlatb57 = (x_616 == 2.0f);
      let x_618 : bool = u_xlatb57;
      if (x_618) {
        let x_621 : vec4<f32> = u_xlat3;
        let x_625 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_629 : vec2<f32> = ((vec2<f32>(x_621.x, x_621.y) * vec2<f32>(x_625.z, x_625.w)) + vec2<f32>(0.5f, 0.5f));
        let x_630 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_629.x, x_629.y, x_630.z, x_630.w);
        let x_632 : vec4<f32> = u_xlat5;
        let x_634 : vec2<f32> = floor(vec2<f32>(x_632.x, x_632.y));
        let x_635 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_634.x, x_634.y, x_635.z, x_635.w);
        let x_639 : vec4<f32> = u_xlat3;
        let x_642 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_645 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_639.x, x_639.y) * vec2<f32>(x_642.z, x_642.w)) + -(vec2<f32>(x_645.x, x_645.y)));
        let x_649 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_649.x, x_649.x, x_649.y, x_649.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_654 : vec4<f32> = u_xlat6;
        let x_656 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_654.x, x_654.x, x_654.z, x_654.z) * vec4<f32>(x_656.x, x_656.x, x_656.z, x_656.z));
        let x_659 : vec4<f32> = u_xlat7;
        let x_663 : vec2<f32> = (vec2<f32>(x_659.y, x_659.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_664 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_663.x, x_664.y, x_663.y, x_664.w);
        let x_666 : vec4<f32> = u_xlat7;
        let x_669 : vec2<f32> = u_xlat43;
        let x_671 : vec2<f32> = ((vec2<f32>(x_666.x, x_666.z) * vec2<f32>(0.5f, 0.5f)) + -(x_669));
        let x_672 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_671.x, x_671.y, x_672.z, x_672.w);
        let x_675 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_675) + vec2<f32>(1.0f, 1.0f));
        let x_680 : vec2<f32> = u_xlat43;
        let x_682 : vec2<f32> = min(x_680, vec2<f32>(0.0f, 0.0f));
        let x_683 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
        let x_685 : vec4<f32> = u_xlat8;
        let x_688 : vec4<f32> = u_xlat8;
        let x_691 : vec2<f32> = u_xlat45;
        let x_692 : vec2<f32> = ((-(vec2<f32>(x_685.x, x_685.y)) * vec2<f32>(x_688.x, x_688.y)) + x_691);
        let x_693 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_692.x, x_692.y, x_693.z, x_693.w);
        let x_695 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_695, vec2<f32>(0.0f, 0.0f));
        let x_697 : vec2<f32> = u_xlat43;
        let x_699 : vec2<f32> = u_xlat43;
        let x_701 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_697) * x_699) + vec2<f32>(x_701.y, x_701.w));
        let x_704 : vec4<f32> = u_xlat8;
        let x_706 : vec2<f32> = (vec2<f32>(x_704.x, x_704.y) + vec2<f32>(1.0f, 1.0f));
        let x_707 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_706.x, x_706.y, x_707.z, x_707.w);
        let x_709 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_709 + vec2<f32>(1.0f, 1.0f));
        let x_712 : vec4<f32> = u_xlat7;
        let x_716 : vec2<f32> = (vec2<f32>(x_712.x, x_712.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_717 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_716.x, x_716.y, x_717.z, x_717.w);
        let x_719 : vec2<f32> = u_xlat45;
        let x_720 : vec2<f32> = (x_719 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_721 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_720.x, x_720.y, x_721.z, x_721.w);
        let x_723 : vec4<f32> = u_xlat8;
        let x_725 : vec2<f32> = (vec2<f32>(x_723.x, x_723.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_726 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_725.x, x_725.y, x_726.z, x_726.w);
        let x_729 : vec2<f32> = u_xlat43;
        let x_730 : vec2<f32> = (x_729 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_731 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_730.x, x_730.y, x_731.z, x_731.w);
        let x_733 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_733.y, x_733.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_737 : f32 = u_xlat8.x;
        u_xlat9.z = x_737;
        let x_740 : f32 = u_xlat43.x;
        u_xlat9.w = x_740;
        let x_743 : f32 = u_xlat10.x;
        u_xlat7.z = x_743;
        let x_746 : f32 = u_xlat6.x;
        u_xlat7.w = x_746;
        let x_749 : vec4<f32> = u_xlat7;
        let x_751 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_749.z, x_749.w, x_749.x, x_749.z) + vec4<f32>(x_751.z, x_751.w, x_751.x, x_751.z));
        let x_755 : f32 = u_xlat9.y;
        u_xlat8.z = x_755;
        let x_758 : f32 = u_xlat43.y;
        u_xlat8.w = x_758;
        let x_761 : f32 = u_xlat7.y;
        u_xlat10.z = x_761;
        let x_764 : f32 = u_xlat6.z;
        u_xlat10.w = x_764;
        let x_766 : vec4<f32> = u_xlat8;
        let x_768 : vec4<f32> = u_xlat10;
        let x_770 : vec3<f32> = (vec3<f32>(x_766.z, x_766.y, x_766.w) + vec3<f32>(x_768.z, x_768.y, x_768.w));
        let x_771 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
        let x_773 : vec4<f32> = u_xlat7;
        let x_775 : vec4<f32> = u_xlat11;
        let x_777 : vec3<f32> = (vec3<f32>(x_773.x, x_773.z, x_773.w) / vec3<f32>(x_775.z, x_775.w, x_775.y));
        let x_778 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
        let x_780 : vec4<f32> = u_xlat7;
        let x_786 : vec3<f32> = (vec3<f32>(x_780.x, x_780.y, x_780.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_787 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_786.x, x_786.y, x_786.z, x_787.w);
        let x_789 : vec4<f32> = u_xlat10;
        let x_791 : vec4<f32> = u_xlat6;
        let x_793 : vec3<f32> = (vec3<f32>(x_789.z, x_789.y, x_789.w) / vec3<f32>(x_791.x, x_791.y, x_791.z));
        let x_794 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_793.x, x_793.y, x_793.z, x_794.w);
        let x_796 : vec4<f32> = u_xlat8;
        let x_798 : vec3<f32> = (vec3<f32>(x_796.x, x_796.y, x_796.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_799 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
        let x_801 : vec4<f32> = u_xlat7;
        let x_804 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_806 : vec3<f32> = (vec3<f32>(x_801.y, x_801.x, x_801.z) * vec3<f32>(x_804.x, x_804.x, x_804.x));
        let x_807 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_806.x, x_806.y, x_806.z, x_807.w);
        let x_809 : vec4<f32> = u_xlat8;
        let x_812 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_814 : vec3<f32> = (vec3<f32>(x_809.x, x_809.y, x_809.z) * vec3<f32>(x_812.y, x_812.y, x_812.y));
        let x_815 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_814.x, x_814.y, x_814.z, x_815.w);
        let x_818 : f32 = u_xlat8.x;
        u_xlat7.w = x_818;
        let x_820 : vec4<f32> = u_xlat5;
        let x_823 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_826 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_820.x, x_820.y, x_820.x, x_820.y) * vec4<f32>(x_823.x, x_823.y, x_823.x, x_823.y)) + vec4<f32>(x_826.y, x_826.w, x_826.x, x_826.w));
        let x_829 : vec4<f32> = u_xlat5;
        let x_832 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_835 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_829.x, x_829.y) * vec2<f32>(x_832.x, x_832.y)) + vec2<f32>(x_835.z, x_835.w));
        let x_839 : f32 = u_xlat7.y;
        u_xlat8.w = x_839;
        let x_841 : vec4<f32> = u_xlat8;
        let x_842 : vec2<f32> = vec2<f32>(x_841.y, x_841.z);
        let x_843 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_843.x, x_842.x, x_843.z, x_842.y);
        let x_845 : vec4<f32> = u_xlat5;
        let x_848 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_851 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_845.x, x_845.y, x_845.x, x_845.y) * vec4<f32>(x_848.x, x_848.y, x_848.x, x_848.y)) + vec4<f32>(x_851.x, x_851.y, x_851.z, x_851.y));
        let x_854 : vec4<f32> = u_xlat5;
        let x_857 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_860 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_854.x, x_854.y, x_854.x, x_854.y) * vec4<f32>(x_857.x, x_857.y, x_857.x, x_857.y)) + vec4<f32>(x_860.w, x_860.y, x_860.w, x_860.z));
        let x_863 : vec4<f32> = u_xlat5;
        let x_866 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_869 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_863.x, x_863.y, x_863.x, x_863.y) * vec4<f32>(x_866.x, x_866.y, x_866.x, x_866.y)) + vec4<f32>(x_869.x, x_869.w, x_869.z, x_869.w));
        let x_873 : vec4<f32> = u_xlat6;
        let x_875 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_873.x, x_873.x, x_873.x, x_873.y) * vec4<f32>(x_875.z, x_875.w, x_875.y, x_875.z));
        let x_879 : vec4<f32> = u_xlat6;
        let x_881 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_879.y, x_879.y, x_879.z, x_879.z) * x_881);
        let x_884 : f32 = u_xlat6.z;
        let x_886 : f32 = u_xlat11.y;
        u_xlat57 = (x_884 * x_886);
        let x_889 : vec4<f32> = u_xlat9;
        let x_890 : vec2<f32> = vec2<f32>(x_889.x, x_889.y);
        let x_892 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_890.x, x_890.y, x_892);
        let x_899 : vec3<f32> = txVec4;
        let x_901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_899.xy, x_899.z);
        u_xlat1.x = x_901;
        let x_904 : vec4<f32> = u_xlat9;
        let x_905 : vec2<f32> = vec2<f32>(x_904.z, x_904.w);
        let x_907 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_905.x, x_905.y, x_907);
        let x_915 : vec3<f32> = txVec5;
        let x_917 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_915.xy, x_915.z);
        u_xlat59 = x_917;
        let x_918 : f32 = u_xlat59;
        let x_920 : f32 = u_xlat12.y;
        u_xlat59 = (x_918 * x_920);
        let x_923 : f32 = u_xlat12.x;
        let x_925 : f32 = u_xlat1.x;
        let x_927 : f32 = u_xlat59;
        u_xlat1.x = ((x_923 * x_925) + x_927);
        let x_931 : vec2<f32> = u_xlat43;
        let x_933 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_931.x, x_931.y, x_933);
        let x_940 : vec3<f32> = txVec6;
        let x_942 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_940.xy, x_940.z);
        u_xlat59 = x_942;
        let x_944 : f32 = u_xlat12.z;
        let x_945 : f32 = u_xlat59;
        let x_948 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_944 * x_945) + x_948);
        let x_952 : vec4<f32> = u_xlat8;
        let x_953 : vec2<f32> = vec2<f32>(x_952.x, x_952.y);
        let x_955 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_953.x, x_953.y, x_955);
        let x_962 : vec3<f32> = txVec7;
        let x_964 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_962.xy, x_962.z);
        u_xlat59 = x_964;
        let x_966 : f32 = u_xlat12.w;
        let x_967 : f32 = u_xlat59;
        let x_970 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_966 * x_967) + x_970);
        let x_974 : vec4<f32> = u_xlat10;
        let x_975 : vec2<f32> = vec2<f32>(x_974.x, x_974.y);
        let x_977 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_975.x, x_975.y, x_977);
        let x_984 : vec3<f32> = txVec8;
        let x_986 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_984.xy, x_984.z);
        u_xlat59 = x_986;
        let x_988 : f32 = u_xlat13.x;
        let x_989 : f32 = u_xlat59;
        let x_992 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_988 * x_989) + x_992);
        let x_996 : vec4<f32> = u_xlat10;
        let x_997 : vec2<f32> = vec2<f32>(x_996.z, x_996.w);
        let x_999 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_997.x, x_997.y, x_999);
        let x_1006 : vec3<f32> = txVec9;
        let x_1008 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1006.xy, x_1006.z);
        u_xlat59 = x_1008;
        let x_1010 : f32 = u_xlat13.y;
        let x_1011 : f32 = u_xlat59;
        let x_1014 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1010 * x_1011) + x_1014);
        let x_1018 : vec4<f32> = u_xlat8;
        let x_1019 : vec2<f32> = vec2<f32>(x_1018.z, x_1018.w);
        let x_1021 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1019.x, x_1019.y, x_1021);
        let x_1028 : vec3<f32> = txVec10;
        let x_1030 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1028.xy, x_1028.z);
        u_xlat59 = x_1030;
        let x_1032 : f32 = u_xlat13.z;
        let x_1033 : f32 = u_xlat59;
        let x_1036 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1032 * x_1033) + x_1036);
        let x_1040 : vec4<f32> = u_xlat7;
        let x_1041 : vec2<f32> = vec2<f32>(x_1040.x, x_1040.y);
        let x_1043 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1041.x, x_1041.y, x_1043);
        let x_1050 : vec3<f32> = txVec11;
        let x_1052 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1050.xy, x_1050.z);
        u_xlat59 = x_1052;
        let x_1054 : f32 = u_xlat13.w;
        let x_1055 : f32 = u_xlat59;
        let x_1058 : f32 = u_xlat1.x;
        u_xlat1.x = ((x_1054 * x_1055) + x_1058);
        let x_1062 : vec4<f32> = u_xlat7;
        let x_1063 : vec2<f32> = vec2<f32>(x_1062.z, x_1062.w);
        let x_1065 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1063.x, x_1063.y, x_1065);
        let x_1072 : vec3<f32> = txVec12;
        let x_1074 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1072.xy, x_1072.z);
        u_xlat59 = x_1074;
        let x_1075 : f32 = u_xlat57;
        let x_1076 : f32 = u_xlat59;
        let x_1079 : f32 = u_xlat1.x;
        u_xlat19.x = ((x_1075 * x_1076) + x_1079);
      } else {
        let x_1083 : vec4<f32> = u_xlat3;
        let x_1086 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1089 : vec2<f32> = ((vec2<f32>(x_1083.x, x_1083.y) * vec2<f32>(x_1086.z, x_1086.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1090 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1089.x, x_1089.y, x_1090.z, x_1090.w);
        let x_1092 : vec4<f32> = u_xlat5;
        let x_1094 : vec2<f32> = floor(vec2<f32>(x_1092.x, x_1092.y));
        let x_1095 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1094.x, x_1094.y, x_1095.z, x_1095.w);
        let x_1097 : vec4<f32> = u_xlat3;
        let x_1100 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.z, x_1100.w)) + -(vec2<f32>(x_1103.x, x_1103.y)));
        let x_1107 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1107.x, x_1107.x, x_1107.y, x_1107.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1110 : vec4<f32> = u_xlat6;
        let x_1112 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1110.x, x_1110.x, x_1110.z, x_1110.z) * vec4<f32>(x_1112.x, x_1112.x, x_1112.z, x_1112.z));
        let x_1115 : vec4<f32> = u_xlat7;
        let x_1119 : vec2<f32> = (vec2<f32>(x_1115.y, x_1115.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1120 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1120.x, x_1119.x, x_1120.z, x_1119.y);
        let x_1122 : vec4<f32> = u_xlat7;
        let x_1125 : vec2<f32> = u_xlat43;
        let x_1127 : vec2<f32> = ((vec2<f32>(x_1122.x, x_1122.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1125));
        let x_1128 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1127.x, x_1128.y, x_1127.y, x_1128.w);
        let x_1130 : vec2<f32> = u_xlat43;
        let x_1132 : vec2<f32> = (-(x_1130) + vec2<f32>(1.0f, 1.0f));
        let x_1133 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1132.x, x_1132.y, x_1133.z, x_1133.w);
        let x_1135 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1135, vec2<f32>(0.0f, 0.0f));
        let x_1137 : vec2<f32> = u_xlat45;
        let x_1139 : vec2<f32> = u_xlat45;
        let x_1141 : vec4<f32> = u_xlat7;
        let x_1143 : vec2<f32> = ((-(x_1137) * x_1139) + vec2<f32>(x_1141.x, x_1141.y));
        let x_1144 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1143.x, x_1143.y, x_1144.z, x_1144.w);
        let x_1146 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1146, vec2<f32>(0.0f, 0.0f));
        let x_1149 : vec2<f32> = u_xlat45;
        let x_1151 : vec2<f32> = u_xlat45;
        let x_1153 : vec4<f32> = u_xlat6;
        let x_1155 : vec2<f32> = ((-(x_1149) * x_1151) + vec2<f32>(x_1153.y, x_1153.w));
        let x_1156 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1155.x, x_1156.y, x_1155.y);
        let x_1158 : vec4<f32> = u_xlat7;
        let x_1161 : vec2<f32> = (vec2<f32>(x_1158.x, x_1158.y) + vec2<f32>(2.0f, 2.0f));
        let x_1162 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1161.x, x_1161.y, x_1162.z, x_1162.w);
        let x_1164 : vec3<f32> = u_xlat25;
        let x_1166 : vec2<f32> = (vec2<f32>(x_1164.x, x_1164.z) + vec2<f32>(2.0f, 2.0f));
        let x_1167 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1167.x, x_1166.x, x_1167.z, x_1166.y);
        let x_1170 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1170 * 0.081632003f);
        let x_1174 : vec4<f32> = u_xlat6;
        let x_1177 : vec3<f32> = (vec3<f32>(x_1174.z, x_1174.x, x_1174.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1178 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1177.x, x_1177.y, x_1177.z, x_1178.w);
        let x_1180 : vec4<f32> = u_xlat7;
        let x_1183 : vec2<f32> = (vec2<f32>(x_1180.x, x_1180.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1184 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1183.x, x_1183.y, x_1184.z, x_1184.w);
        let x_1187 : f32 = u_xlat10.y;
        u_xlat9.x = x_1187;
        let x_1189 : vec2<f32> = u_xlat43;
        let x_1196 : vec2<f32> = ((vec2<f32>(x_1189.x, x_1189.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1197.x, x_1196.x, x_1197.z, x_1196.y);
        let x_1199 : vec2<f32> = u_xlat43;
        let x_1203 : vec2<f32> = ((vec2<f32>(x_1199.x, x_1199.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1204 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1203.x, x_1204.y, x_1203.y, x_1204.w);
        let x_1207 : f32 = u_xlat6.x;
        u_xlat7.y = x_1207;
        let x_1210 : f32 = u_xlat8.y;
        u_xlat7.w = x_1210;
        let x_1212 : vec4<f32> = u_xlat7;
        let x_1213 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1212 + x_1213);
        let x_1215 : vec2<f32> = u_xlat43;
        let x_1218 : vec2<f32> = ((vec2<f32>(x_1215.y, x_1215.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1219 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1219.x, x_1218.x, x_1219.z, x_1218.y);
        let x_1221 : vec2<f32> = u_xlat43;
        let x_1224 : vec2<f32> = ((vec2<f32>(x_1221.y, x_1221.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1225 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1224.x, x_1225.y, x_1224.y, x_1225.w);
        let x_1228 : f32 = u_xlat6.y;
        u_xlat8.y = x_1228;
        let x_1230 : vec4<f32> = u_xlat8;
        let x_1231 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1230 + x_1231);
        let x_1233 : vec4<f32> = u_xlat7;
        let x_1234 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1233 / x_1234);
        let x_1236 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1236 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1242 : vec4<f32> = u_xlat8;
        let x_1243 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1242 / x_1243);
        let x_1245 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1245 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1247 : vec4<f32> = u_xlat7;
        let x_1250 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1247.w, x_1247.x, x_1247.y, x_1247.z) * vec4<f32>(x_1250.x, x_1250.x, x_1250.x, x_1250.x));
        let x_1253 : vec4<f32> = u_xlat8;
        let x_1256 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1253.x, x_1253.w, x_1253.y, x_1253.z) * vec4<f32>(x_1256.y, x_1256.y, x_1256.y, x_1256.y));
        let x_1259 : vec4<f32> = u_xlat7;
        let x_1260 : vec3<f32> = vec3<f32>(x_1259.y, x_1259.z, x_1259.w);
        let x_1261 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1260.x, x_1261.y, x_1260.y, x_1260.z);
        let x_1264 : f32 = u_xlat8.x;
        u_xlat10.y = x_1264;
        let x_1266 : vec4<f32> = u_xlat5;
        let x_1269 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y) * vec4<f32>(x_1269.x, x_1269.y, x_1269.x, x_1269.y)) + vec4<f32>(x_1272.x, x_1272.y, x_1272.z, x_1272.y));
        let x_1275 : vec4<f32> = u_xlat5;
        let x_1278 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1281 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1275.x, x_1275.y) * vec2<f32>(x_1278.x, x_1278.y)) + vec2<f32>(x_1281.w, x_1281.y));
        let x_1285 : f32 = u_xlat10.y;
        u_xlat7.y = x_1285;
        let x_1288 : f32 = u_xlat8.z;
        u_xlat10.y = x_1288;
        let x_1290 : vec4<f32> = u_xlat5;
        let x_1293 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1290.x, x_1290.y, x_1290.x, x_1290.y) * vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y)) + vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1296.y));
        let x_1299 : vec4<f32> = u_xlat5;
        let x_1302 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat10;
        let x_1307 : vec2<f32> = ((vec2<f32>(x_1299.x, x_1299.y) * vec2<f32>(x_1302.x, x_1302.y)) + vec2<f32>(x_1305.w, x_1305.y));
        let x_1308 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1307.x, x_1307.y, x_1308.z, x_1308.w);
        let x_1311 : f32 = u_xlat10.y;
        u_xlat7.z = x_1311;
        let x_1314 : vec4<f32> = u_xlat5;
        let x_1317 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1314.x, x_1314.y, x_1314.x, x_1314.y) * vec4<f32>(x_1317.x, x_1317.y, x_1317.x, x_1317.y)) + vec4<f32>(x_1320.x, x_1320.y, x_1320.x, x_1320.z));
        let x_1324 : f32 = u_xlat8.w;
        u_xlat10.y = x_1324;
        let x_1327 : vec4<f32> = u_xlat5;
        let x_1330 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1333 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1327.x, x_1327.y, x_1327.x, x_1327.y) * vec4<f32>(x_1330.x, x_1330.y, x_1330.x, x_1330.y)) + vec4<f32>(x_1333.x, x_1333.y, x_1333.z, x_1333.y));
        let x_1337 : vec4<f32> = u_xlat5;
        let x_1340 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1343 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1337.x, x_1337.y) * vec2<f32>(x_1340.x, x_1340.y)) + vec2<f32>(x_1343.w, x_1343.y));
        let x_1347 : f32 = u_xlat10.y;
        u_xlat7.w = x_1347;
        let x_1350 : vec4<f32> = u_xlat5;
        let x_1353 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1356 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1350.x, x_1350.y) * vec2<f32>(x_1353.x, x_1353.y)) + vec2<f32>(x_1356.x, x_1356.w));
        let x_1359 : vec4<f32> = u_xlat10;
        let x_1360 : vec3<f32> = vec3<f32>(x_1359.x, x_1359.z, x_1359.w);
        let x_1361 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1360.x, x_1361.y, x_1360.y, x_1360.z);
        let x_1363 : vec4<f32> = u_xlat5;
        let x_1366 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1369 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1363.x, x_1363.y, x_1363.x, x_1363.y) * vec4<f32>(x_1366.x, x_1366.y, x_1366.x, x_1366.y)) + vec4<f32>(x_1369.x, x_1369.y, x_1369.z, x_1369.y));
        let x_1373 : vec4<f32> = u_xlat5;
        let x_1376 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1379 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1373.x, x_1373.y) * vec2<f32>(x_1376.x, x_1376.y)) + vec2<f32>(x_1379.w, x_1379.y));
        let x_1383 : f32 = u_xlat7.x;
        u_xlat8.x = x_1383;
        let x_1385 : vec4<f32> = u_xlat5;
        let x_1388 : vec4<f32> = x_244.x_MainLightShadowmapSize;
        let x_1391 : vec4<f32> = u_xlat8;
        let x_1393 : vec2<f32> = ((vec2<f32>(x_1385.x, x_1385.y) * vec2<f32>(x_1388.x, x_1388.y)) + vec2<f32>(x_1391.x, x_1391.y));
        let x_1394 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1393.x, x_1393.y, x_1394.z, x_1394.w);
        let x_1397 : vec4<f32> = u_xlat6;
        let x_1399 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1397.x, x_1397.x, x_1397.x, x_1397.x) * x_1399);
        let x_1402 : vec4<f32> = u_xlat6;
        let x_1404 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1402.y, x_1402.y, x_1402.y, x_1402.y) * x_1404);
        let x_1407 : vec4<f32> = u_xlat6;
        let x_1409 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1407.z, x_1407.z, x_1407.z, x_1407.z) * x_1409);
        let x_1411 : vec4<f32> = u_xlat6;
        let x_1413 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1411.w, x_1411.w, x_1411.w, x_1411.w) * x_1413);
        let x_1416 : vec4<f32> = u_xlat11;
        let x_1417 : vec2<f32> = vec2<f32>(x_1416.x, x_1416.y);
        let x_1419 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1417.x, x_1417.y, x_1419);
        let x_1426 : vec3<f32> = txVec13;
        let x_1428 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1426.xy, x_1426.z);
        u_xlat57 = x_1428;
        let x_1430 : vec4<f32> = u_xlat11;
        let x_1431 : vec2<f32> = vec2<f32>(x_1430.z, x_1430.w);
        let x_1433 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1431.x, x_1431.y, x_1433);
        let x_1440 : vec3<f32> = txVec14;
        let x_1442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1440.xy, x_1440.z);
        u_xlat1.x = x_1442;
        let x_1445 : f32 = u_xlat1.x;
        let x_1447 : f32 = u_xlat16.y;
        u_xlat1.x = (x_1445 * x_1447);
        let x_1451 : f32 = u_xlat16.x;
        let x_1452 : f32 = u_xlat57;
        let x_1455 : f32 = u_xlat1.x;
        u_xlat57 = ((x_1451 * x_1452) + x_1455);
        let x_1458 : vec2<f32> = u_xlat43;
        let x_1460 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec15;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1467.xy, x_1467.z);
        u_xlat1.x = x_1469;
        let x_1472 : f32 = u_xlat16.z;
        let x_1474 : f32 = u_xlat1.x;
        let x_1476 : f32 = u_xlat57;
        u_xlat57 = ((x_1472 * x_1474) + x_1476);
        let x_1479 : vec4<f32> = u_xlat14;
        let x_1480 : vec2<f32> = vec2<f32>(x_1479.x, x_1479.y);
        let x_1482 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1480.x, x_1480.y, x_1482);
        let x_1489 : vec3<f32> = txVec16;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1489.xy, x_1489.z);
        u_xlat1.x = x_1491;
        let x_1494 : f32 = u_xlat16.w;
        let x_1496 : f32 = u_xlat1.x;
        let x_1498 : f32 = u_xlat57;
        u_xlat57 = ((x_1494 * x_1496) + x_1498);
        let x_1501 : vec4<f32> = u_xlat12;
        let x_1502 : vec2<f32> = vec2<f32>(x_1501.x, x_1501.y);
        let x_1504 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1502.x, x_1502.y, x_1504);
        let x_1511 : vec3<f32> = txVec17;
        let x_1513 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1511.xy, x_1511.z);
        u_xlat1.x = x_1513;
        let x_1516 : f32 = u_xlat17.x;
        let x_1518 : f32 = u_xlat1.x;
        let x_1520 : f32 = u_xlat57;
        u_xlat57 = ((x_1516 * x_1518) + x_1520);
        let x_1523 : vec4<f32> = u_xlat12;
        let x_1524 : vec2<f32> = vec2<f32>(x_1523.z, x_1523.w);
        let x_1526 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1524.x, x_1524.y, x_1526);
        let x_1533 : vec3<f32> = txVec18;
        let x_1535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1533.xy, x_1533.z);
        u_xlat1.x = x_1535;
        let x_1538 : f32 = u_xlat17.y;
        let x_1540 : f32 = u_xlat1.x;
        let x_1542 : f32 = u_xlat57;
        u_xlat57 = ((x_1538 * x_1540) + x_1542);
        let x_1545 : vec4<f32> = u_xlat13;
        let x_1546 : vec2<f32> = vec2<f32>(x_1545.x, x_1545.y);
        let x_1548 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1546.x, x_1546.y, x_1548);
        let x_1555 : vec3<f32> = txVec19;
        let x_1557 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1555.xy, x_1555.z);
        u_xlat1.x = x_1557;
        let x_1560 : f32 = u_xlat17.z;
        let x_1562 : f32 = u_xlat1.x;
        let x_1564 : f32 = u_xlat57;
        u_xlat57 = ((x_1560 * x_1562) + x_1564);
        let x_1567 : vec4<f32> = u_xlat14;
        let x_1568 : vec2<f32> = vec2<f32>(x_1567.z, x_1567.w);
        let x_1570 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1568.x, x_1568.y, x_1570);
        let x_1577 : vec3<f32> = txVec20;
        let x_1579 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1577.xy, x_1577.z);
        u_xlat1.x = x_1579;
        let x_1582 : f32 = u_xlat17.w;
        let x_1584 : f32 = u_xlat1.x;
        let x_1586 : f32 = u_xlat57;
        u_xlat57 = ((x_1582 * x_1584) + x_1586);
        let x_1589 : vec4<f32> = u_xlat15;
        let x_1590 : vec2<f32> = vec2<f32>(x_1589.x, x_1589.y);
        let x_1592 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1590.x, x_1590.y, x_1592);
        let x_1599 : vec3<f32> = txVec21;
        let x_1601 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1599.xy, x_1599.z);
        u_xlat1.x = x_1601;
        let x_1604 : f32 = u_xlat18.x;
        let x_1606 : f32 = u_xlat1.x;
        let x_1608 : f32 = u_xlat57;
        u_xlat57 = ((x_1604 * x_1606) + x_1608);
        let x_1611 : vec4<f32> = u_xlat15;
        let x_1612 : vec2<f32> = vec2<f32>(x_1611.z, x_1611.w);
        let x_1614 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1612.x, x_1612.y, x_1614);
        let x_1621 : vec3<f32> = txVec22;
        let x_1623 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1621.xy, x_1621.z);
        u_xlat1.x = x_1623;
        let x_1626 : f32 = u_xlat18.y;
        let x_1628 : f32 = u_xlat1.x;
        let x_1630 : f32 = u_xlat57;
        u_xlat57 = ((x_1626 * x_1628) + x_1630);
        let x_1633 : vec2<f32> = u_xlat26;
        let x_1635 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1633.x, x_1633.y, x_1635);
        let x_1642 : vec3<f32> = txVec23;
        let x_1644 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1642.xy, x_1642.z);
        u_xlat1.x = x_1644;
        let x_1647 : f32 = u_xlat18.z;
        let x_1649 : f32 = u_xlat1.x;
        let x_1651 : f32 = u_xlat57;
        u_xlat57 = ((x_1647 * x_1649) + x_1651);
        let x_1654 : vec2<f32> = u_xlat51;
        let x_1656 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1654.x, x_1654.y, x_1656);
        let x_1663 : vec3<f32> = txVec24;
        let x_1665 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1663.xy, x_1663.z);
        u_xlat1.x = x_1665;
        let x_1668 : f32 = u_xlat18.w;
        let x_1670 : f32 = u_xlat1.x;
        let x_1672 : f32 = u_xlat57;
        u_xlat57 = ((x_1668 * x_1670) + x_1672);
        let x_1675 : vec4<f32> = u_xlat10;
        let x_1676 : vec2<f32> = vec2<f32>(x_1675.x, x_1675.y);
        let x_1678 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1676.x, x_1676.y, x_1678);
        let x_1685 : vec3<f32> = txVec25;
        let x_1687 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1685.xy, x_1685.z);
        u_xlat1.x = x_1687;
        let x_1690 : f32 = u_xlat6.x;
        let x_1692 : f32 = u_xlat1.x;
        let x_1694 : f32 = u_xlat57;
        u_xlat57 = ((x_1690 * x_1692) + x_1694);
        let x_1697 : vec4<f32> = u_xlat10;
        let x_1698 : vec2<f32> = vec2<f32>(x_1697.z, x_1697.w);
        let x_1700 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1698.x, x_1698.y, x_1700);
        let x_1707 : vec3<f32> = txVec26;
        let x_1709 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1707.xy, x_1707.z);
        u_xlat1.x = x_1709;
        let x_1712 : f32 = u_xlat6.y;
        let x_1714 : f32 = u_xlat1.x;
        let x_1716 : f32 = u_xlat57;
        u_xlat57 = ((x_1712 * x_1714) + x_1716);
        let x_1719 : vec2<f32> = u_xlat46;
        let x_1721 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1719.x, x_1719.y, x_1721);
        let x_1728 : vec3<f32> = txVec27;
        let x_1730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1728.xy, x_1728.z);
        u_xlat1.x = x_1730;
        let x_1733 : f32 = u_xlat6.z;
        let x_1735 : f32 = u_xlat1.x;
        let x_1737 : f32 = u_xlat57;
        u_xlat57 = ((x_1733 * x_1735) + x_1737);
        let x_1740 : vec4<f32> = u_xlat5;
        let x_1741 : vec2<f32> = vec2<f32>(x_1740.x, x_1740.y);
        let x_1743 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1741.x, x_1741.y, x_1743);
        let x_1750 : vec3<f32> = txVec28;
        let x_1752 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1750.xy, x_1750.z);
        u_xlat1.x = x_1752;
        let x_1755 : f32 = u_xlat6.w;
        let x_1757 : f32 = u_xlat1.x;
        let x_1759 : f32 = u_xlat57;
        u_xlat19.x = ((x_1755 * x_1757) + x_1759);
      }
    }
  } else {
    let x_1764 : vec4<f32> = u_xlat3;
    let x_1765 : vec2<f32> = vec2<f32>(x_1764.x, x_1764.y);
    let x_1767 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1765.x, x_1765.y, x_1767);
    let x_1774 : vec3<f32> = txVec29;
    let x_1776 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1774.xy, x_1774.z);
    u_xlat19.x = x_1776;
  }
  let x_1779 : f32 = x_244.x_MainLightShadowParams.x;
  u_xlat57 = (-(x_1779) + 1.0f);
  let x_1783 : f32 = u_xlat19.x;
  let x_1785 : f32 = x_244.x_MainLightShadowParams.x;
  let x_1787 : f32 = u_xlat57;
  u_xlat19.x = ((x_1783 * x_1785) + x_1787);
  let x_1791 : f32 = u_xlat3.z;
  u_xlatb57 = (0.0f >= x_1791);
  let x_1795 : f32 = u_xlat3.z;
  u_xlatb1 = (x_1795 >= 1.0f);
  let x_1797 : bool = u_xlatb57;
  let x_1798 : bool = u_xlatb1;
  u_xlatb57 = (x_1797 | x_1798);
  let x_1800 : bool = u_xlatb57;
  if (x_1800) {
    x_1801 = 1.0f;
  } else {
    let x_1806 : f32 = u_xlat19.x;
    x_1801 = x_1806;
  }
  let x_1807 : f32 = x_1801;
  u_xlat19.x = x_1807;
  let x_1809 : vec3<f32> = vs_TEXCOORD1;
  let x_1812 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1814 : vec3<f32> = (x_1809 + -(x_1812));
  let x_1815 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1814.x, x_1814.y, x_1814.z, x_1815.w);
  let x_1817 : vec4<f32> = u_xlat3;
  let x_1819 : vec4<f32> = u_xlat3;
  u_xlat57 = dot(vec3<f32>(x_1817.x, x_1817.y, x_1817.z), vec3<f32>(x_1819.x, x_1819.y, x_1819.z));
  let x_1822 : f32 = u_xlat57;
  let x_1824 : f32 = x_244.x_MainLightShadowParams.z;
  let x_1827 : f32 = x_244.x_MainLightShadowParams.w;
  u_xlat57 = ((x_1822 * x_1824) + x_1827);
  let x_1829 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1829, 0.0f, 1.0f);
  let x_1832 : f32 = u_xlat19.x;
  u_xlat1.x = (-(x_1832) + 1.0f);
  let x_1836 : f32 = u_xlat57;
  let x_1838 : f32 = u_xlat1.x;
  let x_1841 : f32 = u_xlat19.x;
  u_xlat19.x = ((x_1836 * x_1838) + x_1841);
  let x_1850 : f32 = x_1848.x_MainLightCookieTextureFormat;
  u_xlatb57 = !((x_1850 == -1.0f));
  let x_1852 : bool = u_xlatb57;
  if (x_1852) {
    let x_1855 : vec3<f32> = vs_TEXCOORD1;
    let x_1858 : vec4<f32> = x_1848.x_MainLightWorldToLight[1i];
    let x_1860 : vec2<f32> = (vec2<f32>(x_1855.y, x_1855.y) * vec2<f32>(x_1858.x, x_1858.y));
    let x_1861 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1860.x, x_1860.y, x_1861.z, x_1861.w);
    let x_1864 : vec4<f32> = x_1848.x_MainLightWorldToLight[0i];
    let x_1866 : vec3<f32> = vs_TEXCOORD1;
    let x_1869 : vec4<f32> = u_xlat3;
    let x_1871 : vec2<f32> = ((vec2<f32>(x_1864.x, x_1864.y) * vec2<f32>(x_1866.x, x_1866.x)) + vec2<f32>(x_1869.x, x_1869.y));
    let x_1872 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1871.x, x_1871.y, x_1872.z, x_1872.w);
    let x_1875 : vec4<f32> = x_1848.x_MainLightWorldToLight[2i];
    let x_1877 : vec3<f32> = vs_TEXCOORD1;
    let x_1880 : vec4<f32> = u_xlat3;
    let x_1882 : vec2<f32> = ((vec2<f32>(x_1875.x, x_1875.y) * vec2<f32>(x_1877.z, x_1877.z)) + vec2<f32>(x_1880.x, x_1880.y));
    let x_1883 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1882.x, x_1882.y, x_1883.z, x_1883.w);
    let x_1885 : vec4<f32> = u_xlat3;
    let x_1888 : vec4<f32> = x_1848.x_MainLightWorldToLight[3i];
    let x_1890 : vec2<f32> = (vec2<f32>(x_1885.x, x_1885.y) + vec2<f32>(x_1888.x, x_1888.y));
    let x_1891 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1890.x, x_1890.y, x_1891.z, x_1891.w);
    let x_1893 : vec4<f32> = u_xlat3;
    let x_1896 : vec2<f32> = ((vec2<f32>(x_1893.x, x_1893.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1897 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1896.x, x_1896.y, x_1897.z, x_1897.w);
    let x_1904 : vec4<f32> = u_xlat3;
    let x_1907 : f32 = x_43.x_GlobalMipBias.x;
    let x_1908 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1904.x, x_1904.y), x_1907);
    u_xlat3 = x_1908;
    let x_1913 : f32 = x_1848.x_MainLightCookieTextureFormat;
    let x_1915 : f32 = x_1848.x_MainLightCookieTextureFormat;
    let x_1917 : f32 = x_1848.x_MainLightCookieTextureFormat;
    let x_1919 : f32 = x_1848.x_MainLightCookieTextureFormat;
    let x_1920 : vec4<f32> = vec4<f32>(x_1913, x_1915, x_1917, x_1919);
    let x_1927 : vec4<bool> = (vec4<f32>(x_1920.x, x_1920.y, x_1920.z, x_1920.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_1927.x, x_1927.y);
    let x_1930 : bool = u_xlatb5.y;
    if (x_1930) {
      let x_1935 : f32 = u_xlat3.w;
      x_1931 = x_1935;
    } else {
      let x_1938 : f32 = u_xlat3.x;
      x_1931 = x_1938;
    }
    let x_1939 : f32 = x_1931;
    u_xlat57 = x_1939;
    let x_1941 : bool = u_xlatb5.x;
    if (x_1941) {
      let x_1945 : vec4<f32> = u_xlat3;
      x_1942 = vec3<f32>(x_1945.x, x_1945.y, x_1945.z);
    } else {
      let x_1948 : f32 = u_xlat57;
      x_1942 = vec3<f32>(x_1948, x_1948, x_1948);
    }
    let x_1950 : vec3<f32> = x_1942;
    let x_1951 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_1950.x, x_1950.y, x_1950.z, x_1951.w);
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
  }
  let x_1957 : vec4<f32> = u_xlat3;
  let x_1960 : vec4<f32> = x_43.x_MainLightColor;
  let x_1962 : vec3<f32> = (vec3<f32>(x_1957.x, x_1957.y, x_1957.z) * vec3<f32>(x_1960.x, x_1960.y, x_1960.z));
  let x_1963 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1963.w);
  let x_1966 : f32 = u_xlat19.x;
  let x_1968 : f32 = x_184.unity_LightData.z;
  u_xlat19.x = (x_1966 * x_1968);
  let x_1971 : vec3<f32> = u_xlat19;
  let x_1973 : vec4<f32> = u_xlat3;
  let x_1975 : vec3<f32> = (vec3<f32>(x_1971.x, x_1971.x, x_1971.x) * vec3<f32>(x_1973.x, x_1973.y, x_1973.z));
  let x_1976 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1975.x, x_1975.y, x_1975.z, x_1976.w);
  let x_1978 : vec4<f32> = u_xlat2;
  let x_1981 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat19.x = dot(vec3<f32>(x_1978.x, x_1978.y, x_1978.z), vec3<f32>(x_1981.x, x_1981.y, x_1981.z));
  let x_1986 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_1986, 0.0f, 1.0f);
  let x_1989 : vec3<f32> = u_xlat19;
  let x_1991 : vec4<f32> = u_xlat3;
  let x_1993 : vec3<f32> = (vec3<f32>(x_1989.x, x_1989.x, x_1989.x) * vec3<f32>(x_1991.x, x_1991.y, x_1991.z));
  let x_1994 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
  let x_1996 : vec4<f32> = u_xlat1;
  let x_1998 : vec4<f32> = u_xlat3;
  let x_2000 : vec3<f32> = (vec3<f32>(x_1996.y, x_1996.z, x_1996.w) * vec3<f32>(x_1998.x, x_1998.y, x_1998.z));
  let x_2001 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2000.x, x_2000.y, x_2000.z, x_2001.w);
  let x_2003 : vec4<f32> = u_xlat0;
  let x_2005 : vec4<f32> = u_xlat3;
  let x_2007 : vec3<f32> = (vec3<f32>(x_2003.x, x_2003.x, x_2003.x) * vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
  let x_2008 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2007.x, x_2007.y, x_2007.z, x_2008.w);
  let x_2011 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_2013 : f32 = x_184.unity_LightData.y;
  u_xlat19.x = min(x_2011, x_2013);
  let x_2017 : f32 = u_xlat19.x;
  u_xlatu19 = bitcast<u32>(i32(x_2017));
  let x_2021 : f32 = x_1848.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2023 : f32 = x_1848.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2025 : f32 = x_1848.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2027 : f32 = x_1848.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2028 : vec4<f32> = vec4<f32>(x_2021, x_2023, x_2025, x_2027);
  let x_2034 : vec4<bool> = (vec4<f32>(x_2028.x, x_2028.y, x_2028.z, x_2028.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_2034.x, x_2034.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2045 : u32 = u_xlatu_loop_1;
    let x_2046 : u32 = u_xlatu19;
    if ((x_2045 < x_2046)) {
    } else {
      break;
    }
    let x_2049 : u32 = u_xlatu_loop_1;
    u_xlatu1 = (x_2049 >> 2u);
    let x_2052 : u32 = u_xlatu_loop_1;
    u_xlati59 = bitcast<i32>((x_2052 & 3u));
    let x_2055 : u32 = u_xlatu1;
    let x_2058 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_2055)];
    let x_2068 : i32 = u_xlati59;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2073 : vec4<u32> = indexable[x_2068];
    u_xlat1.x = dot(x_2058, bitcast<vec4<f32>>(x_2073));
    let x_2078 : f32 = u_xlat1.x;
    u_xlatu1 = bitcast<u32>(i32(x_2078));
    let x_2081 : vec3<f32> = vs_TEXCOORD1;
    let x_2093 : u32 = u_xlatu1;
    let x_2096 : vec4<f32> = x_2092.x_AdditionalLightsPosition[bitcast<i32>(x_2093)];
    let x_2099 : u32 = u_xlatu1;
    let x_2102 : vec4<f32> = x_2092.x_AdditionalLightsPosition[bitcast<i32>(x_2099)];
    let x_2104 : vec3<f32> = ((-(x_2081) * vec3<f32>(x_2096.w, x_2096.w, x_2096.w)) + vec3<f32>(x_2102.x, x_2102.y, x_2102.z));
    let x_2105 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2104.x, x_2104.y, x_2104.z, x_2105.w);
    let x_2107 : vec4<f32> = u_xlat7;
    let x_2109 : vec4<f32> = u_xlat7;
    u_xlat59 = dot(vec3<f32>(x_2107.x, x_2107.y, x_2107.z), vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
    let x_2112 : f32 = u_xlat59;
    u_xlat59 = max(x_2112, 6.10351562e-05f);
    let x_2116 : f32 = u_xlat59;
    u_xlat60 = inverseSqrt(x_2116);
    let x_2118 : f32 = u_xlat60;
    let x_2120 : vec4<f32> = u_xlat7;
    let x_2122 : vec3<f32> = (vec3<f32>(x_2118, x_2118, x_2118) * vec3<f32>(x_2120.x, x_2120.y, x_2120.z));
    let x_2123 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2122.x, x_2122.y, x_2122.z, x_2123.w);
    let x_2125 : f32 = u_xlat59;
    u_xlat60 = (1.0f / x_2125);
    let x_2127 : f32 = u_xlat59;
    let x_2128 : u32 = u_xlatu1;
    let x_2131 : f32 = x_2092.x_AdditionalLightsAttenuation[bitcast<i32>(x_2128)].x;
    u_xlat59 = (x_2127 * x_2131);
    let x_2133 : f32 = u_xlat59;
    let x_2135 : f32 = u_xlat59;
    u_xlat59 = ((-(x_2133) * x_2135) + 1.0f);
    let x_2138 : f32 = u_xlat59;
    u_xlat59 = max(x_2138, 0.0f);
    let x_2140 : f32 = u_xlat59;
    let x_2141 : f32 = u_xlat59;
    u_xlat59 = (x_2140 * x_2141);
    let x_2143 : f32 = u_xlat59;
    let x_2144 : f32 = u_xlat60;
    u_xlat59 = (x_2143 * x_2144);
    let x_2146 : u32 = u_xlatu1;
    let x_2149 : vec4<f32> = x_2092.x_AdditionalLightsSpotDir[bitcast<i32>(x_2146)];
    let x_2151 : vec4<f32> = u_xlat7;
    u_xlat60 = dot(vec3<f32>(x_2149.x, x_2149.y, x_2149.z), vec3<f32>(x_2151.x, x_2151.y, x_2151.z));
    let x_2154 : f32 = u_xlat60;
    let x_2155 : u32 = u_xlatu1;
    let x_2158 : f32 = x_2092.x_AdditionalLightsAttenuation[bitcast<i32>(x_2155)].z;
    let x_2160 : u32 = u_xlatu1;
    let x_2163 : f32 = x_2092.x_AdditionalLightsAttenuation[bitcast<i32>(x_2160)].w;
    u_xlat60 = ((x_2154 * x_2158) + x_2163);
    let x_2165 : f32 = u_xlat60;
    u_xlat60 = clamp(x_2165, 0.0f, 1.0f);
    let x_2167 : f32 = u_xlat60;
    let x_2168 : f32 = u_xlat60;
    u_xlat60 = (x_2167 * x_2168);
    let x_2170 : f32 = u_xlat59;
    let x_2171 : f32 = u_xlat60;
    u_xlat59 = (x_2170 * x_2171);
    let x_2174 : u32 = u_xlatu1;
    u_xlatu60 = (x_2174 >> 5u);
    let x_2177 : u32 = u_xlatu1;
    u_xlati61 = (1i << bitcast<u32>((bitcast<i32>(x_2177) & 31i)));
    let x_2183 : i32 = u_xlati61;
    let x_2185 : u32 = u_xlatu60;
    let x_2188 : f32 = x_1848.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2185)].el;
    u_xlati60 = bitcast<i32>((bitcast<u32>(x_2183) & bitcast<u32>(x_2188)));
    let x_2192 : i32 = u_xlati60;
    if ((x_2192 != 0i)) {
      let x_2202 : u32 = u_xlatu1;
      let x_2205 : f32 = x_2201.x_AdditionalLightsLightTypes[bitcast<i32>(x_2202)].el;
      u_xlati60 = i32(x_2205);
      let x_2207 : i32 = u_xlati60;
      u_xlati61 = select(1i, 0i, (x_2207 != 0i));
      let x_2211 : u32 = u_xlatu1;
      u_xlati43 = (bitcast<i32>(x_2211) << bitcast<u32>(2i));
      let x_2214 : i32 = u_xlati61;
      if ((x_2214 != 0i)) {
        let x_2218 : vec3<f32> = vs_TEXCOORD1;
        let x_2220 : i32 = u_xlati43;
        let x_2223 : i32 = u_xlati43;
        let x_2227 : vec4<f32> = x_2201.x_AdditionalLightsWorldToLights[((x_2220 + 1i) / 4i)][((x_2223 + 1i) % 4i)];
        let x_2229 : vec3<f32> = (vec3<f32>(x_2218.y, x_2218.y, x_2218.y) * vec3<f32>(x_2227.x, x_2227.y, x_2227.w));
        let x_2230 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2229.x, x_2229.y, x_2229.z, x_2230.w);
        let x_2232 : i32 = u_xlati43;
        let x_2234 : i32 = u_xlati43;
        let x_2237 : vec4<f32> = x_2201.x_AdditionalLightsWorldToLights[(x_2232 / 4i)][(x_2234 % 4i)];
        let x_2239 : vec3<f32> = vs_TEXCOORD1;
        let x_2242 : vec4<f32> = u_xlat8;
        let x_2244 : vec3<f32> = ((vec3<f32>(x_2237.x, x_2237.y, x_2237.w) * vec3<f32>(x_2239.x, x_2239.x, x_2239.x)) + vec3<f32>(x_2242.x, x_2242.y, x_2242.z));
        let x_2245 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2244.x, x_2244.y, x_2244.z, x_2245.w);
        let x_2247 : i32 = u_xlati43;
        let x_2250 : i32 = u_xlati43;
        let x_2254 : vec4<f32> = x_2201.x_AdditionalLightsWorldToLights[((x_2247 + 2i) / 4i)][((x_2250 + 2i) % 4i)];
        let x_2256 : vec3<f32> = vs_TEXCOORD1;
        let x_2259 : vec4<f32> = u_xlat8;
        let x_2261 : vec3<f32> = ((vec3<f32>(x_2254.x, x_2254.y, x_2254.w) * vec3<f32>(x_2256.z, x_2256.z, x_2256.z)) + vec3<f32>(x_2259.x, x_2259.y, x_2259.z));
        let x_2262 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2261.x, x_2261.y, x_2261.z, x_2262.w);
        let x_2264 : vec4<f32> = u_xlat8;
        let x_2266 : i32 = u_xlati43;
        let x_2269 : i32 = u_xlati43;
        let x_2273 : vec4<f32> = x_2201.x_AdditionalLightsWorldToLights[((x_2266 + 3i) / 4i)][((x_2269 + 3i) % 4i)];
        let x_2275 : vec3<f32> = (vec3<f32>(x_2264.x, x_2264.y, x_2264.z) + vec3<f32>(x_2273.x, x_2273.y, x_2273.w));
        let x_2276 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2275.x, x_2275.y, x_2275.z, x_2276.w);
        let x_2278 : vec4<f32> = u_xlat8;
        let x_2280 : vec4<f32> = u_xlat8;
        let x_2282 : vec2<f32> = (vec2<f32>(x_2278.x, x_2278.y) / vec2<f32>(x_2280.z, x_2280.z));
        let x_2283 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2282.x, x_2282.y, x_2283.z, x_2283.w);
        let x_2285 : vec4<f32> = u_xlat8;
        let x_2288 : vec2<f32> = ((vec2<f32>(x_2285.x, x_2285.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2289 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2288.x, x_2288.y, x_2289.z, x_2289.w);
        let x_2291 : vec4<f32> = u_xlat8;
        let x_2295 : vec2<f32> = clamp(vec2<f32>(x_2291.x, x_2291.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2296 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2295.x, x_2295.y, x_2296.z, x_2296.w);
        let x_2298 : u32 = u_xlatu1;
        let x_2301 : vec4<f32> = x_2201.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2298)];
        let x_2303 : vec4<f32> = u_xlat8;
        let x_2306 : u32 = u_xlatu1;
        let x_2309 : vec4<f32> = x_2201.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2306)];
        let x_2311 : vec2<f32> = ((vec2<f32>(x_2301.x, x_2301.y) * vec2<f32>(x_2303.x, x_2303.y)) + vec2<f32>(x_2309.z, x_2309.w));
        let x_2312 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_2311.x, x_2311.y, x_2312.z, x_2312.w);
      } else {
        let x_2316 : i32 = u_xlati60;
        u_xlatb60 = (x_2316 == 1i);
        let x_2318 : bool = u_xlatb60;
        u_xlati60 = select(0i, 1i, x_2318);
        let x_2320 : i32 = u_xlati60;
        if ((x_2320 != 0i)) {
          let x_2324 : vec3<f32> = vs_TEXCOORD1;
          let x_2326 : i32 = u_xlati43;
          let x_2329 : i32 = u_xlati43;
          let x_2333 : vec4<f32> = x_2201.x_AdditionalLightsWorldToLights[((x_2326 + 1i) / 4i)][((x_2329 + 1i) % 4i)];
          u_xlat46 = (vec2<f32>(x_2324.y, x_2324.y) * vec2<f32>(x_2333.x, x_2333.y));
          let x_2336 : i32 = u_xlati43;
          let x_2338 : i32 = u_xlati43;
          let x_2341 : vec4<f32> = x_2201.x_AdditionalLightsWorldToLights[(x_2336 / 4i)][(x_2338 % 4i)];
          let x_2343 : vec3<f32> = vs_TEXCOORD1;
          let x_2346 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2341.x, x_2341.y) * vec2<f32>(x_2343.x, x_2343.x)) + x_2346);
          let x_2348 : i32 = u_xlati43;
          let x_2351 : i32 = u_xlati43;
          let x_2355 : vec4<f32> = x_2201.x_AdditionalLightsWorldToLights[((x_2348 + 2i) / 4i)][((x_2351 + 2i) % 4i)];
          let x_2357 : vec3<f32> = vs_TEXCOORD1;
          let x_2360 : vec2<f32> = u_xlat46;
          u_xlat46 = ((vec2<f32>(x_2355.x, x_2355.y) * vec2<f32>(x_2357.z, x_2357.z)) + x_2360);
          let x_2362 : vec2<f32> = u_xlat46;
          let x_2363 : i32 = u_xlati43;
          let x_2366 : i32 = u_xlati43;
          let x_2370 : vec4<f32> = x_2201.x_AdditionalLightsWorldToLights[((x_2363 + 3i) / 4i)][((x_2366 + 3i) % 4i)];
          u_xlat46 = (x_2362 + vec2<f32>(x_2370.x, x_2370.y));
          let x_2373 : vec2<f32> = u_xlat46;
          u_xlat46 = ((x_2373 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2376 : vec2<f32> = u_xlat46;
          u_xlat46 = fract(x_2376);
          let x_2378 : u32 = u_xlatu1;
          let x_2381 : vec4<f32> = x_2201.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2378)];
          let x_2383 : vec2<f32> = u_xlat46;
          let x_2385 : u32 = u_xlatu1;
          let x_2388 : vec4<f32> = x_2201.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2385)];
          let x_2390 : vec2<f32> = ((vec2<f32>(x_2381.x, x_2381.y) * x_2383) + vec2<f32>(x_2388.z, x_2388.w));
          let x_2391 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2390.x, x_2390.y, x_2391.z, x_2391.w);
        } else {
          let x_2394 : vec3<f32> = vs_TEXCOORD1;
          let x_2396 : i32 = u_xlati43;
          let x_2399 : i32 = u_xlati43;
          let x_2403 : vec4<f32> = x_2201.x_AdditionalLightsWorldToLights[((x_2396 + 1i) / 4i)][((x_2399 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2394.y, x_2394.y, x_2394.y, x_2394.y) * x_2403);
          let x_2405 : i32 = u_xlati43;
          let x_2407 : i32 = u_xlati43;
          let x_2410 : vec4<f32> = x_2201.x_AdditionalLightsWorldToLights[(x_2405 / 4i)][(x_2407 % 4i)];
          let x_2411 : vec3<f32> = vs_TEXCOORD1;
          let x_2414 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2410 * vec4<f32>(x_2411.x, x_2411.x, x_2411.x, x_2411.x)) + x_2414);
          let x_2416 : i32 = u_xlati43;
          let x_2419 : i32 = u_xlati43;
          let x_2423 : vec4<f32> = x_2201.x_AdditionalLightsWorldToLights[((x_2416 + 2i) / 4i)][((x_2419 + 2i) % 4i)];
          let x_2424 : vec3<f32> = vs_TEXCOORD1;
          let x_2427 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2423 * vec4<f32>(x_2424.z, x_2424.z, x_2424.z, x_2424.z)) + x_2427);
          let x_2429 : vec4<f32> = u_xlat9;
          let x_2430 : i32 = u_xlati43;
          let x_2433 : i32 = u_xlati43;
          let x_2437 : vec4<f32> = x_2201.x_AdditionalLightsWorldToLights[((x_2430 + 3i) / 4i)][((x_2433 + 3i) % 4i)];
          u_xlat9 = (x_2429 + x_2437);
          let x_2439 : vec4<f32> = u_xlat9;
          let x_2441 : vec4<f32> = u_xlat9;
          let x_2443 : vec3<f32> = (vec3<f32>(x_2439.x, x_2439.y, x_2439.z) / vec3<f32>(x_2441.w, x_2441.w, x_2441.w));
          let x_2444 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2443.x, x_2443.y, x_2443.z, x_2444.w);
          let x_2446 : vec4<f32> = u_xlat9;
          let x_2448 : vec4<f32> = u_xlat9;
          u_xlat60 = dot(vec3<f32>(x_2446.x, x_2446.y, x_2446.z), vec3<f32>(x_2448.x, x_2448.y, x_2448.z));
          let x_2451 : f32 = u_xlat60;
          u_xlat60 = inverseSqrt(x_2451);
          let x_2453 : f32 = u_xlat60;
          let x_2455 : vec4<f32> = u_xlat9;
          let x_2457 : vec3<f32> = (vec3<f32>(x_2453, x_2453, x_2453) * vec3<f32>(x_2455.x, x_2455.y, x_2455.z));
          let x_2458 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2457.x, x_2457.y, x_2457.z, x_2458.w);
          let x_2460 : vec4<f32> = u_xlat9;
          u_xlat60 = dot(abs(vec3<f32>(x_2460.x, x_2460.y, x_2460.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2465 : f32 = u_xlat60;
          u_xlat60 = max(x_2465, 0.000001f);
          let x_2468 : f32 = u_xlat60;
          u_xlat60 = (1.0f / x_2468);
          let x_2470 : f32 = u_xlat60;
          let x_2472 : vec4<f32> = u_xlat9;
          let x_2474 : vec3<f32> = (vec3<f32>(x_2470, x_2470, x_2470) * vec3<f32>(x_2472.z, x_2472.x, x_2472.y));
          let x_2475 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2474.x, x_2474.y, x_2474.z, x_2475.w);
          let x_2478 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2478);
          let x_2482 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2482, 0.0f, 1.0f);
          let x_2486 : vec4<f32> = u_xlat10;
          let x_2489 : vec4<bool> = (vec4<f32>(x_2486.y, x_2486.z, x_2486.y, x_2486.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb43 = vec2<bool>(x_2489.x, x_2489.y);
          let x_2492 : bool = u_xlatb43.x;
          if (x_2492) {
            let x_2497 : f32 = u_xlat10.x;
            x_2493 = x_2497;
          } else {
            let x_2500 : f32 = u_xlat10.x;
            x_2493 = -(x_2500);
          }
          let x_2502 : f32 = x_2493;
          u_xlat43.x = x_2502;
          let x_2505 : bool = u_xlatb43.y;
          if (x_2505) {
            let x_2510 : f32 = u_xlat10.x;
            x_2506 = x_2510;
          } else {
            let x_2513 : f32 = u_xlat10.x;
            x_2506 = -(x_2513);
          }
          let x_2515 : f32 = x_2506;
          u_xlat43.y = x_2515;
          let x_2517 : vec4<f32> = u_xlat9;
          let x_2519 : f32 = u_xlat60;
          let x_2522 : vec2<f32> = u_xlat43;
          u_xlat43 = ((vec2<f32>(x_2517.x, x_2517.y) * vec2<f32>(x_2519, x_2519)) + x_2522);
          let x_2524 : vec2<f32> = u_xlat43;
          u_xlat43 = ((x_2524 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2527 : vec2<f32> = u_xlat43;
          u_xlat43 = clamp(x_2527, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2531 : u32 = u_xlatu1;
          let x_2534 : vec4<f32> = x_2201.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2531)];
          let x_2536 : vec2<f32> = u_xlat43;
          let x_2538 : u32 = u_xlatu1;
          let x_2541 : vec4<f32> = x_2201.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2538)];
          let x_2543 : vec2<f32> = ((vec2<f32>(x_2534.x, x_2534.y) * x_2536) + vec2<f32>(x_2541.z, x_2541.w));
          let x_2544 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2543.x, x_2543.y, x_2544.z, x_2544.w);
        }
      }
      let x_2551 : vec4<f32> = u_xlat8;
      let x_2554 : f32 = x_43.x_GlobalMipBias.x;
      let x_2555 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2551.x, x_2551.y), x_2554);
      u_xlat8 = x_2555;
      let x_2557 : bool = u_xlatb5.y;
      if (x_2557) {
        let x_2562 : f32 = u_xlat8.w;
        x_2558 = x_2562;
      } else {
        let x_2565 : f32 = u_xlat8.x;
        x_2558 = x_2565;
      }
      let x_2566 : f32 = x_2558;
      u_xlat60 = x_2566;
      let x_2568 : bool = u_xlatb5.x;
      if (x_2568) {
        let x_2572 : vec4<f32> = u_xlat8;
        x_2569 = vec3<f32>(x_2572.x, x_2572.y, x_2572.z);
      } else {
        let x_2575 : f32 = u_xlat60;
        x_2569 = vec3<f32>(x_2575, x_2575, x_2575);
      }
      let x_2577 : vec3<f32> = x_2569;
      let x_2578 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2577.x, x_2577.y, x_2577.z, x_2578.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2584 : vec4<f32> = u_xlat8;
    let x_2586 : u32 = u_xlatu1;
    let x_2589 : vec4<f32> = x_2092.x_AdditionalLightsColor[bitcast<i32>(x_2586)];
    let x_2591 : vec3<f32> = (vec3<f32>(x_2584.x, x_2584.y, x_2584.z) * vec3<f32>(x_2589.x, x_2589.y, x_2589.z));
    let x_2592 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2591.x, x_2591.y, x_2591.z, x_2592.w);
    let x_2594 : f32 = u_xlat59;
    let x_2596 : vec4<f32> = u_xlat8;
    let x_2598 : vec3<f32> = (vec3<f32>(x_2594, x_2594, x_2594) * vec3<f32>(x_2596.x, x_2596.y, x_2596.z));
    let x_2599 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2598.x, x_2598.y, x_2598.z, x_2599.w);
    let x_2601 : vec4<f32> = u_xlat2;
    let x_2603 : vec4<f32> = u_xlat7;
    u_xlat1.x = dot(vec3<f32>(x_2601.x, x_2601.y, x_2601.z), vec3<f32>(x_2603.x, x_2603.y, x_2603.z));
    let x_2608 : f32 = u_xlat1.x;
    u_xlat1.x = clamp(x_2608, 0.0f, 1.0f);
    let x_2611 : vec4<f32> = u_xlat1;
    let x_2613 : vec4<f32> = u_xlat8;
    let x_2615 : vec3<f32> = (vec3<f32>(x_2611.x, x_2611.x, x_2611.x) * vec3<f32>(x_2613.x, x_2613.y, x_2613.z));
    let x_2616 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
    let x_2618 : vec4<f32> = u_xlat1;
    let x_2620 : vec4<f32> = u_xlat7;
    let x_2622 : vec3<f32> = (vec3<f32>(x_2618.y, x_2618.z, x_2618.w) * vec3<f32>(x_2620.x, x_2620.y, x_2620.z));
    let x_2623 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2622.x, x_2622.y, x_2622.z, x_2623.w);
    let x_2625 : vec4<f32> = u_xlat7;
    let x_2627 : vec4<f32> = u_xlat0;
    let x_2630 : vec4<f32> = u_xlat6;
    let x_2632 : vec3<f32> = ((vec3<f32>(x_2625.x, x_2625.y, x_2625.z) * vec3<f32>(x_2627.x, x_2627.x, x_2627.x)) + vec3<f32>(x_2630.x, x_2630.y, x_2630.z));
    let x_2633 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2632.x, x_2632.y, x_2632.z, x_2633.w);

    continuing {
      let x_2635 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2635 + bitcast<u32>(1i));
    }
  }
  let x_2637 : vec4<f32> = u_xlat4;
  let x_2639 : vec4<f32> = u_xlat1;
  let x_2642 : vec4<f32> = u_xlat3;
  let x_2644 : vec3<f32> = ((vec3<f32>(x_2637.x, x_2637.y, x_2637.z) * vec3<f32>(x_2639.y, x_2639.z, x_2639.w)) + vec3<f32>(x_2642.x, x_2642.y, x_2642.z));
  let x_2645 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2644.x, x_2644.y, x_2644.z, x_2645.w);
  let x_2649 : vec4<f32> = u_xlat6;
  let x_2651 : vec4<f32> = u_xlat1;
  let x_2653 : vec3<f32> = (vec3<f32>(x_2649.x, x_2649.y, x_2649.z) + vec3<f32>(x_2651.x, x_2651.y, x_2651.z));
  let x_2654 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2653.x, x_2653.y, x_2653.z, x_2654.w);
  let x_2657 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2657 == 1.0f);
  let x_2659 : bool = u_xlatb19;
  let x_2660 : bool = u_xlatb38;
  u_xlatb19 = (x_2659 | x_2660);
  let x_2662 : bool = u_xlatb19;
  if (x_2662) {
    let x_2667 : f32 = u_xlat0.x;
    x_2663 = x_2667;
  } else {
    x_2663 = 1.0f;
  }
  let x_2669 : f32 = x_2663;
  SV_Target0.w = x_2669;
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

