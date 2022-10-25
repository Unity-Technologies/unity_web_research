struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Surface : f32,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_28 : PGlobals;

@group(1) @binding(3) var<uniform> x_42 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_269 : MainLightShadows;

@group(1) @binding(5) var<uniform> x_339 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(2) var<uniform> x_464 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_586 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_688 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_60 : f32;
  var u_xlat11 : f32;
  var u_xlat22 : f32;
  var u_xlat33 : f32;
  var u_xlatb22 : bool;
  var x_110 : f32;
  var u_xlatb11 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlatb35 : bool;
  var u_xlat35 : f32;
  var u_xlatb5 : vec2<bool>;
  var x_425 : f32;
  var x_437 : vec3<f32>;
  var u_xlatu33 : u32;
  var u_xlat6 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu35 : u32;
  var u_xlati36 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat7 : vec3<f32>;
  var u_xlat36 : f32;
  var u_xlat37 : f32;
  var u_xlatu37 : u32;
  var u_xlati27 : i32;
  var u_xlati37 : i32;
  var u_xlati38 : i32;
  var u_xlat8 : vec4<f32>;
  var u_xlatb37 : bool;
  var u_xlat30 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb27 : vec2<bool>;
  var u_xlat27 : vec2<f32>;
  var x_984 : f32;
  var x_997 : f32;
  var x_1049 : f32;
  var x_1060 : vec3<f32>;
  var x_1165 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_35 : f32 = x_28.x_GlobalMipBias.x;
  let x_36 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_23, x_35);
  u_xlat0 = x_36;
  let x_38 : vec4<f32> = u_xlat0;
  let x_46 : vec4<f32> = x_42.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z) * vec4<f32>(x_46.w, x_46.x, x_46.y, x_46.z));
  let x_54 : f32 = u_xlat1.x;
  let x_57 : f32 = x_42.x_Cutoff;
  u_xlatb0 = (x_54 >= x_57);
  let x_59 : bool = u_xlatb0;
  if (x_59) {
    let x_64 : f32 = u_xlat1.x;
    x_60 = x_64;
  } else {
    x_60 = 0.0f;
  }
  let x_67 : f32 = x_60;
  u_xlat0.x = x_67;
  let x_72 : f32 = u_xlat0.w;
  let x_74 : f32 = x_42.x_BaseColor.w;
  let x_77 : f32 = x_42.x_Cutoff;
  u_xlat11 = ((x_72 * x_74) + -(x_77));
  let x_82 : f32 = u_xlat1.x;
  u_xlat22 = dpdxCoarse(x_82);
  let x_86 : f32 = u_xlat1.x;
  u_xlat33 = dpdyCoarse(x_86);
  let x_88 : f32 = u_xlat33;
  let x_90 : f32 = u_xlat22;
  u_xlat22 = (abs(x_88) + abs(x_90));
  let x_93 : f32 = u_xlat22;
  u_xlat22 = max(x_93, 0.0001f);
  let x_96 : f32 = u_xlat11;
  let x_97 : f32 = u_xlat22;
  u_xlat11 = (x_96 / x_97);
  let x_99 : f32 = u_xlat11;
  u_xlat11 = (x_99 + 0.5f);
  let x_102 : f32 = u_xlat11;
  u_xlat11 = clamp(x_102, 0.0f, 1.0f);
  let x_107 : f32 = x_28.x_AlphaToMaskAvailable;
  u_xlatb22 = !((x_107 == 0.0f));
  let x_109 : bool = u_xlatb22;
  if (x_109) {
    let x_113 : f32 = u_xlat11;
    x_110 = x_113;
  } else {
    let x_116 : f32 = u_xlat0.x;
    x_110 = x_116;
  }
  let x_117 : f32 = x_110;
  u_xlat0.x = x_117;
  let x_120 : f32 = u_xlat0.x;
  u_xlat11 = (x_120 + -0.0001f);
  let x_124 : f32 = u_xlat11;
  u_xlatb11 = (x_124 < 0.0f);
  let x_126 : bool = u_xlatb11;
  if (((select(0i, 1i, x_126) * -1i) != 0i)) {
    discard;
  }
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec3<f32> = vs_TEXCOORD2;
  u_xlat11 = dot(x_136, x_137);
  let x_139 : f32 = u_xlat11;
  u_xlat11 = inverseSqrt(x_139);
  let x_143 : f32 = u_xlat11;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_143, x_143, x_143) * x_145);
  let x_151 : f32 = vs_TEXCOORD1.y;
  let x_155 : f32 = x_28.unity_MatrixV[1i].z;
  u_xlat11 = (x_151 * x_155);
  let x_158 : f32 = x_28.unity_MatrixV[0i].z;
  let x_160 : f32 = vs_TEXCOORD1.x;
  let x_162 : f32 = u_xlat11;
  u_xlat11 = ((x_158 * x_160) + x_162);
  let x_166 : f32 = x_28.unity_MatrixV[2i].z;
  let x_168 : f32 = vs_TEXCOORD1.z;
  let x_170 : f32 = u_xlat11;
  u_xlat11 = ((x_166 * x_168) + x_170);
  let x_172 : f32 = u_xlat11;
  let x_175 : f32 = x_28.unity_MatrixV[3i].z;
  u_xlat11 = (x_172 + x_175);
  let x_177 : f32 = u_xlat11;
  let x_181 : f32 = x_28.x_ProjectionParams.y;
  u_xlat11 = (-(x_177) + -(x_181));
  let x_184 : f32 = u_xlat11;
  u_xlat11 = max(x_184, 0.0f);
  let x_186 : f32 = u_xlat11;
  let x_189 : f32 = x_28.unity_FogParams.x;
  u_xlat11 = (x_186 * x_189);
  let x_198 : vec2<f32> = vs_TEXCOORD7;
  let x_200 : f32 = x_28.x_GlobalMipBias.x;
  let x_201 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_198, x_200);
  u_xlat3 = x_201;
  let x_207 : vec2<f32> = vs_TEXCOORD7;
  let x_209 : f32 = x_28.x_GlobalMipBias.x;
  let x_210 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_207, x_209);
  let x_211 : vec3<f32> = vec3<f32>(x_210.x, x_210.y, x_210.z);
  let x_212 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
  let x_214 : vec4<f32> = u_xlat3;
  let x_218 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_219 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
  let x_221 : vec3<f32> = u_xlat2;
  let x_222 : vec4<f32> = u_xlat3;
  u_xlat33 = dot(x_221, vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : f32 = u_xlat33;
  u_xlat33 = (x_225 + 0.5f);
  let x_227 : f32 = u_xlat33;
  let x_229 : vec4<f32> = u_xlat4;
  let x_231 : vec3<f32> = (vec3<f32>(x_227, x_227, x_227) * vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : f32 = u_xlat3.w;
  u_xlat33 = max(x_235, 0.0001f);
  let x_237 : vec4<f32> = u_xlat3;
  let x_239 : f32 = u_xlat33;
  let x_241 : vec3<f32> = (vec3<f32>(x_237.x, x_237.y, x_237.z) / vec3<f32>(x_239, x_239, x_239));
  let x_242 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
  let x_247 : vec4<f32> = vs_TEXCOORD6;
  let x_248 : vec2<f32> = vec2<f32>(x_247.x, x_247.y);
  let x_250 : f32 = vs_TEXCOORD6.z;
  txVec0 = vec3<f32>(x_248.x, x_248.y, x_250);
  let x_262 : vec3<f32> = txVec0;
  let x_264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_262.xy, x_262.z);
  u_xlat33 = x_264;
  let x_272 : f32 = x_269.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_272) + 1.0f);
  let x_276 : f32 = u_xlat33;
  let x_278 : f32 = x_269.x_MainLightShadowParams.x;
  let x_281 : f32 = u_xlat1.x;
  u_xlat33 = ((x_276 * x_278) + x_281);
  let x_285 : f32 = vs_TEXCOORD6.z;
  u_xlatb1 = (0.0f >= x_285);
  let x_289 : f32 = vs_TEXCOORD6.z;
  u_xlatb35 = (x_289 >= 1.0f);
  let x_291 : bool = u_xlatb1;
  let x_292 : bool = u_xlatb35;
  u_xlatb1 = (x_291 | x_292);
  let x_294 : bool = u_xlatb1;
  let x_295 : f32 = u_xlat33;
  u_xlat33 = select(x_295, 1.0f, x_294);
  let x_297 : vec3<f32> = vs_TEXCOORD1;
  let x_301 : vec3<f32> = x_28.x_WorldSpaceCameraPos;
  let x_303 : vec3<f32> = (x_297 + -(x_301));
  let x_304 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_306 : vec4<f32> = u_xlat4;
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat1.x = dot(vec3<f32>(x_306.x, x_306.y, x_306.z), vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_313 : f32 = u_xlat1.x;
  let x_315 : f32 = x_269.x_MainLightShadowParams.z;
  let x_318 : f32 = x_269.x_MainLightShadowParams.w;
  u_xlat1.x = ((x_313 * x_315) + x_318);
  let x_322 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_322, 0.0f, 1.0f);
  let x_326 : f32 = u_xlat33;
  u_xlat35 = (-(x_326) + 1.0f);
  let x_330 : f32 = u_xlat1.x;
  let x_331 : f32 = u_xlat35;
  let x_333 : f32 = u_xlat33;
  u_xlat33 = ((x_330 * x_331) + x_333);
  let x_341 : f32 = x_339.x_MainLightCookieTextureFormat;
  u_xlatb1 = !((x_341 == -1.0f));
  let x_344 : bool = u_xlatb1;
  if (x_344) {
    let x_347 : vec3<f32> = vs_TEXCOORD1;
    let x_350 : vec4<f32> = x_339.x_MainLightWorldToLight[1i];
    let x_352 : vec2<f32> = (vec2<f32>(x_347.y, x_347.y) * vec2<f32>(x_350.x, x_350.y));
    let x_353 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_352.x, x_352.y, x_353.z, x_353.w);
    let x_356 : vec4<f32> = x_339.x_MainLightWorldToLight[0i];
    let x_358 : vec3<f32> = vs_TEXCOORD1;
    let x_361 : vec4<f32> = u_xlat4;
    let x_363 : vec2<f32> = ((vec2<f32>(x_356.x, x_356.y) * vec2<f32>(x_358.x, x_358.x)) + vec2<f32>(x_361.x, x_361.y));
    let x_364 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_363.x, x_363.y, x_364.z, x_364.w);
    let x_367 : vec4<f32> = x_339.x_MainLightWorldToLight[2i];
    let x_369 : vec3<f32> = vs_TEXCOORD1;
    let x_372 : vec4<f32> = u_xlat4;
    let x_374 : vec2<f32> = ((vec2<f32>(x_367.x, x_367.y) * vec2<f32>(x_369.z, x_369.z)) + vec2<f32>(x_372.x, x_372.y));
    let x_375 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_374.x, x_374.y, x_375.z, x_375.w);
    let x_377 : vec4<f32> = u_xlat4;
    let x_380 : vec4<f32> = x_339.x_MainLightWorldToLight[3i];
    let x_382 : vec2<f32> = (vec2<f32>(x_377.x, x_377.y) + vec2<f32>(x_380.x, x_380.y));
    let x_383 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_382.x, x_382.y, x_383.z, x_383.w);
    let x_385 : vec4<f32> = u_xlat4;
    let x_389 : vec2<f32> = ((vec2<f32>(x_385.x, x_385.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_390 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_389.x, x_389.y, x_390.z, x_390.w);
    let x_397 : vec4<f32> = u_xlat4;
    let x_400 : f32 = x_28.x_GlobalMipBias.x;
    let x_401 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_397.x, x_397.y), x_400);
    u_xlat4 = x_401;
    let x_406 : f32 = x_339.x_MainLightCookieTextureFormat;
    let x_408 : f32 = x_339.x_MainLightCookieTextureFormat;
    let x_410 : f32 = x_339.x_MainLightCookieTextureFormat;
    let x_412 : f32 = x_339.x_MainLightCookieTextureFormat;
    let x_413 : vec4<f32> = vec4<f32>(x_406, x_408, x_410, x_412);
    let x_421 : vec4<bool> = (vec4<f32>(x_413.x, x_413.y, x_413.z, x_413.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb5 = vec2<bool>(x_421.x, x_421.y);
    let x_424 : bool = u_xlatb5.y;
    if (x_424) {
      let x_429 : f32 = u_xlat4.w;
      x_425 = x_429;
    } else {
      let x_432 : f32 = u_xlat4.x;
      x_425 = x_432;
    }
    let x_433 : f32 = x_425;
    u_xlat1.x = x_433;
    let x_436 : bool = u_xlatb5.x;
    if (x_436) {
      let x_440 : vec4<f32> = u_xlat4;
      x_437 = vec3<f32>(x_440.x, x_440.y, x_440.z);
    } else {
      let x_443 : vec4<f32> = u_xlat1;
      x_437 = vec3<f32>(x_443.x, x_443.x, x_443.x);
    }
    let x_445 : vec3<f32> = x_437;
    let x_446 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_452 : vec4<f32> = u_xlat4;
  let x_455 : vec4<f32> = x_28.x_MainLightColor;
  let x_457 : vec3<f32> = (vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(x_455.x, x_455.y, x_455.z));
  let x_458 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
  let x_460 : f32 = u_xlat33;
  let x_466 : f32 = x_464.unity_LightData.z;
  u_xlat33 = (x_460 * x_466);
  let x_468 : f32 = u_xlat33;
  let x_470 : vec4<f32> = u_xlat4;
  let x_472 : vec3<f32> = (vec3<f32>(x_468, x_468, x_468) * vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_473 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_472.x, x_472.y, x_472.z, x_473.w);
  let x_475 : vec3<f32> = u_xlat2;
  let x_477 : vec4<f32> = x_28.x_MainLightPosition;
  u_xlat33 = dot(x_475, vec3<f32>(x_477.x, x_477.y, x_477.z));
  let x_480 : f32 = u_xlat33;
  u_xlat33 = clamp(x_480, 0.0f, 1.0f);
  let x_482 : f32 = u_xlat33;
  let x_484 : vec4<f32> = u_xlat4;
  let x_486 : vec3<f32> = (vec3<f32>(x_482, x_482, x_482) * vec3<f32>(x_484.x, x_484.y, x_484.z));
  let x_487 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
  let x_489 : vec4<f32> = u_xlat1;
  let x_491 : vec4<f32> = u_xlat4;
  let x_493 : vec3<f32> = (vec3<f32>(x_489.y, x_489.z, x_489.w) * vec3<f32>(x_491.x, x_491.y, x_491.z));
  let x_494 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
  let x_496 : vec4<f32> = u_xlat0;
  let x_498 : vec4<f32> = u_xlat4;
  let x_500 : vec3<f32> = (vec3<f32>(x_496.x, x_496.x, x_496.x) * vec3<f32>(x_498.x, x_498.y, x_498.z));
  let x_501 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_500.x, x_500.y, x_500.z, x_501.w);
  let x_504 : f32 = x_28.x_AdditionalLightsCount.x;
  let x_506 : f32 = x_464.unity_LightData.y;
  u_xlat33 = min(x_504, x_506);
  let x_510 : f32 = u_xlat33;
  u_xlatu33 = bitcast<u32>(i32(x_510));
  let x_514 : f32 = x_339.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_516 : f32 = x_339.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_518 : f32 = x_339.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_520 : f32 = x_339.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_521 : vec4<f32> = vec4<f32>(x_514, x_516, x_518, x_520);
  let x_527 : vec4<bool> = (vec4<f32>(x_521.x, x_521.y, x_521.z, x_521.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb5 = vec2<bool>(x_527.x, x_527.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_539 : u32 = u_xlatu_loop_1;
    let x_540 : u32 = u_xlatu33;
    if ((x_539 < x_540)) {
    } else {
      break;
    }
    let x_543 : u32 = u_xlatu_loop_1;
    u_xlatu35 = (x_543 >> 2u);
    let x_547 : u32 = u_xlatu_loop_1;
    u_xlati36 = bitcast<i32>((x_547 & 3u));
    let x_550 : u32 = u_xlatu35;
    let x_553 : vec4<f32> = x_464.unity_LightIndices[bitcast<i32>(x_550)];
    let x_563 : i32 = u_xlati36;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_568 : vec4<u32> = indexable[x_563];
    u_xlat35 = dot(x_553, bitcast<vec4<f32>>(x_568));
    let x_571 : f32 = u_xlat35;
    u_xlatu35 = bitcast<u32>(i32(x_571));
    let x_575 : vec3<f32> = vs_TEXCOORD1;
    let x_587 : u32 = u_xlatu35;
    let x_590 : vec4<f32> = x_586.x_AdditionalLightsPosition[bitcast<i32>(x_587)];
    let x_593 : u32 = u_xlatu35;
    let x_596 : vec4<f32> = x_586.x_AdditionalLightsPosition[bitcast<i32>(x_593)];
    u_xlat7 = ((-(x_575) * vec3<f32>(x_590.w, x_590.w, x_590.w)) + vec3<f32>(x_596.x, x_596.y, x_596.z));
    let x_600 : vec3<f32> = u_xlat7;
    let x_601 : vec3<f32> = u_xlat7;
    u_xlat36 = dot(x_600, x_601);
    let x_603 : f32 = u_xlat36;
    u_xlat36 = max(x_603, 6.10351562e-05f);
    let x_607 : f32 = u_xlat36;
    u_xlat37 = inverseSqrt(x_607);
    let x_609 : f32 = u_xlat37;
    let x_611 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_609, x_609, x_609) * x_611);
    let x_613 : f32 = u_xlat36;
    u_xlat37 = (1.0f / x_613);
    let x_615 : f32 = u_xlat36;
    let x_616 : u32 = u_xlatu35;
    let x_619 : f32 = x_586.x_AdditionalLightsAttenuation[bitcast<i32>(x_616)].x;
    u_xlat36 = (x_615 * x_619);
    let x_621 : f32 = u_xlat36;
    let x_623 : f32 = u_xlat36;
    u_xlat36 = ((-(x_621) * x_623) + 1.0f);
    let x_626 : f32 = u_xlat36;
    u_xlat36 = max(x_626, 0.0f);
    let x_628 : f32 = u_xlat36;
    let x_629 : f32 = u_xlat36;
    u_xlat36 = (x_628 * x_629);
    let x_631 : f32 = u_xlat36;
    let x_632 : f32 = u_xlat37;
    u_xlat36 = (x_631 * x_632);
    let x_634 : u32 = u_xlatu35;
    let x_637 : vec4<f32> = x_586.x_AdditionalLightsSpotDir[bitcast<i32>(x_634)];
    let x_639 : vec3<f32> = u_xlat7;
    u_xlat37 = dot(vec3<f32>(x_637.x, x_637.y, x_637.z), x_639);
    let x_641 : f32 = u_xlat37;
    let x_642 : u32 = u_xlatu35;
    let x_645 : f32 = x_586.x_AdditionalLightsAttenuation[bitcast<i32>(x_642)].z;
    let x_647 : u32 = u_xlatu35;
    let x_650 : f32 = x_586.x_AdditionalLightsAttenuation[bitcast<i32>(x_647)].w;
    u_xlat37 = ((x_641 * x_645) + x_650);
    let x_652 : f32 = u_xlat37;
    u_xlat37 = clamp(x_652, 0.0f, 1.0f);
    let x_654 : f32 = u_xlat37;
    let x_655 : f32 = u_xlat37;
    u_xlat37 = (x_654 * x_655);
    let x_657 : f32 = u_xlat36;
    let x_658 : f32 = u_xlat37;
    u_xlat36 = (x_657 * x_658);
    let x_661 : u32 = u_xlatu35;
    u_xlatu37 = (x_661 >> 5u);
    let x_664 : u32 = u_xlatu35;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_664) & 31i)));
    let x_670 : i32 = u_xlati27;
    let x_672 : u32 = u_xlatu37;
    let x_675 : f32 = x_339.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_672)].el;
    u_xlati37 = bitcast<i32>((bitcast<u32>(x_670) & bitcast<u32>(x_675)));
    let x_679 : i32 = u_xlati37;
    if ((x_679 != 0i)) {
      let x_689 : u32 = u_xlatu35;
      let x_692 : f32 = x_688.x_AdditionalLightsLightTypes[bitcast<i32>(x_689)].el;
      u_xlati37 = i32(x_692);
      let x_694 : i32 = u_xlati37;
      u_xlati27 = select(1i, 0i, (x_694 != 0i));
      let x_698 : u32 = u_xlatu35;
      u_xlati38 = (bitcast<i32>(x_698) << bitcast<u32>(2i));
      let x_701 : i32 = u_xlati27;
      if ((x_701 != 0i)) {
        let x_706 : vec3<f32> = vs_TEXCOORD1;
        let x_708 : i32 = u_xlati38;
        let x_711 : i32 = u_xlati38;
        let x_715 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_708 + 1i) / 4i)][((x_711 + 1i) % 4i)];
        let x_717 : vec3<f32> = (vec3<f32>(x_706.y, x_706.y, x_706.y) * vec3<f32>(x_715.x, x_715.y, x_715.w));
        let x_718 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_717.x, x_717.y, x_717.z, x_718.w);
        let x_720 : i32 = u_xlati38;
        let x_722 : i32 = u_xlati38;
        let x_725 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[(x_720 / 4i)][(x_722 % 4i)];
        let x_727 : vec3<f32> = vs_TEXCOORD1;
        let x_730 : vec4<f32> = u_xlat8;
        let x_732 : vec3<f32> = ((vec3<f32>(x_725.x, x_725.y, x_725.w) * vec3<f32>(x_727.x, x_727.x, x_727.x)) + vec3<f32>(x_730.x, x_730.y, x_730.z));
        let x_733 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
        let x_735 : i32 = u_xlati38;
        let x_738 : i32 = u_xlati38;
        let x_742 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_735 + 2i) / 4i)][((x_738 + 2i) % 4i)];
        let x_744 : vec3<f32> = vs_TEXCOORD1;
        let x_747 : vec4<f32> = u_xlat8;
        let x_749 : vec3<f32> = ((vec3<f32>(x_742.x, x_742.y, x_742.w) * vec3<f32>(x_744.z, x_744.z, x_744.z)) + vec3<f32>(x_747.x, x_747.y, x_747.z));
        let x_750 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
        let x_752 : vec4<f32> = u_xlat8;
        let x_754 : i32 = u_xlati38;
        let x_757 : i32 = u_xlati38;
        let x_761 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_754 + 3i) / 4i)][((x_757 + 3i) % 4i)];
        let x_763 : vec3<f32> = (vec3<f32>(x_752.x, x_752.y, x_752.z) + vec3<f32>(x_761.x, x_761.y, x_761.w));
        let x_764 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
        let x_766 : vec4<f32> = u_xlat8;
        let x_768 : vec4<f32> = u_xlat8;
        let x_770 : vec2<f32> = (vec2<f32>(x_766.x, x_766.y) / vec2<f32>(x_768.z, x_768.z));
        let x_771 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_770.x, x_770.y, x_771.z, x_771.w);
        let x_773 : vec4<f32> = u_xlat8;
        let x_776 : vec2<f32> = ((vec2<f32>(x_773.x, x_773.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_777 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_776.x, x_776.y, x_777.z, x_777.w);
        let x_779 : vec4<f32> = u_xlat8;
        let x_783 : vec2<f32> = clamp(vec2<f32>(x_779.x, x_779.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_784 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_783.x, x_783.y, x_784.z, x_784.w);
        let x_786 : u32 = u_xlatu35;
        let x_789 : vec4<f32> = x_688.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_786)];
        let x_791 : vec4<f32> = u_xlat8;
        let x_794 : u32 = u_xlatu35;
        let x_797 : vec4<f32> = x_688.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_794)];
        let x_799 : vec2<f32> = ((vec2<f32>(x_789.x, x_789.y) * vec2<f32>(x_791.x, x_791.y)) + vec2<f32>(x_797.z, x_797.w));
        let x_800 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_799.x, x_799.y, x_800.z, x_800.w);
      } else {
        let x_804 : i32 = u_xlati37;
        u_xlatb37 = (x_804 == 1i);
        let x_806 : bool = u_xlatb37;
        u_xlati37 = select(0i, 1i, x_806);
        let x_808 : i32 = u_xlati37;
        if ((x_808 != 0i)) {
          let x_814 : vec3<f32> = vs_TEXCOORD1;
          let x_816 : i32 = u_xlati38;
          let x_819 : i32 = u_xlati38;
          let x_823 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_816 + 1i) / 4i)][((x_819 + 1i) % 4i)];
          u_xlat30 = (vec2<f32>(x_814.y, x_814.y) * vec2<f32>(x_823.x, x_823.y));
          let x_826 : i32 = u_xlati38;
          let x_828 : i32 = u_xlati38;
          let x_831 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[(x_826 / 4i)][(x_828 % 4i)];
          let x_833 : vec3<f32> = vs_TEXCOORD1;
          let x_836 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_831.x, x_831.y) * vec2<f32>(x_833.x, x_833.x)) + x_836);
          let x_838 : i32 = u_xlati38;
          let x_841 : i32 = u_xlati38;
          let x_845 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_838 + 2i) / 4i)][((x_841 + 2i) % 4i)];
          let x_847 : vec3<f32> = vs_TEXCOORD1;
          let x_850 : vec2<f32> = u_xlat30;
          u_xlat30 = ((vec2<f32>(x_845.x, x_845.y) * vec2<f32>(x_847.z, x_847.z)) + x_850);
          let x_852 : vec2<f32> = u_xlat30;
          let x_853 : i32 = u_xlati38;
          let x_856 : i32 = u_xlati38;
          let x_860 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_853 + 3i) / 4i)][((x_856 + 3i) % 4i)];
          u_xlat30 = (x_852 + vec2<f32>(x_860.x, x_860.y));
          let x_863 : vec2<f32> = u_xlat30;
          u_xlat30 = ((x_863 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_866 : vec2<f32> = u_xlat30;
          u_xlat30 = fract(x_866);
          let x_868 : u32 = u_xlatu35;
          let x_871 : vec4<f32> = x_688.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_868)];
          let x_873 : vec2<f32> = u_xlat30;
          let x_875 : u32 = u_xlatu35;
          let x_878 : vec4<f32> = x_688.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_875)];
          let x_880 : vec2<f32> = ((vec2<f32>(x_871.x, x_871.y) * x_873) + vec2<f32>(x_878.z, x_878.w));
          let x_881 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_880.x, x_880.y, x_881.z, x_881.w);
        } else {
          let x_885 : vec3<f32> = vs_TEXCOORD1;
          let x_887 : i32 = u_xlati38;
          let x_890 : i32 = u_xlati38;
          let x_894 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_887 + 1i) / 4i)][((x_890 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_885.y, x_885.y, x_885.y, x_885.y) * x_894);
          let x_896 : i32 = u_xlati38;
          let x_898 : i32 = u_xlati38;
          let x_901 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[(x_896 / 4i)][(x_898 % 4i)];
          let x_902 : vec3<f32> = vs_TEXCOORD1;
          let x_905 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_901 * vec4<f32>(x_902.x, x_902.x, x_902.x, x_902.x)) + x_905);
          let x_907 : i32 = u_xlati38;
          let x_910 : i32 = u_xlati38;
          let x_914 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_907 + 2i) / 4i)][((x_910 + 2i) % 4i)];
          let x_915 : vec3<f32> = vs_TEXCOORD1;
          let x_918 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_914 * vec4<f32>(x_915.z, x_915.z, x_915.z, x_915.z)) + x_918);
          let x_920 : vec4<f32> = u_xlat9;
          let x_921 : i32 = u_xlati38;
          let x_924 : i32 = u_xlati38;
          let x_928 : vec4<f32> = x_688.x_AdditionalLightsWorldToLights[((x_921 + 3i) / 4i)][((x_924 + 3i) % 4i)];
          u_xlat9 = (x_920 + x_928);
          let x_930 : vec4<f32> = u_xlat9;
          let x_932 : vec4<f32> = u_xlat9;
          let x_934 : vec3<f32> = (vec3<f32>(x_930.x, x_930.y, x_930.z) / vec3<f32>(x_932.w, x_932.w, x_932.w));
          let x_935 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
          let x_937 : vec4<f32> = u_xlat9;
          let x_939 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(vec3<f32>(x_937.x, x_937.y, x_937.z), vec3<f32>(x_939.x, x_939.y, x_939.z));
          let x_942 : f32 = u_xlat37;
          u_xlat37 = inverseSqrt(x_942);
          let x_944 : f32 = u_xlat37;
          let x_946 : vec4<f32> = u_xlat9;
          let x_948 : vec3<f32> = (vec3<f32>(x_944, x_944, x_944) * vec3<f32>(x_946.x, x_946.y, x_946.z));
          let x_949 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
          let x_951 : vec4<f32> = u_xlat9;
          u_xlat37 = dot(abs(vec3<f32>(x_951.x, x_951.y, x_951.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_956 : f32 = u_xlat37;
          u_xlat37 = max(x_956, 0.000001f);
          let x_959 : f32 = u_xlat37;
          u_xlat37 = (1.0f / x_959);
          let x_962 : f32 = u_xlat37;
          let x_964 : vec4<f32> = u_xlat9;
          u_xlat10 = (vec3<f32>(x_962, x_962, x_962) * vec3<f32>(x_964.z, x_964.x, x_964.y));
          let x_968 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_968);
          let x_972 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_972, 0.0f, 1.0f);
          let x_976 : vec3<f32> = u_xlat10;
          let x_979 : vec4<bool> = (vec4<f32>(x_976.y, x_976.z, x_976.y, x_976.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb27 = vec2<bool>(x_979.x, x_979.y);
          let x_983 : bool = u_xlatb27.x;
          if (x_983) {
            let x_988 : f32 = u_xlat10.x;
            x_984 = x_988;
          } else {
            let x_991 : f32 = u_xlat10.x;
            x_984 = -(x_991);
          }
          let x_993 : f32 = x_984;
          u_xlat27.x = x_993;
          let x_996 : bool = u_xlatb27.y;
          if (x_996) {
            let x_1001 : f32 = u_xlat10.x;
            x_997 = x_1001;
          } else {
            let x_1004 : f32 = u_xlat10.x;
            x_997 = -(x_1004);
          }
          let x_1006 : f32 = x_997;
          u_xlat27.y = x_1006;
          let x_1008 : vec4<f32> = u_xlat9;
          let x_1010 : f32 = u_xlat37;
          let x_1013 : vec2<f32> = u_xlat27;
          u_xlat27 = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1010, x_1010)) + x_1013);
          let x_1015 : vec2<f32> = u_xlat27;
          u_xlat27 = ((x_1015 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1018 : vec2<f32> = u_xlat27;
          u_xlat27 = clamp(x_1018, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1022 : u32 = u_xlatu35;
          let x_1025 : vec4<f32> = x_688.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1022)];
          let x_1027 : vec2<f32> = u_xlat27;
          let x_1029 : u32 = u_xlatu35;
          let x_1032 : vec4<f32> = x_688.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_1029)];
          let x_1034 : vec2<f32> = ((vec2<f32>(x_1025.x, x_1025.y) * x_1027) + vec2<f32>(x_1032.z, x_1032.w));
          let x_1035 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_1034.x, x_1034.y, x_1035.z, x_1035.w);
        }
      }
      let x_1042 : vec4<f32> = u_xlat8;
      let x_1045 : f32 = x_28.x_GlobalMipBias.x;
      let x_1046 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_1042.x, x_1042.y), x_1045);
      u_xlat8 = x_1046;
      let x_1048 : bool = u_xlatb5.y;
      if (x_1048) {
        let x_1053 : f32 = u_xlat8.w;
        x_1049 = x_1053;
      } else {
        let x_1056 : f32 = u_xlat8.x;
        x_1049 = x_1056;
      }
      let x_1057 : f32 = x_1049;
      u_xlat37 = x_1057;
      let x_1059 : bool = u_xlatb5.x;
      if (x_1059) {
        let x_1063 : vec4<f32> = u_xlat8;
        x_1060 = vec3<f32>(x_1063.x, x_1063.y, x_1063.z);
      } else {
        let x_1066 : f32 = u_xlat37;
        x_1060 = vec3<f32>(x_1066, x_1066, x_1066);
      }
      let x_1068 : vec3<f32> = x_1060;
      let x_1069 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_1075 : vec4<f32> = u_xlat8;
    let x_1077 : u32 = u_xlatu35;
    let x_1080 : vec4<f32> = x_586.x_AdditionalLightsColor[bitcast<i32>(x_1077)];
    let x_1082 : vec3<f32> = (vec3<f32>(x_1075.x, x_1075.y, x_1075.z) * vec3<f32>(x_1080.x, x_1080.y, x_1080.z));
    let x_1083 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1082.x, x_1082.y, x_1082.z, x_1083.w);
    let x_1085 : f32 = u_xlat36;
    let x_1087 : vec4<f32> = u_xlat8;
    let x_1089 : vec3<f32> = (vec3<f32>(x_1085, x_1085, x_1085) * vec3<f32>(x_1087.x, x_1087.y, x_1087.z));
    let x_1090 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1090.w);
    let x_1092 : vec3<f32> = u_xlat2;
    let x_1093 : vec3<f32> = u_xlat7;
    u_xlat35 = dot(x_1092, x_1093);
    let x_1095 : f32 = u_xlat35;
    u_xlat35 = clamp(x_1095, 0.0f, 1.0f);
    let x_1097 : f32 = u_xlat35;
    let x_1099 : vec4<f32> = u_xlat8;
    u_xlat7 = (vec3<f32>(x_1097, x_1097, x_1097) * vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
    let x_1102 : vec4<f32> = u_xlat1;
    let x_1104 : vec3<f32> = u_xlat7;
    u_xlat7 = (vec3<f32>(x_1102.y, x_1102.z, x_1102.w) * x_1104);
    let x_1106 : vec3<f32> = u_xlat7;
    let x_1107 : vec4<f32> = u_xlat0;
    let x_1110 : vec3<f32> = u_xlat6;
    u_xlat6 = ((x_1106 * vec3<f32>(x_1107.x, x_1107.x, x_1107.x)) + x_1110);

    continuing {
      let x_1112 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1112 + bitcast<u32>(1i));
    }
  }
  let x_1114 : vec4<f32> = u_xlat3;
  let x_1116 : vec4<f32> = u_xlat1;
  let x_1119 : vec4<f32> = u_xlat4;
  let x_1121 : vec3<f32> = ((vec3<f32>(x_1114.x, x_1114.y, x_1114.z) * vec3<f32>(x_1116.y, x_1116.z, x_1116.w)) + vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
  let x_1122 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1121.x, x_1121.y, x_1121.z, x_1122.w);
  let x_1124 : vec3<f32> = u_xlat6;
  let x_1125 : vec4<f32> = u_xlat1;
  let x_1127 : vec3<f32> = (x_1124 + vec3<f32>(x_1125.x, x_1125.y, x_1125.z));
  let x_1128 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1127.x, x_1127.y, x_1127.z, x_1128.w);
  let x_1130 : f32 = u_xlat11;
  let x_1131 : f32 = u_xlat11;
  u_xlat11 = (x_1130 * -(x_1131));
  let x_1134 : f32 = u_xlat11;
  u_xlat11 = exp2(x_1134);
  let x_1136 : vec4<f32> = u_xlat1;
  let x_1139 : vec4<f32> = x_28.unity_FogColor;
  let x_1142 : vec3<f32> = (vec3<f32>(x_1136.x, x_1136.y, x_1136.z) + -(vec3<f32>(x_1139.x, x_1139.y, x_1139.z)));
  let x_1143 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1142.x, x_1142.y, x_1142.z, x_1143.w);
  let x_1147 : f32 = u_xlat11;
  let x_1149 : vec4<f32> = u_xlat1;
  let x_1153 : vec4<f32> = x_28.unity_FogColor;
  let x_1155 : vec3<f32> = ((vec3<f32>(x_1147, x_1147, x_1147) * vec3<f32>(x_1149.x, x_1149.y, x_1149.z)) + vec3<f32>(x_1153.x, x_1153.y, x_1153.z));
  let x_1156 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1155.x, x_1155.y, x_1155.z, x_1156.w);
  let x_1159 : f32 = x_42.x_Surface;
  u_xlatb11 = (x_1159 == 1.0f);
  let x_1161 : bool = u_xlatb11;
  let x_1162 : bool = u_xlatb22;
  u_xlatb11 = (x_1161 | x_1162);
  let x_1164 : bool = u_xlatb11;
  if (x_1164) {
    let x_1169 : f32 = u_xlat0.x;
    x_1165 = x_1169;
  } else {
    x_1165 = 1.0f;
  }
  let x_1171 : f32 = x_1165;
  SV_Target0.w = x_1171;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

