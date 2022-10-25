struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  x_AlphaToMaskAvailable : f32,
  @size(4)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ScaleBiasRt : vec4<f32>,
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

type Arr_2 = array<vec4<f32>, 256u>;

type Arr_3 = array<vec4<f32>, 256u>;

type Arr_4 = array<vec4<f32>, 256u>;

type Arr_5 = array<vec4<f32>, 256u>;

type Arr_6 = array<vec4<f32>, 256u>;

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_7 = array<strided_arr, 256u>;

struct AdditionalLights {
  x_AdditionalLightsPosition : Arr_6,
  x_AdditionalLightsColor : Arr_6,
  x_AdditionalLightsAttenuation : Arr_6,
  x_AdditionalLightsSpotDir : Arr_6,
  x_AdditionalLightsOcclusionProbes : Arr_6,
  x_AdditionalLightsLayerMasks : Arr_7,
}

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BumpMap : sampler;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_236 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_442 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1900 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_73 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlat38 : f32;
  var u_xlat57 : f32;
  var u_xlatb38 : bool;
  var x_130 : f32;
  var u_xlatb19 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlatb21 : bool;
  var x_241 : f32;
  var u_xlatb2 : bool;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlatb59 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat59 : f32;
  var u_xlatb60 : bool;
  var u_xlat43 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat60 : f32;
  var txVec4 : vec3<f32>;
  var u_xlat61 : f32;
  var txVec5 : vec3<f32>;
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
  var u_xlatb61 : bool;
  var u_xlatu59 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu61 : u32;
  var u_xlati62 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati61 : i32;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var x_2103 : f32;
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
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_67 : f32 = u_xlat1.x;
  let x_70 : f32 = x_56.x_Cutoff;
  u_xlatb0 = (x_67 >= x_70);
  let x_72 : bool = u_xlatb0;
  if (x_72) {
    let x_77 : f32 = u_xlat1.x;
    x_73 = x_77;
  } else {
    x_73 = 0.0f;
  }
  let x_80 : f32 = x_73;
  u_xlat0.x = x_80;
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_56.x_BaseColor.w;
  let x_90 : f32 = x_56.x_Cutoff;
  u_xlat19.x = ((x_85 * x_87) + -(x_90));
  let x_96 : f32 = u_xlat1.x;
  u_xlat38 = dpdxCoarse(x_96);
  let x_100 : f32 = u_xlat1.x;
  u_xlat57 = dpdyCoarse(x_100);
  let x_102 : f32 = u_xlat57;
  let x_104 : f32 = u_xlat38;
  u_xlat38 = (abs(x_102) + abs(x_104));
  let x_107 : f32 = u_xlat38;
  u_xlat38 = max(x_107, 0.0001f);
  let x_111 : f32 = u_xlat19.x;
  let x_112 : f32 = u_xlat38;
  u_xlat19.x = (x_111 / x_112);
  let x_116 : f32 = u_xlat19.x;
  u_xlat19.x = (x_116 + 0.5f);
  let x_121 : f32 = u_xlat19.x;
  u_xlat19.x = clamp(x_121, 0.0f, 1.0f);
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
  let x_164 : vec2<f32> = vs_TEXCOORD0;
  let x_166 : f32 = x_43.x_GlobalMipBias.x;
  let x_167 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_164, x_166);
  u_xlat2 = vec3<f32>(x_167.x, x_167.y, x_167.w);
  let x_170 : f32 = u_xlat2.x;
  let x_173 : f32 = u_xlat2.z;
  u_xlat2.x = (x_170 * x_173);
  let x_176 : vec3<f32> = u_xlat2;
  let x_183 : vec2<f32> = ((vec2<f32>(x_176.x, x_176.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_184 : vec3<f32> = u_xlat19;
  u_xlat19 = vec3<f32>(x_183.x, x_184.y, x_183.y);
  let x_186 : vec3<f32> = u_xlat19;
  let x_188 : vec3<f32> = u_xlat19;
  u_xlat1.x = dot(vec2<f32>(x_186.x, x_186.z), vec2<f32>(x_188.x, x_188.z));
  let x_193 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_193, 1.0f);
  let x_197 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_197) + 1.0f);
  let x_202 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_202);
  let x_206 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_206, 1.00000002e-16f);
  let x_210 : vec4<f32> = hlslcc_FragCoord;
  let x_214 : f32 = x_43.x_DitheringTextureInvSize;
  let x_216 : vec2<f32> = (vec2<f32>(x_210.x, x_210.y) * vec2<f32>(x_214, x_214));
  let x_217 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_216.x, x_216.y, x_217.z);
  let x_224 : vec3<f32> = u_xlat2;
  let x_227 : f32 = x_43.x_GlobalMipBias.x;
  let x_228 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_224.x, x_224.y), x_227);
  u_xlat2.x = x_228.w;
  let x_238 : f32 = x_236.unity_LODFade.x;
  u_xlatb21 = (x_238 >= 0.0f);
  let x_240 : bool = u_xlatb21;
  if (x_240) {
    let x_245 : f32 = u_xlat2.x;
    x_241 = abs(x_245);
  } else {
    let x_249 : f32 = u_xlat2.x;
    x_241 = -(abs(x_249));
  }
  let x_252 : f32 = x_241;
  u_xlat2.x = x_252;
  let x_255 : f32 = u_xlat2.x;
  let x_258 : f32 = x_236.unity_LODFade.x;
  u_xlat2.x = (-(x_255) + x_258);
  let x_263 : f32 = u_xlat2.x;
  u_xlatb2 = (x_263 < 0.0f);
  let x_265 : bool = u_xlatb2;
  if (((select(0i, 1i, x_265) * -1i) != 0i)) {
    discard;
  }
  let x_272 : vec3<f32> = u_xlat19;
  let x_275 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_272.z, x_272.z, x_272.z) * vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec3<f32> = u_xlat19;
  let x_281 : vec4<f32> = vs_TEXCOORD3;
  let x_284 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_278.x, x_278.x, x_278.x) * vec3<f32>(x_281.x, x_281.y, x_281.z)) + x_284);
  let x_286 : vec4<f32> = u_xlat1;
  let x_289 : vec4<f32> = vs_TEXCOORD2;
  let x_292 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_286.x, x_286.x, x_286.x) * vec3<f32>(x_289.x, x_289.y, x_289.z)) + x_292);
  let x_294 : vec3<f32> = u_xlat2;
  let x_295 : vec3<f32> = u_xlat2;
  u_xlat19.x = dot(x_294, x_295);
  let x_299 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_299);
  let x_302 : vec3<f32> = u_xlat19;
  let x_304 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_302.x, x_302.x, x_302.x) * x_304);
  let x_308 : f32 = vs_TEXCOORD2.w;
  u_xlat3.x = x_308;
  let x_311 : f32 = vs_TEXCOORD3.w;
  u_xlat3.y = x_311;
  let x_315 : f32 = vs_TEXCOORD4.w;
  u_xlat3.z = x_315;
  let x_317 : vec3<f32> = u_xlat3;
  let x_318 : vec3<f32> = u_xlat3;
  u_xlat19.x = dot(x_317, x_318);
  let x_322 : f32 = u_xlat19.x;
  u_xlat19.x = max(x_322, 1.17549435e-37f);
  let x_327 : f32 = u_xlat19.x;
  u_xlat19.x = inverseSqrt(x_327);
  let x_337 : vec2<f32> = vs_TEXCOORD7;
  let x_339 : f32 = x_43.x_GlobalMipBias.x;
  let x_340 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_337, x_339);
  u_xlat4 = x_340;
  let x_346 : vec2<f32> = vs_TEXCOORD7;
  let x_348 : f32 = x_43.x_GlobalMipBias.x;
  let x_349 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_346, x_348);
  let x_350 : vec3<f32> = vec3<f32>(x_349.x, x_349.y, x_349.z);
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat4;
  let x_357 : vec3<f32> = (vec3<f32>(x_353.x, x_353.y, x_353.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_358 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_360 : vec3<f32> = u_xlat2;
  let x_361 : vec4<f32> = u_xlat4;
  u_xlat57 = dot(x_360, vec3<f32>(x_361.x, x_361.y, x_361.z));
  let x_364 : f32 = u_xlat57;
  u_xlat57 = (x_364 + 0.5f);
  let x_366 : f32 = u_xlat57;
  let x_368 : vec4<f32> = u_xlat5;
  let x_370 : vec3<f32> = (vec3<f32>(x_366, x_366, x_366) * vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_371 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_370.x, x_370.y, x_370.z, x_371.w);
  let x_374 : f32 = u_xlat4.w;
  u_xlat57 = max(x_374, 0.0001f);
  let x_376 : vec4<f32> = u_xlat4;
  let x_378 : f32 = u_xlat57;
  let x_380 : vec3<f32> = (vec3<f32>(x_376.x, x_376.y, x_376.z) / vec3<f32>(x_378, x_378, x_378));
  let x_381 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_380.x, x_380.y, x_380.z, x_381.w);
  let x_385 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_386 : vec2<f32> = vec2<f32>(x_385.x, x_385.y);
  let x_390 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_386.x, x_386.y));
  let x_391 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_390.x, x_390.y, x_391.z, x_391.w);
  let x_393 : vec4<f32> = u_xlat5;
  let x_395 : vec4<f32> = hlslcc_FragCoord;
  let x_397 : vec2<f32> = (vec2<f32>(x_393.x, x_393.y) * vec2<f32>(x_395.x, x_395.y));
  let x_398 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_397.x, x_397.y, x_398.z, x_398.w);
  let x_401 : f32 = u_xlat5.y;
  let x_404 : f32 = x_43.x_ScaleBiasRt.x;
  let x_407 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat57 = ((x_401 * x_404) + x_407);
  let x_409 : f32 = u_xlat57;
  u_xlat5.z = (-(x_409) + 1.0f);
  let x_418 : vec4<f32> = u_xlat5;
  let x_421 : f32 = x_43.x_GlobalMipBias.x;
  let x_422 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_418.x, x_418.z), x_421);
  u_xlat57 = x_422.x;
  let x_424 : f32 = u_xlat57;
  u_xlat1.x = (x_424 + -1.0f);
  let x_429 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_431 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_429 * x_431) + 1.0f);
  let x_435 : f32 = u_xlat57;
  u_xlat57 = min(x_435, 1.0f);
  let x_444 : f32 = x_442.x_MainLightShadowParams.y;
  u_xlatb59 = (0.0f < x_444);
  let x_446 : bool = u_xlatb59;
  if (x_446) {
    let x_450 : f32 = x_442.x_MainLightShadowParams.y;
    u_xlatb59 = (x_450 == 1.0f);
    let x_452 : bool = u_xlatb59;
    if (x_452) {
      let x_456 : vec4<f32> = vs_TEXCOORD6;
      let x_460 : vec4<f32> = x_442.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_456.x, x_456.y, x_456.x, x_456.y) + x_460);
      let x_463 : vec4<f32> = u_xlat5;
      let x_464 : vec2<f32> = vec2<f32>(x_463.x, x_463.y);
      let x_466 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_464.x, x_464.y, x_466);
      let x_479 : vec3<f32> = txVec0;
      let x_481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_479.xy, x_479.z);
      u_xlat6.x = x_481;
      let x_484 : vec4<f32> = u_xlat5;
      let x_485 : vec2<f32> = vec2<f32>(x_484.z, x_484.w);
      let x_487 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_485.x, x_485.y, x_487);
      let x_494 : vec3<f32> = txVec1;
      let x_496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_494.xy, x_494.z);
      u_xlat6.y = x_496;
      let x_498 : vec4<f32> = vs_TEXCOORD6;
      let x_502 : vec4<f32> = x_442.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_498.x, x_498.y, x_498.x, x_498.y) + x_502);
      let x_505 : vec4<f32> = u_xlat5;
      let x_506 : vec2<f32> = vec2<f32>(x_505.x, x_505.y);
      let x_508 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_506.x, x_506.y, x_508);
      let x_515 : vec3<f32> = txVec2;
      let x_517 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_515.xy, x_515.z);
      u_xlat6.z = x_517;
      let x_520 : vec4<f32> = u_xlat5;
      let x_521 : vec2<f32> = vec2<f32>(x_520.z, x_520.w);
      let x_523 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_521.x, x_521.y, x_523);
      let x_530 : vec3<f32> = txVec3;
      let x_532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_530.xy, x_530.z);
      u_xlat6.w = x_532;
      let x_535 : vec4<f32> = u_xlat6;
      u_xlat59 = dot(x_535, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_542 : f32 = x_442.x_MainLightShadowParams.y;
      u_xlatb60 = (x_542 == 2.0f);
      let x_544 : bool = u_xlatb60;
      if (x_544) {
        let x_547 : vec4<f32> = vs_TEXCOORD6;
        let x_550 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_554 : vec2<f32> = ((vec2<f32>(x_547.x, x_547.y) * vec2<f32>(x_550.z, x_550.w)) + vec2<f32>(0.5f, 0.5f));
        let x_555 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_554.x, x_554.y, x_555.z, x_555.w);
        let x_557 : vec4<f32> = u_xlat5;
        let x_559 : vec2<f32> = floor(vec2<f32>(x_557.x, x_557.y));
        let x_560 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_559.x, x_559.y, x_560.z, x_560.w);
        let x_564 : vec4<f32> = vs_TEXCOORD6;
        let x_567 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_570 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_564.x, x_564.y) * vec2<f32>(x_567.z, x_567.w)) + -(vec2<f32>(x_570.x, x_570.y)));
        let x_574 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_574.x, x_574.x, x_574.y, x_574.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_579 : vec4<f32> = u_xlat6;
        let x_581 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_579.x, x_579.x, x_579.z, x_579.z) * vec4<f32>(x_581.x, x_581.x, x_581.z, x_581.z));
        let x_584 : vec4<f32> = u_xlat7;
        let x_588 : vec2<f32> = (vec2<f32>(x_584.y, x_584.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_589 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_588.x, x_589.y, x_588.y, x_589.w);
        let x_591 : vec4<f32> = u_xlat7;
        let x_594 : vec2<f32> = u_xlat43;
        let x_596 : vec2<f32> = ((vec2<f32>(x_591.x, x_591.z) * vec2<f32>(0.5f, 0.5f)) + -(x_594));
        let x_597 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_596.x, x_596.y, x_597.z, x_597.w);
        let x_600 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_600) + vec2<f32>(1.0f, 1.0f));
        let x_604 : vec2<f32> = u_xlat43;
        let x_606 : vec2<f32> = min(x_604, vec2<f32>(0.0f, 0.0f));
        let x_607 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
        let x_609 : vec4<f32> = u_xlat8;
        let x_612 : vec4<f32> = u_xlat8;
        let x_615 : vec2<f32> = u_xlat45;
        let x_616 : vec2<f32> = ((-(vec2<f32>(x_609.x, x_609.y)) * vec2<f32>(x_612.x, x_612.y)) + x_615);
        let x_617 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_619 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_619, vec2<f32>(0.0f, 0.0f));
        let x_621 : vec2<f32> = u_xlat43;
        let x_623 : vec2<f32> = u_xlat43;
        let x_625 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_621) * x_623) + vec2<f32>(x_625.y, x_625.w));
        let x_628 : vec4<f32> = u_xlat8;
        let x_630 : vec2<f32> = (vec2<f32>(x_628.x, x_628.y) + vec2<f32>(1.0f, 1.0f));
        let x_631 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_630.x, x_630.y, x_631.z, x_631.w);
        let x_633 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_633 + vec2<f32>(1.0f, 1.0f));
        let x_636 : vec4<f32> = u_xlat7;
        let x_640 : vec2<f32> = (vec2<f32>(x_636.x, x_636.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_641 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_643 : vec2<f32> = u_xlat45;
        let x_644 : vec2<f32> = (x_643 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_645 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_644.x, x_644.y, x_645.z, x_645.w);
        let x_647 : vec4<f32> = u_xlat8;
        let x_649 : vec2<f32> = (vec2<f32>(x_647.x, x_647.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_650 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_649.x, x_649.y, x_650.z, x_650.w);
        let x_653 : vec2<f32> = u_xlat43;
        let x_654 : vec2<f32> = (x_653 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_655 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
        let x_657 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_657.y, x_657.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_661 : f32 = u_xlat8.x;
        u_xlat9.z = x_661;
        let x_664 : f32 = u_xlat43.x;
        u_xlat9.w = x_664;
        let x_667 : f32 = u_xlat10.x;
        u_xlat7.z = x_667;
        let x_670 : f32 = u_xlat6.x;
        u_xlat7.w = x_670;
        let x_673 : vec4<f32> = u_xlat7;
        let x_675 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_673.z, x_673.w, x_673.x, x_673.z) + vec4<f32>(x_675.z, x_675.w, x_675.x, x_675.z));
        let x_679 : f32 = u_xlat9.y;
        u_xlat8.z = x_679;
        let x_682 : f32 = u_xlat43.y;
        u_xlat8.w = x_682;
        let x_685 : f32 = u_xlat7.y;
        u_xlat10.z = x_685;
        let x_688 : f32 = u_xlat6.z;
        u_xlat10.w = x_688;
        let x_690 : vec4<f32> = u_xlat8;
        let x_692 : vec4<f32> = u_xlat10;
        let x_694 : vec3<f32> = (vec3<f32>(x_690.z, x_690.y, x_690.w) + vec3<f32>(x_692.z, x_692.y, x_692.w));
        let x_695 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
        let x_697 : vec4<f32> = u_xlat7;
        let x_699 : vec4<f32> = u_xlat11;
        let x_701 : vec3<f32> = (vec3<f32>(x_697.x, x_697.z, x_697.w) / vec3<f32>(x_699.z, x_699.w, x_699.y));
        let x_702 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
        let x_704 : vec4<f32> = u_xlat7;
        let x_709 : vec3<f32> = (vec3<f32>(x_704.x, x_704.y, x_704.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_710 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
        let x_712 : vec4<f32> = u_xlat10;
        let x_714 : vec4<f32> = u_xlat6;
        let x_716 : vec3<f32> = (vec3<f32>(x_712.z, x_712.y, x_712.w) / vec3<f32>(x_714.x, x_714.y, x_714.z));
        let x_717 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
        let x_719 : vec4<f32> = u_xlat8;
        let x_721 : vec3<f32> = (vec3<f32>(x_719.x, x_719.y, x_719.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_722 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_721.x, x_721.y, x_721.z, x_722.w);
        let x_724 : vec4<f32> = u_xlat7;
        let x_727 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_729 : vec3<f32> = (vec3<f32>(x_724.y, x_724.x, x_724.z) * vec3<f32>(x_727.x, x_727.x, x_727.x));
        let x_730 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
        let x_732 : vec4<f32> = u_xlat8;
        let x_735 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_737 : vec3<f32> = (vec3<f32>(x_732.x, x_732.y, x_732.z) * vec3<f32>(x_735.y, x_735.y, x_735.y));
        let x_738 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
        let x_741 : f32 = u_xlat8.x;
        u_xlat7.w = x_741;
        let x_743 : vec4<f32> = u_xlat5;
        let x_746 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_749 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_743.x, x_743.y, x_743.x, x_743.y) * vec4<f32>(x_746.x, x_746.y, x_746.x, x_746.y)) + vec4<f32>(x_749.y, x_749.w, x_749.x, x_749.w));
        let x_752 : vec4<f32> = u_xlat5;
        let x_755 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_758 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_752.x, x_752.y) * vec2<f32>(x_755.x, x_755.y)) + vec2<f32>(x_758.z, x_758.w));
        let x_762 : f32 = u_xlat7.y;
        u_xlat8.w = x_762;
        let x_764 : vec4<f32> = u_xlat8;
        let x_765 : vec2<f32> = vec2<f32>(x_764.y, x_764.z);
        let x_766 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_766.x, x_765.x, x_766.z, x_765.y);
        let x_768 : vec4<f32> = u_xlat5;
        let x_771 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_774 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_768.x, x_768.y, x_768.x, x_768.y) * vec4<f32>(x_771.x, x_771.y, x_771.x, x_771.y)) + vec4<f32>(x_774.x, x_774.y, x_774.z, x_774.y));
        let x_777 : vec4<f32> = u_xlat5;
        let x_780 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_783 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_777.x, x_777.y, x_777.x, x_777.y) * vec4<f32>(x_780.x, x_780.y, x_780.x, x_780.y)) + vec4<f32>(x_783.w, x_783.y, x_783.w, x_783.z));
        let x_786 : vec4<f32> = u_xlat5;
        let x_789 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_792 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_786.x, x_786.y, x_786.x, x_786.y) * vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.y)) + vec4<f32>(x_792.x, x_792.w, x_792.z, x_792.w));
        let x_796 : vec4<f32> = u_xlat6;
        let x_798 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_796.x, x_796.x, x_796.x, x_796.y) * vec4<f32>(x_798.z, x_798.w, x_798.y, x_798.z));
        let x_802 : vec4<f32> = u_xlat6;
        let x_804 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_802.y, x_802.y, x_802.z, x_802.z) * x_804);
        let x_808 : f32 = u_xlat6.z;
        let x_810 : f32 = u_xlat11.y;
        u_xlat60 = (x_808 * x_810);
        let x_813 : vec4<f32> = u_xlat9;
        let x_814 : vec2<f32> = vec2<f32>(x_813.x, x_813.y);
        let x_816 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_814.x, x_814.y, x_816);
        let x_824 : vec3<f32> = txVec4;
        let x_826 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_824.xy, x_824.z);
        u_xlat61 = x_826;
        let x_828 : vec4<f32> = u_xlat9;
        let x_829 : vec2<f32> = vec2<f32>(x_828.z, x_828.w);
        let x_831 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_829.x, x_829.y, x_831);
        let x_838 : vec3<f32> = txVec5;
        let x_840 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_838.xy, x_838.z);
        u_xlat5.x = x_840;
        let x_843 : f32 = u_xlat5.x;
        let x_845 : f32 = u_xlat12.y;
        u_xlat5.x = (x_843 * x_845);
        let x_849 : f32 = u_xlat12.x;
        let x_850 : f32 = u_xlat61;
        let x_853 : f32 = u_xlat5.x;
        u_xlat61 = ((x_849 * x_850) + x_853);
        let x_856 : vec2<f32> = u_xlat43;
        let x_858 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_856.x, x_856.y, x_858);
        let x_865 : vec3<f32> = txVec6;
        let x_867 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_865.xy, x_865.z);
        u_xlat5.x = x_867;
        let x_870 : f32 = u_xlat12.z;
        let x_872 : f32 = u_xlat5.x;
        let x_874 : f32 = u_xlat61;
        u_xlat61 = ((x_870 * x_872) + x_874);
        let x_877 : vec4<f32> = u_xlat8;
        let x_878 : vec2<f32> = vec2<f32>(x_877.x, x_877.y);
        let x_880 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_878.x, x_878.y, x_880);
        let x_887 : vec3<f32> = txVec7;
        let x_889 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_887.xy, x_887.z);
        u_xlat5.x = x_889;
        let x_892 : f32 = u_xlat12.w;
        let x_894 : f32 = u_xlat5.x;
        let x_896 : f32 = u_xlat61;
        u_xlat61 = ((x_892 * x_894) + x_896);
        let x_899 : vec4<f32> = u_xlat10;
        let x_900 : vec2<f32> = vec2<f32>(x_899.x, x_899.y);
        let x_902 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_900.x, x_900.y, x_902);
        let x_909 : vec3<f32> = txVec8;
        let x_911 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_909.xy, x_909.z);
        u_xlat5.x = x_911;
        let x_914 : f32 = u_xlat13.x;
        let x_916 : f32 = u_xlat5.x;
        let x_918 : f32 = u_xlat61;
        u_xlat61 = ((x_914 * x_916) + x_918);
        let x_921 : vec4<f32> = u_xlat10;
        let x_922 : vec2<f32> = vec2<f32>(x_921.z, x_921.w);
        let x_924 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_922.x, x_922.y, x_924);
        let x_931 : vec3<f32> = txVec9;
        let x_933 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_931.xy, x_931.z);
        u_xlat5.x = x_933;
        let x_936 : f32 = u_xlat13.y;
        let x_938 : f32 = u_xlat5.x;
        let x_940 : f32 = u_xlat61;
        u_xlat61 = ((x_936 * x_938) + x_940);
        let x_943 : vec4<f32> = u_xlat8;
        let x_944 : vec2<f32> = vec2<f32>(x_943.z, x_943.w);
        let x_946 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_944.x, x_944.y, x_946);
        let x_953 : vec3<f32> = txVec10;
        let x_955 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_953.xy, x_953.z);
        u_xlat5.x = x_955;
        let x_958 : f32 = u_xlat13.z;
        let x_960 : f32 = u_xlat5.x;
        let x_962 : f32 = u_xlat61;
        u_xlat61 = ((x_958 * x_960) + x_962);
        let x_965 : vec4<f32> = u_xlat7;
        let x_966 : vec2<f32> = vec2<f32>(x_965.x, x_965.y);
        let x_968 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_966.x, x_966.y, x_968);
        let x_975 : vec3<f32> = txVec11;
        let x_977 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_975.xy, x_975.z);
        u_xlat5.x = x_977;
        let x_980 : f32 = u_xlat13.w;
        let x_982 : f32 = u_xlat5.x;
        let x_984 : f32 = u_xlat61;
        u_xlat61 = ((x_980 * x_982) + x_984);
        let x_987 : vec4<f32> = u_xlat7;
        let x_988 : vec2<f32> = vec2<f32>(x_987.z, x_987.w);
        let x_990 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_988.x, x_988.y, x_990);
        let x_997 : vec3<f32> = txVec12;
        let x_999 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_997.xy, x_997.z);
        u_xlat5.x = x_999;
        let x_1001 : f32 = u_xlat60;
        let x_1003 : f32 = u_xlat5.x;
        let x_1005 : f32 = u_xlat61;
        u_xlat59 = ((x_1001 * x_1003) + x_1005);
      } else {
        let x_1008 : vec4<f32> = vs_TEXCOORD6;
        let x_1011 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1014 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.y) * vec2<f32>(x_1011.z, x_1011.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1015 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1014.x, x_1014.y, x_1015.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat5;
        let x_1019 : vec2<f32> = floor(vec2<f32>(x_1017.x, x_1017.y));
        let x_1020 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1019.x, x_1019.y, x_1020.z, x_1020.w);
        let x_1022 : vec4<f32> = vs_TEXCOORD6;
        let x_1025 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1028 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_1022.x, x_1022.y) * vec2<f32>(x_1025.z, x_1025.w)) + -(vec2<f32>(x_1028.x, x_1028.y)));
        let x_1032 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_1032.x, x_1032.x, x_1032.y, x_1032.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1035 : vec4<f32> = u_xlat6;
        let x_1037 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_1035.x, x_1035.x, x_1035.z, x_1035.z) * vec4<f32>(x_1037.x, x_1037.x, x_1037.z, x_1037.z));
        let x_1040 : vec4<f32> = u_xlat7;
        let x_1044 : vec2<f32> = (vec2<f32>(x_1040.y, x_1040.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1045 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1045.x, x_1044.x, x_1045.z, x_1044.y);
        let x_1047 : vec4<f32> = u_xlat7;
        let x_1050 : vec2<f32> = u_xlat43;
        let x_1052 : vec2<f32> = ((vec2<f32>(x_1047.x, x_1047.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1050));
        let x_1053 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1052.x, x_1053.y, x_1052.y, x_1053.w);
        let x_1055 : vec2<f32> = u_xlat43;
        let x_1057 : vec2<f32> = (-(x_1055) + vec2<f32>(1.0f, 1.0f));
        let x_1058 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
        let x_1060 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1060, vec2<f32>(0.0f, 0.0f));
        let x_1062 : vec2<f32> = u_xlat45;
        let x_1064 : vec2<f32> = u_xlat45;
        let x_1066 : vec4<f32> = u_xlat7;
        let x_1068 : vec2<f32> = ((-(x_1062) * x_1064) + vec2<f32>(x_1066.x, x_1066.y));
        let x_1069 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1069.w);
        let x_1071 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1071, vec2<f32>(0.0f, 0.0f));
        let x_1074 : vec2<f32> = u_xlat45;
        let x_1076 : vec2<f32> = u_xlat45;
        let x_1078 : vec4<f32> = u_xlat6;
        let x_1080 : vec2<f32> = ((-(x_1074) * x_1076) + vec2<f32>(x_1078.y, x_1078.w));
        let x_1081 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1080.x, x_1081.y, x_1080.y);
        let x_1083 : vec4<f32> = u_xlat7;
        let x_1085 : vec2<f32> = (vec2<f32>(x_1083.x, x_1083.y) + vec2<f32>(2.0f, 2.0f));
        let x_1086 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1085.x, x_1085.y, x_1086.z, x_1086.w);
        let x_1088 : vec3<f32> = u_xlat25;
        let x_1090 : vec2<f32> = (vec2<f32>(x_1088.x, x_1088.z) + vec2<f32>(2.0f, 2.0f));
        let x_1091 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1091.x, x_1090.x, x_1091.z, x_1090.y);
        let x_1094 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1094 * 0.081632003f);
        let x_1098 : vec4<f32> = u_xlat6;
        let x_1101 : vec3<f32> = (vec3<f32>(x_1098.z, x_1098.x, x_1098.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1102 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
        let x_1104 : vec4<f32> = u_xlat7;
        let x_1107 : vec2<f32> = (vec2<f32>(x_1104.x, x_1104.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1108 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1107.x, x_1107.y, x_1108.z, x_1108.w);
        let x_1111 : f32 = u_xlat10.y;
        u_xlat9.x = x_1111;
        let x_1113 : vec2<f32> = u_xlat43;
        let x_1120 : vec2<f32> = ((vec2<f32>(x_1113.x, x_1113.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1121 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1121.x, x_1120.x, x_1121.z, x_1120.y);
        let x_1123 : vec2<f32> = u_xlat43;
        let x_1127 : vec2<f32> = ((vec2<f32>(x_1123.x, x_1123.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1128 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1127.x, x_1128.y, x_1127.y, x_1128.w);
        let x_1131 : f32 = u_xlat6.x;
        u_xlat7.y = x_1131;
        let x_1134 : f32 = u_xlat8.y;
        u_xlat7.w = x_1134;
        let x_1136 : vec4<f32> = u_xlat7;
        let x_1137 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1136 + x_1137);
        let x_1139 : vec2<f32> = u_xlat43;
        let x_1142 : vec2<f32> = ((vec2<f32>(x_1139.y, x_1139.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1143 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1143.x, x_1142.x, x_1143.z, x_1142.y);
        let x_1145 : vec2<f32> = u_xlat43;
        let x_1148 : vec2<f32> = ((vec2<f32>(x_1145.y, x_1145.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1149 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1148.x, x_1149.y, x_1148.y, x_1149.w);
        let x_1152 : f32 = u_xlat6.y;
        u_xlat8.y = x_1152;
        let x_1154 : vec4<f32> = u_xlat8;
        let x_1155 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1154 + x_1155);
        let x_1157 : vec4<f32> = u_xlat7;
        let x_1158 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1157 / x_1158);
        let x_1160 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1160 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1166 : vec4<f32> = u_xlat8;
        let x_1167 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1166 / x_1167);
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1169 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1171 : vec4<f32> = u_xlat7;
        let x_1174 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1171.w, x_1171.x, x_1171.y, x_1171.z) * vec4<f32>(x_1174.x, x_1174.x, x_1174.x, x_1174.x));
        let x_1177 : vec4<f32> = u_xlat8;
        let x_1180 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1177.x, x_1177.w, x_1177.y, x_1177.z) * vec4<f32>(x_1180.y, x_1180.y, x_1180.y, x_1180.y));
        let x_1183 : vec4<f32> = u_xlat7;
        let x_1184 : vec3<f32> = vec3<f32>(x_1183.y, x_1183.z, x_1183.w);
        let x_1185 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1184.x, x_1185.y, x_1184.y, x_1184.z);
        let x_1188 : f32 = u_xlat8.x;
        u_xlat10.y = x_1188;
        let x_1190 : vec4<f32> = u_xlat5;
        let x_1193 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1196 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1190.x, x_1190.y, x_1190.x, x_1190.y) * vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.y)) + vec4<f32>(x_1196.x, x_1196.y, x_1196.z, x_1196.y));
        let x_1199 : vec4<f32> = u_xlat5;
        let x_1202 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1205 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1199.x, x_1199.y) * vec2<f32>(x_1202.x, x_1202.y)) + vec2<f32>(x_1205.w, x_1205.y));
        let x_1209 : f32 = u_xlat10.y;
        u_xlat7.y = x_1209;
        let x_1212 : f32 = u_xlat8.z;
        u_xlat10.y = x_1212;
        let x_1214 : vec4<f32> = u_xlat5;
        let x_1217 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1220 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1214.x, x_1214.y, x_1214.x, x_1214.y) * vec4<f32>(x_1217.x, x_1217.y, x_1217.x, x_1217.y)) + vec4<f32>(x_1220.x, x_1220.y, x_1220.z, x_1220.y));
        let x_1223 : vec4<f32> = u_xlat5;
        let x_1226 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1229 : vec4<f32> = u_xlat10;
        let x_1231 : vec2<f32> = ((vec2<f32>(x_1223.x, x_1223.y) * vec2<f32>(x_1226.x, x_1226.y)) + vec2<f32>(x_1229.w, x_1229.y));
        let x_1232 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1231.x, x_1231.y, x_1232.z, x_1232.w);
        let x_1235 : f32 = u_xlat10.y;
        u_xlat7.z = x_1235;
        let x_1238 : vec4<f32> = u_xlat5;
        let x_1241 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1238.x, x_1238.y, x_1238.x, x_1238.y) * vec4<f32>(x_1241.x, x_1241.y, x_1241.x, x_1241.y)) + vec4<f32>(x_1244.x, x_1244.y, x_1244.x, x_1244.z));
        let x_1248 : f32 = u_xlat8.w;
        u_xlat10.y = x_1248;
        let x_1251 : vec4<f32> = u_xlat5;
        let x_1254 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1257 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1251.x, x_1251.y, x_1251.x, x_1251.y) * vec4<f32>(x_1254.x, x_1254.y, x_1254.x, x_1254.y)) + vec4<f32>(x_1257.x, x_1257.y, x_1257.z, x_1257.y));
        let x_1261 : vec4<f32> = u_xlat5;
        let x_1264 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1261.x, x_1261.y) * vec2<f32>(x_1264.x, x_1264.y)) + vec2<f32>(x_1267.w, x_1267.y));
        let x_1271 : f32 = u_xlat10.y;
        u_xlat7.w = x_1271;
        let x_1274 : vec4<f32> = u_xlat5;
        let x_1277 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1280 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1274.x, x_1274.y) * vec2<f32>(x_1277.x, x_1277.y)) + vec2<f32>(x_1280.x, x_1280.w));
        let x_1283 : vec4<f32> = u_xlat10;
        let x_1284 : vec3<f32> = vec3<f32>(x_1283.x, x_1283.z, x_1283.w);
        let x_1285 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1284.x, x_1285.y, x_1284.y, x_1284.z);
        let x_1287 : vec4<f32> = u_xlat5;
        let x_1290 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1293 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1287.x, x_1287.y, x_1287.x, x_1287.y) * vec4<f32>(x_1290.x, x_1290.y, x_1290.x, x_1290.y)) + vec4<f32>(x_1293.x, x_1293.y, x_1293.z, x_1293.y));
        let x_1297 : vec4<f32> = u_xlat5;
        let x_1300 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1303 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1297.x, x_1297.y) * vec2<f32>(x_1300.x, x_1300.y)) + vec2<f32>(x_1303.w, x_1303.y));
        let x_1307 : f32 = u_xlat7.x;
        u_xlat8.x = x_1307;
        let x_1309 : vec4<f32> = u_xlat5;
        let x_1312 : vec4<f32> = x_442.x_MainLightShadowmapSize;
        let x_1315 : vec4<f32> = u_xlat8;
        let x_1317 : vec2<f32> = ((vec2<f32>(x_1309.x, x_1309.y) * vec2<f32>(x_1312.x, x_1312.y)) + vec2<f32>(x_1315.x, x_1315.y));
        let x_1318 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1317.x, x_1317.y, x_1318.z, x_1318.w);
        let x_1321 : vec4<f32> = u_xlat6;
        let x_1323 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1321.x, x_1321.x, x_1321.x, x_1321.x) * x_1323);
        let x_1326 : vec4<f32> = u_xlat6;
        let x_1328 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1326.y, x_1326.y, x_1326.y, x_1326.y) * x_1328);
        let x_1331 : vec4<f32> = u_xlat6;
        let x_1333 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1331.z, x_1331.z, x_1331.z, x_1331.z) * x_1333);
        let x_1335 : vec4<f32> = u_xlat6;
        let x_1337 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1335.w, x_1335.w, x_1335.w, x_1335.w) * x_1337);
        let x_1340 : vec4<f32> = u_xlat11;
        let x_1341 : vec2<f32> = vec2<f32>(x_1340.x, x_1340.y);
        let x_1343 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1341.x, x_1341.y, x_1343);
        let x_1350 : vec3<f32> = txVec13;
        let x_1352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1350.xy, x_1350.z);
        u_xlat60 = x_1352;
        let x_1354 : vec4<f32> = u_xlat11;
        let x_1355 : vec2<f32> = vec2<f32>(x_1354.z, x_1354.w);
        let x_1357 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1355.x, x_1355.y, x_1357);
        let x_1364 : vec3<f32> = txVec14;
        let x_1366 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1364.xy, x_1364.z);
        u_xlat61 = x_1366;
        let x_1367 : f32 = u_xlat61;
        let x_1369 : f32 = u_xlat16.y;
        u_xlat61 = (x_1367 * x_1369);
        let x_1372 : f32 = u_xlat16.x;
        let x_1373 : f32 = u_xlat60;
        let x_1375 : f32 = u_xlat61;
        u_xlat60 = ((x_1372 * x_1373) + x_1375);
        let x_1378 : vec2<f32> = u_xlat43;
        let x_1380 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1378.x, x_1378.y, x_1380);
        let x_1387 : vec3<f32> = txVec15;
        let x_1389 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1387.xy, x_1387.z);
        u_xlat61 = x_1389;
        let x_1391 : f32 = u_xlat16.z;
        let x_1392 : f32 = u_xlat61;
        let x_1394 : f32 = u_xlat60;
        u_xlat60 = ((x_1391 * x_1392) + x_1394);
        let x_1397 : vec4<f32> = u_xlat14;
        let x_1398 : vec2<f32> = vec2<f32>(x_1397.x, x_1397.y);
        let x_1400 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1398.x, x_1398.y, x_1400);
        let x_1407 : vec3<f32> = txVec16;
        let x_1409 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1407.xy, x_1407.z);
        u_xlat61 = x_1409;
        let x_1411 : f32 = u_xlat16.w;
        let x_1412 : f32 = u_xlat61;
        let x_1414 : f32 = u_xlat60;
        u_xlat60 = ((x_1411 * x_1412) + x_1414);
        let x_1417 : vec4<f32> = u_xlat12;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec17;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1427.xy, x_1427.z);
        u_xlat61 = x_1429;
        let x_1431 : f32 = u_xlat17.x;
        let x_1432 : f32 = u_xlat61;
        let x_1434 : f32 = u_xlat60;
        u_xlat60 = ((x_1431 * x_1432) + x_1434);
        let x_1437 : vec4<f32> = u_xlat12;
        let x_1438 : vec2<f32> = vec2<f32>(x_1437.z, x_1437.w);
        let x_1440 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1438.x, x_1438.y, x_1440);
        let x_1447 : vec3<f32> = txVec18;
        let x_1449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1447.xy, x_1447.z);
        u_xlat61 = x_1449;
        let x_1451 : f32 = u_xlat17.y;
        let x_1452 : f32 = u_xlat61;
        let x_1454 : f32 = u_xlat60;
        u_xlat60 = ((x_1451 * x_1452) + x_1454);
        let x_1457 : vec4<f32> = u_xlat13;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.x, x_1457.y);
        let x_1460 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec19;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1467.xy, x_1467.z);
        u_xlat61 = x_1469;
        let x_1471 : f32 = u_xlat17.z;
        let x_1472 : f32 = u_xlat61;
        let x_1474 : f32 = u_xlat60;
        u_xlat60 = ((x_1471 * x_1472) + x_1474);
        let x_1477 : vec4<f32> = u_xlat14;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.z, x_1477.w);
        let x_1480 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec20;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1487.xy, x_1487.z);
        u_xlat61 = x_1489;
        let x_1491 : f32 = u_xlat17.w;
        let x_1492 : f32 = u_xlat61;
        let x_1494 : f32 = u_xlat60;
        u_xlat60 = ((x_1491 * x_1492) + x_1494);
        let x_1497 : vec4<f32> = u_xlat15;
        let x_1498 : vec2<f32> = vec2<f32>(x_1497.x, x_1497.y);
        let x_1500 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec21;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1507.xy, x_1507.z);
        u_xlat61 = x_1509;
        let x_1511 : f32 = u_xlat18.x;
        let x_1512 : f32 = u_xlat61;
        let x_1514 : f32 = u_xlat60;
        u_xlat60 = ((x_1511 * x_1512) + x_1514);
        let x_1517 : vec4<f32> = u_xlat15;
        let x_1518 : vec2<f32> = vec2<f32>(x_1517.z, x_1517.w);
        let x_1520 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
        let x_1527 : vec3<f32> = txVec22;
        let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1527.xy, x_1527.z);
        u_xlat61 = x_1529;
        let x_1531 : f32 = u_xlat18.y;
        let x_1532 : f32 = u_xlat61;
        let x_1534 : f32 = u_xlat60;
        u_xlat60 = ((x_1531 * x_1532) + x_1534);
        let x_1537 : vec2<f32> = u_xlat26;
        let x_1539 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec23;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1546.xy, x_1546.z);
        u_xlat61 = x_1548;
        let x_1550 : f32 = u_xlat18.z;
        let x_1551 : f32 = u_xlat61;
        let x_1553 : f32 = u_xlat60;
        u_xlat60 = ((x_1550 * x_1551) + x_1553);
        let x_1556 : vec2<f32> = u_xlat51;
        let x_1558 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1556.x, x_1556.y, x_1558);
        let x_1565 : vec3<f32> = txVec24;
        let x_1567 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1565.xy, x_1565.z);
        u_xlat61 = x_1567;
        let x_1569 : f32 = u_xlat18.w;
        let x_1570 : f32 = u_xlat61;
        let x_1572 : f32 = u_xlat60;
        u_xlat60 = ((x_1569 * x_1570) + x_1572);
        let x_1575 : vec4<f32> = u_xlat10;
        let x_1576 : vec2<f32> = vec2<f32>(x_1575.x, x_1575.y);
        let x_1578 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec25;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1585.xy, x_1585.z);
        u_xlat61 = x_1587;
        let x_1589 : f32 = u_xlat6.x;
        let x_1590 : f32 = u_xlat61;
        let x_1592 : f32 = u_xlat60;
        u_xlat60 = ((x_1589 * x_1590) + x_1592);
        let x_1595 : vec4<f32> = u_xlat10;
        let x_1596 : vec2<f32> = vec2<f32>(x_1595.z, x_1595.w);
        let x_1598 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
        let x_1605 : vec3<f32> = txVec26;
        let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1605.xy, x_1605.z);
        u_xlat61 = x_1607;
        let x_1609 : f32 = u_xlat6.y;
        let x_1610 : f32 = u_xlat61;
        let x_1612 : f32 = u_xlat60;
        u_xlat60 = ((x_1609 * x_1610) + x_1612);
        let x_1615 : vec2<f32> = u_xlat46;
        let x_1617 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec27;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1624.xy, x_1624.z);
        u_xlat61 = x_1626;
        let x_1628 : f32 = u_xlat6.z;
        let x_1629 : f32 = u_xlat61;
        let x_1631 : f32 = u_xlat60;
        u_xlat60 = ((x_1628 * x_1629) + x_1631);
        let x_1634 : vec4<f32> = u_xlat5;
        let x_1635 : vec2<f32> = vec2<f32>(x_1634.x, x_1634.y);
        let x_1637 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1635.x, x_1635.y, x_1637);
        let x_1644 : vec3<f32> = txVec28;
        let x_1646 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1644.xy, x_1644.z);
        u_xlat61 = x_1646;
        let x_1648 : f32 = u_xlat6.w;
        let x_1649 : f32 = u_xlat61;
        let x_1651 : f32 = u_xlat60;
        u_xlat59 = ((x_1648 * x_1649) + x_1651);
      }
    }
  } else {
    let x_1655 : vec4<f32> = vs_TEXCOORD6;
    let x_1656 : vec2<f32> = vec2<f32>(x_1655.x, x_1655.y);
    let x_1658 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1656.x, x_1656.y, x_1658);
    let x_1665 : vec3<f32> = txVec29;
    let x_1667 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1665.xy, x_1665.z);
    u_xlat59 = x_1667;
  }
  let x_1669 : f32 = x_442.x_MainLightShadowParams.x;
  u_xlat60 = (-(x_1669) + 1.0f);
  let x_1672 : f32 = u_xlat59;
  let x_1674 : f32 = x_442.x_MainLightShadowParams.x;
  let x_1676 : f32 = u_xlat60;
  u_xlat59 = ((x_1672 * x_1674) + x_1676);
  let x_1679 : f32 = vs_TEXCOORD6.z;
  u_xlatb60 = (0.0f >= x_1679);
  let x_1683 : f32 = vs_TEXCOORD6.z;
  u_xlatb61 = (x_1683 >= 1.0f);
  let x_1685 : bool = u_xlatb60;
  let x_1686 : bool = u_xlatb61;
  u_xlatb60 = (x_1685 | x_1686);
  let x_1688 : bool = u_xlatb60;
  let x_1689 : f32 = u_xlat59;
  u_xlat59 = select(x_1689, 1.0f, x_1688);
  let x_1693 : vec3<f32> = vs_TEXCOORD1;
  let x_1696 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1698 : vec3<f32> = (x_1693 + -(x_1696));
  let x_1699 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1698.x, x_1698.y, x_1698.z, x_1699.w);
  let x_1701 : vec4<f32> = u_xlat5;
  let x_1703 : vec4<f32> = u_xlat5;
  u_xlat60 = dot(vec3<f32>(x_1701.x, x_1701.y, x_1701.z), vec3<f32>(x_1703.x, x_1703.y, x_1703.z));
  let x_1706 : f32 = u_xlat60;
  let x_1708 : f32 = x_442.x_MainLightShadowParams.z;
  let x_1711 : f32 = x_442.x_MainLightShadowParams.w;
  u_xlat60 = ((x_1706 * x_1708) + x_1711);
  let x_1713 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1713, 0.0f, 1.0f);
  let x_1715 : f32 = u_xlat59;
  u_xlat61 = (-(x_1715) + 1.0f);
  let x_1718 : f32 = u_xlat60;
  let x_1719 : f32 = u_xlat61;
  let x_1721 : f32 = u_xlat59;
  u_xlat59 = ((x_1718 * x_1719) + x_1721);
  let x_1723 : vec4<f32> = u_xlat1;
  let x_1726 : vec4<f32> = x_43.x_MainLightColor;
  let x_1728 : vec3<f32> = (vec3<f32>(x_1723.x, x_1723.x, x_1723.x) * vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
  let x_1729 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1728.x, x_1728.y, x_1728.z, x_1729.w);
  let x_1731 : f32 = u_xlat57;
  let x_1733 : vec4<f32> = u_xlat4;
  let x_1735 : vec3<f32> = (vec3<f32>(x_1731, x_1731, x_1731) * vec3<f32>(x_1733.x, x_1733.y, x_1733.z));
  let x_1736 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1735.x, x_1735.y, x_1735.z, x_1736.w);
  let x_1738 : f32 = u_xlat59;
  let x_1740 : f32 = x_236.unity_LightData.z;
  u_xlat57 = (x_1738 * x_1740);
  let x_1742 : f32 = u_xlat57;
  let x_1744 : vec4<f32> = u_xlat5;
  let x_1746 : vec3<f32> = (vec3<f32>(x_1742, x_1742, x_1742) * vec3<f32>(x_1744.x, x_1744.y, x_1744.z));
  let x_1747 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1746.x, x_1746.y, x_1746.z, x_1747.w);
  let x_1749 : vec3<f32> = u_xlat2;
  let x_1752 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat57 = dot(x_1749, vec3<f32>(x_1752.x, x_1752.y, x_1752.z));
  let x_1755 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1755, 0.0f, 1.0f);
  let x_1757 : f32 = u_xlat57;
  let x_1759 : vec4<f32> = u_xlat5;
  let x_1761 : vec3<f32> = (vec3<f32>(x_1757, x_1757, x_1757) * vec3<f32>(x_1759.x, x_1759.y, x_1759.z));
  let x_1762 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1761.x, x_1761.y, x_1761.z, x_1762.w);
  let x_1765 : f32 = x_56.x_SpecColor.w;
  u_xlat57 = ((x_1765 * 10.0f) + 1.0f);
  let x_1769 : f32 = u_xlat57;
  u_xlat57 = exp2(x_1769);
  let x_1771 : vec3<f32> = u_xlat3;
  let x_1772 : vec3<f32> = u_xlat19;
  let x_1776 : vec4<f32> = x_43.x_MainLightPosition;
  let x_1778 : vec3<f32> = ((x_1771 * vec3<f32>(x_1772.x, x_1772.x, x_1772.x)) + vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
  let x_1779 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1779.w);
  let x_1781 : vec4<f32> = u_xlat7;
  let x_1783 : vec4<f32> = u_xlat7;
  u_xlat59 = dot(vec3<f32>(x_1781.x, x_1781.y, x_1781.z), vec3<f32>(x_1783.x, x_1783.y, x_1783.z));
  let x_1786 : f32 = u_xlat59;
  u_xlat59 = max(x_1786, 1.17549435e-37f);
  let x_1788 : f32 = u_xlat59;
  u_xlat59 = inverseSqrt(x_1788);
  let x_1790 : f32 = u_xlat59;
  let x_1792 : vec4<f32> = u_xlat7;
  let x_1794 : vec3<f32> = (vec3<f32>(x_1790, x_1790, x_1790) * vec3<f32>(x_1792.x, x_1792.y, x_1792.z));
  let x_1795 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1794.x, x_1794.y, x_1794.z, x_1795.w);
  let x_1797 : vec3<f32> = u_xlat2;
  let x_1798 : vec4<f32> = u_xlat7;
  u_xlat59 = dot(x_1797, vec3<f32>(x_1798.x, x_1798.y, x_1798.z));
  let x_1801 : f32 = u_xlat59;
  u_xlat59 = clamp(x_1801, 0.0f, 1.0f);
  let x_1803 : f32 = u_xlat59;
  u_xlat59 = log2(x_1803);
  let x_1805 : f32 = u_xlat57;
  let x_1806 : f32 = u_xlat59;
  u_xlat59 = (x_1805 * x_1806);
  let x_1808 : f32 = u_xlat59;
  u_xlat59 = exp2(x_1808);
  let x_1810 : f32 = u_xlat59;
  let x_1813 : vec4<f32> = x_56.x_SpecColor;
  let x_1815 : vec3<f32> = (vec3<f32>(x_1810, x_1810, x_1810) * vec3<f32>(x_1813.x, x_1813.y, x_1813.z));
  let x_1816 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1815.x, x_1815.y, x_1815.z, x_1816.w);
  let x_1818 : vec4<f32> = u_xlat5;
  let x_1820 : vec4<f32> = u_xlat7;
  let x_1822 : vec3<f32> = (vec3<f32>(x_1818.x, x_1818.y, x_1818.z) * vec3<f32>(x_1820.x, x_1820.y, x_1820.z));
  let x_1823 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1822.x, x_1822.y, x_1822.z, x_1823.w);
  let x_1825 : vec4<f32> = u_xlat6;
  let x_1827 : vec4<f32> = u_xlat1;
  let x_1830 : vec4<f32> = u_xlat5;
  let x_1832 : vec3<f32> = ((vec3<f32>(x_1825.x, x_1825.y, x_1825.z) * vec3<f32>(x_1827.y, x_1827.z, x_1827.w)) + vec3<f32>(x_1830.x, x_1830.y, x_1830.z));
  let x_1833 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1832.x, x_1832.y, x_1832.z, x_1833.w);
  let x_1836 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1838 : f32 = x_236.unity_LightData.y;
  u_xlat59 = min(x_1836, x_1838);
  let x_1842 : f32 = u_xlat59;
  u_xlatu59 = bitcast<u32>(i32(x_1842));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1854 : u32 = u_xlatu_loop_1;
    let x_1855 : u32 = u_xlatu59;
    if ((x_1854 < x_1855)) {
    } else {
      break;
    }
    let x_1858 : u32 = u_xlatu_loop_1;
    u_xlatu61 = (x_1858 >> 2u);
    let x_1862 : u32 = u_xlatu_loop_1;
    u_xlati62 = bitcast<i32>((x_1862 & 3u));
    let x_1865 : u32 = u_xlatu61;
    let x_1868 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_1865)];
    let x_1878 : i32 = u_xlati62;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1883 : vec4<u32> = indexable[x_1878];
    u_xlat61 = dot(x_1868, bitcast<vec4<f32>>(x_1883));
    let x_1887 : f32 = u_xlat61;
    u_xlati61 = i32(x_1887);
    let x_1889 : vec3<f32> = vs_TEXCOORD1;
    let x_1901 : i32 = u_xlati61;
    let x_1903 : vec4<f32> = x_1900.x_AdditionalLightsPosition[x_1901];
    let x_1906 : i32 = u_xlati61;
    let x_1908 : vec4<f32> = x_1900.x_AdditionalLightsPosition[x_1906];
    let x_1910 : vec3<f32> = ((-(x_1889) * vec3<f32>(x_1903.w, x_1903.w, x_1903.w)) + vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
    let x_1911 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
    let x_1914 : vec4<f32> = u_xlat7;
    let x_1916 : vec4<f32> = u_xlat7;
    u_xlat62 = dot(vec3<f32>(x_1914.x, x_1914.y, x_1914.z), vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
    let x_1919 : f32 = u_xlat62;
    u_xlat62 = max(x_1919, 6.10351562e-05f);
    let x_1923 : f32 = u_xlat62;
    u_xlat63 = inverseSqrt(x_1923);
    let x_1925 : f32 = u_xlat63;
    let x_1927 : vec4<f32> = u_xlat7;
    let x_1929 : vec3<f32> = (vec3<f32>(x_1925, x_1925, x_1925) * vec3<f32>(x_1927.x, x_1927.y, x_1927.z));
    let x_1930 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1929.x, x_1929.y, x_1929.z, x_1930.w);
    let x_1932 : f32 = u_xlat62;
    u_xlat63 = (1.0f / x_1932);
    let x_1934 : f32 = u_xlat62;
    let x_1935 : i32 = u_xlati61;
    let x_1937 : f32 = x_1900.x_AdditionalLightsAttenuation[x_1935].x;
    u_xlat62 = (x_1934 * x_1937);
    let x_1939 : f32 = u_xlat62;
    let x_1941 : f32 = u_xlat62;
    u_xlat62 = ((-(x_1939) * x_1941) + 1.0f);
    let x_1944 : f32 = u_xlat62;
    u_xlat62 = max(x_1944, 0.0f);
    let x_1946 : f32 = u_xlat62;
    let x_1947 : f32 = u_xlat62;
    u_xlat62 = (x_1946 * x_1947);
    let x_1949 : f32 = u_xlat62;
    let x_1950 : f32 = u_xlat63;
    u_xlat62 = (x_1949 * x_1950);
    let x_1952 : i32 = u_xlati61;
    let x_1954 : vec4<f32> = x_1900.x_AdditionalLightsSpotDir[x_1952];
    let x_1956 : vec4<f32> = u_xlat7;
    u_xlat63 = dot(vec3<f32>(x_1954.x, x_1954.y, x_1954.z), vec3<f32>(x_1956.x, x_1956.y, x_1956.z));
    let x_1959 : f32 = u_xlat63;
    let x_1960 : i32 = u_xlati61;
    let x_1962 : f32 = x_1900.x_AdditionalLightsAttenuation[x_1960].z;
    let x_1964 : i32 = u_xlati61;
    let x_1966 : f32 = x_1900.x_AdditionalLightsAttenuation[x_1964].w;
    u_xlat63 = ((x_1959 * x_1962) + x_1966);
    let x_1968 : f32 = u_xlat63;
    u_xlat63 = clamp(x_1968, 0.0f, 1.0f);
    let x_1970 : f32 = u_xlat63;
    let x_1971 : f32 = u_xlat63;
    u_xlat63 = (x_1970 * x_1971);
    let x_1973 : f32 = u_xlat62;
    let x_1974 : f32 = u_xlat63;
    u_xlat62 = (x_1973 * x_1974);
    let x_1976 : vec4<f32> = u_xlat1;
    let x_1978 : i32 = u_xlati61;
    let x_1980 : vec4<f32> = x_1900.x_AdditionalLightsColor[x_1978];
    let x_1982 : vec3<f32> = (vec3<f32>(x_1976.x, x_1976.x, x_1976.x) * vec3<f32>(x_1980.x, x_1980.y, x_1980.z));
    let x_1983 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1982.x, x_1982.y, x_1982.z, x_1983.w);
    let x_1985 : f32 = u_xlat62;
    let x_1987 : vec4<f32> = u_xlat8;
    let x_1989 : vec3<f32> = (vec3<f32>(x_1985, x_1985, x_1985) * vec3<f32>(x_1987.x, x_1987.y, x_1987.z));
    let x_1990 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1989.x, x_1989.y, x_1989.z, x_1990.w);
    let x_1992 : vec3<f32> = u_xlat2;
    let x_1993 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(x_1992, vec3<f32>(x_1993.x, x_1993.y, x_1993.z));
    let x_1996 : f32 = u_xlat61;
    u_xlat61 = clamp(x_1996, 0.0f, 1.0f);
    let x_1998 : f32 = u_xlat61;
    let x_2000 : vec4<f32> = u_xlat8;
    let x_2002 : vec3<f32> = (vec3<f32>(x_1998, x_1998, x_1998) * vec3<f32>(x_2000.x, x_2000.y, x_2000.z));
    let x_2003 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2002.x, x_2002.y, x_2002.z, x_2003.w);
    let x_2005 : vec3<f32> = u_xlat3;
    let x_2006 : vec3<f32> = u_xlat19;
    let x_2009 : vec4<f32> = u_xlat7;
    let x_2011 : vec3<f32> = ((x_2005 * vec3<f32>(x_2006.x, x_2006.x, x_2006.x)) + vec3<f32>(x_2009.x, x_2009.y, x_2009.z));
    let x_2012 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2011.x, x_2011.y, x_2011.z, x_2012.w);
    let x_2014 : vec4<f32> = u_xlat7;
    let x_2016 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(vec3<f32>(x_2014.x, x_2014.y, x_2014.z), vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
    let x_2019 : f32 = u_xlat61;
    u_xlat61 = max(x_2019, 1.17549435e-37f);
    let x_2021 : f32 = u_xlat61;
    u_xlat61 = inverseSqrt(x_2021);
    let x_2023 : f32 = u_xlat61;
    let x_2025 : vec4<f32> = u_xlat7;
    let x_2027 : vec3<f32> = (vec3<f32>(x_2023, x_2023, x_2023) * vec3<f32>(x_2025.x, x_2025.y, x_2025.z));
    let x_2028 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
    let x_2030 : vec3<f32> = u_xlat2;
    let x_2031 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(x_2030, vec3<f32>(x_2031.x, x_2031.y, x_2031.z));
    let x_2034 : f32 = u_xlat61;
    u_xlat61 = clamp(x_2034, 0.0f, 1.0f);
    let x_2036 : f32 = u_xlat61;
    u_xlat61 = log2(x_2036);
    let x_2038 : f32 = u_xlat57;
    let x_2039 : f32 = u_xlat61;
    u_xlat61 = (x_2038 * x_2039);
    let x_2041 : f32 = u_xlat61;
    u_xlat61 = exp2(x_2041);
    let x_2043 : f32 = u_xlat61;
    let x_2046 : vec4<f32> = x_56.x_SpecColor;
    let x_2048 : vec3<f32> = (vec3<f32>(x_2043, x_2043, x_2043) * vec3<f32>(x_2046.x, x_2046.y, x_2046.z));
    let x_2049 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2048.x, x_2048.y, x_2048.z, x_2049.w);
    let x_2051 : vec4<f32> = u_xlat7;
    let x_2053 : vec4<f32> = u_xlat8;
    let x_2055 : vec3<f32> = (vec3<f32>(x_2051.x, x_2051.y, x_2051.z) * vec3<f32>(x_2053.x, x_2053.y, x_2053.z));
    let x_2056 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2055.x, x_2055.y, x_2055.z, x_2056.w);
    let x_2058 : vec4<f32> = u_xlat9;
    let x_2060 : vec4<f32> = u_xlat1;
    let x_2063 : vec4<f32> = u_xlat7;
    let x_2065 : vec3<f32> = ((vec3<f32>(x_2058.x, x_2058.y, x_2058.z) * vec3<f32>(x_2060.y, x_2060.z, x_2060.w)) + vec3<f32>(x_2063.x, x_2063.y, x_2063.z));
    let x_2066 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2065.x, x_2065.y, x_2065.z, x_2066.w);
    let x_2068 : vec4<f32> = u_xlat6;
    let x_2070 : vec4<f32> = u_xlat7;
    let x_2072 : vec3<f32> = (vec3<f32>(x_2068.x, x_2068.y, x_2068.z) + vec3<f32>(x_2070.x, x_2070.y, x_2070.z));
    let x_2073 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2072.x, x_2072.y, x_2072.z, x_2073.w);

    continuing {
      let x_2075 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2075 + bitcast<u32>(1i));
    }
  }
  let x_2077 : vec4<f32> = u_xlat4;
  let x_2079 : vec4<f32> = u_xlat1;
  let x_2082 : vec4<f32> = u_xlat5;
  let x_2084 : vec3<f32> = ((vec3<f32>(x_2077.x, x_2077.y, x_2077.z) * vec3<f32>(x_2079.y, x_2079.z, x_2079.w)) + vec3<f32>(x_2082.x, x_2082.y, x_2082.z));
  let x_2085 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2084.x, x_2084.y, x_2084.z, x_2085.w);
  let x_2089 : vec4<f32> = u_xlat6;
  let x_2091 : vec4<f32> = u_xlat1;
  let x_2093 : vec3<f32> = (vec3<f32>(x_2089.x, x_2089.y, x_2089.z) + vec3<f32>(x_2091.x, x_2091.y, x_2091.z));
  let x_2094 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2093.x, x_2093.y, x_2093.z, x_2094.w);
  let x_2097 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2097 == 1.0f);
  let x_2099 : bool = u_xlatb19;
  let x_2100 : bool = u_xlatb38;
  u_xlatb19 = (x_2099 | x_2100);
  let x_2102 : bool = u_xlatb19;
  if (x_2102) {
    let x_2107 : f32 = u_xlat0.x;
    x_2103 = x_2107;
  } else {
    x_2103 = 1.0f;
  }
  let x_2109 : f32 = x_2103;
  SV_Target0.w = x_2109;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

