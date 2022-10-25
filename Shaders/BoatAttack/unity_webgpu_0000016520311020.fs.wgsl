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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BumpMap : sampler;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_236 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_402 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1858 : AdditionalLights;

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
  var u_xlat4 : vec3<f32>;
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
  var x_2060 : f32;
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
  let x_340 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_337, x_339);
  u_xlat4 = vec3<f32>(x_340.x, x_340.y, x_340.z);
  let x_345 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_346 : vec2<f32> = vec2<f32>(x_345.x, x_345.y);
  let x_350 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_346.x, x_346.y));
  let x_351 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_350.x, x_350.y, x_351.z, x_351.w);
  let x_353 : vec4<f32> = u_xlat5;
  let x_355 : vec4<f32> = hlslcc_FragCoord;
  let x_357 : vec2<f32> = (vec2<f32>(x_353.x, x_353.y) * vec2<f32>(x_355.x, x_355.y));
  let x_358 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_357.x, x_357.y, x_358.z, x_358.w);
  let x_361 : f32 = u_xlat5.y;
  let x_364 : f32 = x_43.x_ScaleBiasRt.x;
  let x_367 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat57 = ((x_361 * x_364) + x_367);
  let x_369 : f32 = u_xlat57;
  u_xlat5.z = (-(x_369) + 1.0f);
  let x_378 : vec4<f32> = u_xlat5;
  let x_381 : f32 = x_43.x_GlobalMipBias.x;
  let x_382 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_378.x, x_378.z), x_381);
  u_xlat57 = x_382.x;
  let x_384 : f32 = u_xlat57;
  u_xlat1.x = (x_384 + -1.0f);
  let x_389 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_391 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_389 * x_391) + 1.0f);
  let x_395 : f32 = u_xlat57;
  u_xlat57 = min(x_395, 1.0f);
  let x_404 : f32 = x_402.x_MainLightShadowParams.y;
  u_xlatb59 = (0.0f < x_404);
  let x_406 : bool = u_xlatb59;
  if (x_406) {
    let x_410 : f32 = x_402.x_MainLightShadowParams.y;
    u_xlatb59 = (x_410 == 1.0f);
    let x_412 : bool = u_xlatb59;
    if (x_412) {
      let x_416 : vec4<f32> = vs_TEXCOORD6;
      let x_420 : vec4<f32> = x_402.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_416.x, x_416.y, x_416.x, x_416.y) + x_420);
      let x_423 : vec4<f32> = u_xlat5;
      let x_424 : vec2<f32> = vec2<f32>(x_423.x, x_423.y);
      let x_426 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_424.x, x_424.y, x_426);
      let x_439 : vec3<f32> = txVec0;
      let x_441 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_439.xy, x_439.z);
      u_xlat6.x = x_441;
      let x_444 : vec4<f32> = u_xlat5;
      let x_445 : vec2<f32> = vec2<f32>(x_444.z, x_444.w);
      let x_447 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_445.x, x_445.y, x_447);
      let x_454 : vec3<f32> = txVec1;
      let x_456 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_454.xy, x_454.z);
      u_xlat6.y = x_456;
      let x_458 : vec4<f32> = vs_TEXCOORD6;
      let x_462 : vec4<f32> = x_402.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_458.x, x_458.y, x_458.x, x_458.y) + x_462);
      let x_465 : vec4<f32> = u_xlat5;
      let x_466 : vec2<f32> = vec2<f32>(x_465.x, x_465.y);
      let x_468 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_466.x, x_466.y, x_468);
      let x_475 : vec3<f32> = txVec2;
      let x_477 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_475.xy, x_475.z);
      u_xlat6.z = x_477;
      let x_480 : vec4<f32> = u_xlat5;
      let x_481 : vec2<f32> = vec2<f32>(x_480.z, x_480.w);
      let x_483 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_481.x, x_481.y, x_483);
      let x_490 : vec3<f32> = txVec3;
      let x_492 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_490.xy, x_490.z);
      u_xlat6.w = x_492;
      let x_495 : vec4<f32> = u_xlat6;
      u_xlat59 = dot(x_495, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_502 : f32 = x_402.x_MainLightShadowParams.y;
      u_xlatb60 = (x_502 == 2.0f);
      let x_504 : bool = u_xlatb60;
      if (x_504) {
        let x_507 : vec4<f32> = vs_TEXCOORD6;
        let x_510 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_514 : vec2<f32> = ((vec2<f32>(x_507.x, x_507.y) * vec2<f32>(x_510.z, x_510.w)) + vec2<f32>(0.5f, 0.5f));
        let x_515 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
        let x_517 : vec4<f32> = u_xlat5;
        let x_519 : vec2<f32> = floor(vec2<f32>(x_517.x, x_517.y));
        let x_520 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
        let x_524 : vec4<f32> = vs_TEXCOORD6;
        let x_527 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_530 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_524.x, x_524.y) * vec2<f32>(x_527.z, x_527.w)) + -(vec2<f32>(x_530.x, x_530.y)));
        let x_534 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_534.x, x_534.x, x_534.y, x_534.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_539 : vec4<f32> = u_xlat6;
        let x_541 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_539.x, x_539.x, x_539.z, x_539.z) * vec4<f32>(x_541.x, x_541.x, x_541.z, x_541.z));
        let x_544 : vec4<f32> = u_xlat7;
        let x_548 : vec2<f32> = (vec2<f32>(x_544.y, x_544.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_549 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_548.x, x_549.y, x_548.y, x_549.w);
        let x_551 : vec4<f32> = u_xlat7;
        let x_554 : vec2<f32> = u_xlat43;
        let x_556 : vec2<f32> = ((vec2<f32>(x_551.x, x_551.z) * vec2<f32>(0.5f, 0.5f)) + -(x_554));
        let x_557 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_556.x, x_556.y, x_557.z, x_557.w);
        let x_560 : vec2<f32> = u_xlat43;
        u_xlat45 = (-(x_560) + vec2<f32>(1.0f, 1.0f));
        let x_564 : vec2<f32> = u_xlat43;
        let x_566 : vec2<f32> = min(x_564, vec2<f32>(0.0f, 0.0f));
        let x_567 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_566.x, x_566.y, x_567.z, x_567.w);
        let x_569 : vec4<f32> = u_xlat8;
        let x_572 : vec4<f32> = u_xlat8;
        let x_575 : vec2<f32> = u_xlat45;
        let x_576 : vec2<f32> = ((-(vec2<f32>(x_569.x, x_569.y)) * vec2<f32>(x_572.x, x_572.y)) + x_575);
        let x_577 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_576.x, x_576.y, x_577.z, x_577.w);
        let x_579 : vec2<f32> = u_xlat43;
        u_xlat43 = max(x_579, vec2<f32>(0.0f, 0.0f));
        let x_581 : vec2<f32> = u_xlat43;
        let x_583 : vec2<f32> = u_xlat43;
        let x_585 : vec4<f32> = u_xlat6;
        u_xlat43 = ((-(x_581) * x_583) + vec2<f32>(x_585.y, x_585.w));
        let x_588 : vec4<f32> = u_xlat8;
        let x_590 : vec2<f32> = (vec2<f32>(x_588.x, x_588.y) + vec2<f32>(1.0f, 1.0f));
        let x_591 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_590.x, x_590.y, x_591.z, x_591.w);
        let x_593 : vec2<f32> = u_xlat43;
        u_xlat43 = (x_593 + vec2<f32>(1.0f, 1.0f));
        let x_596 : vec4<f32> = u_xlat7;
        let x_600 : vec2<f32> = (vec2<f32>(x_596.x, x_596.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_601 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_600.x, x_600.y, x_601.z, x_601.w);
        let x_603 : vec2<f32> = u_xlat45;
        let x_604 : vec2<f32> = (x_603 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_605 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_604.x, x_604.y, x_605.z, x_605.w);
        let x_607 : vec4<f32> = u_xlat8;
        let x_609 : vec2<f32> = (vec2<f32>(x_607.x, x_607.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_610 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_609.x, x_609.y, x_610.z, x_610.w);
        let x_613 : vec2<f32> = u_xlat43;
        let x_614 : vec2<f32> = (x_613 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_615 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_614.x, x_614.y, x_615.z, x_615.w);
        let x_617 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_617.y, x_617.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_621 : f32 = u_xlat8.x;
        u_xlat9.z = x_621;
        let x_624 : f32 = u_xlat43.x;
        u_xlat9.w = x_624;
        let x_627 : f32 = u_xlat10.x;
        u_xlat7.z = x_627;
        let x_630 : f32 = u_xlat6.x;
        u_xlat7.w = x_630;
        let x_633 : vec4<f32> = u_xlat7;
        let x_635 : vec4<f32> = u_xlat9;
        u_xlat11 = (vec4<f32>(x_633.z, x_633.w, x_633.x, x_633.z) + vec4<f32>(x_635.z, x_635.w, x_635.x, x_635.z));
        let x_639 : f32 = u_xlat9.y;
        u_xlat8.z = x_639;
        let x_642 : f32 = u_xlat43.y;
        u_xlat8.w = x_642;
        let x_645 : f32 = u_xlat7.y;
        u_xlat10.z = x_645;
        let x_648 : f32 = u_xlat6.z;
        u_xlat10.w = x_648;
        let x_650 : vec4<f32> = u_xlat8;
        let x_652 : vec4<f32> = u_xlat10;
        let x_654 : vec3<f32> = (vec3<f32>(x_650.z, x_650.y, x_650.w) + vec3<f32>(x_652.z, x_652.y, x_652.w));
        let x_655 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
        let x_657 : vec4<f32> = u_xlat7;
        let x_659 : vec4<f32> = u_xlat11;
        let x_661 : vec3<f32> = (vec3<f32>(x_657.x, x_657.z, x_657.w) / vec3<f32>(x_659.z, x_659.w, x_659.y));
        let x_662 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
        let x_664 : vec4<f32> = u_xlat7;
        let x_670 : vec3<f32> = (vec3<f32>(x_664.x, x_664.y, x_664.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_671 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
        let x_673 : vec4<f32> = u_xlat10;
        let x_675 : vec4<f32> = u_xlat6;
        let x_677 : vec3<f32> = (vec3<f32>(x_673.z, x_673.y, x_673.w) / vec3<f32>(x_675.x, x_675.y, x_675.z));
        let x_678 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
        let x_680 : vec4<f32> = u_xlat8;
        let x_682 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_683 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_682.x, x_682.y, x_682.z, x_683.w);
        let x_685 : vec4<f32> = u_xlat7;
        let x_688 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_690 : vec3<f32> = (vec3<f32>(x_685.y, x_685.x, x_685.z) * vec3<f32>(x_688.x, x_688.x, x_688.x));
        let x_691 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
        let x_693 : vec4<f32> = u_xlat8;
        let x_696 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_698 : vec3<f32> = (vec3<f32>(x_693.x, x_693.y, x_693.z) * vec3<f32>(x_696.y, x_696.y, x_696.y));
        let x_699 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_698.x, x_698.y, x_698.z, x_699.w);
        let x_702 : f32 = u_xlat8.x;
        u_xlat7.w = x_702;
        let x_704 : vec4<f32> = u_xlat5;
        let x_707 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_710 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_704.x, x_704.y, x_704.x, x_704.y) * vec4<f32>(x_707.x, x_707.y, x_707.x, x_707.y)) + vec4<f32>(x_710.y, x_710.w, x_710.x, x_710.w));
        let x_713 : vec4<f32> = u_xlat5;
        let x_716 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_719 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_713.x, x_713.y) * vec2<f32>(x_716.x, x_716.y)) + vec2<f32>(x_719.z, x_719.w));
        let x_723 : f32 = u_xlat7.y;
        u_xlat8.w = x_723;
        let x_725 : vec4<f32> = u_xlat8;
        let x_726 : vec2<f32> = vec2<f32>(x_725.y, x_725.z);
        let x_727 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_727.x, x_726.x, x_727.z, x_726.y);
        let x_729 : vec4<f32> = u_xlat5;
        let x_732 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_735 : vec4<f32> = u_xlat7;
        u_xlat10 = ((vec4<f32>(x_729.x, x_729.y, x_729.x, x_729.y) * vec4<f32>(x_732.x, x_732.y, x_732.x, x_732.y)) + vec4<f32>(x_735.x, x_735.y, x_735.z, x_735.y));
        let x_738 : vec4<f32> = u_xlat5;
        let x_741 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_744 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_738.x, x_738.y, x_738.x, x_738.y) * vec4<f32>(x_741.x, x_741.y, x_741.x, x_741.y)) + vec4<f32>(x_744.w, x_744.y, x_744.w, x_744.z));
        let x_747 : vec4<f32> = u_xlat5;
        let x_750 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_753 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_747.x, x_747.y, x_747.x, x_747.y) * vec4<f32>(x_750.x, x_750.y, x_750.x, x_750.y)) + vec4<f32>(x_753.x, x_753.w, x_753.z, x_753.w));
        let x_757 : vec4<f32> = u_xlat6;
        let x_759 : vec4<f32> = u_xlat11;
        u_xlat12 = (vec4<f32>(x_757.x, x_757.x, x_757.x, x_757.y) * vec4<f32>(x_759.z, x_759.w, x_759.y, x_759.z));
        let x_763 : vec4<f32> = u_xlat6;
        let x_765 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_763.y, x_763.y, x_763.z, x_763.z) * x_765);
        let x_769 : f32 = u_xlat6.z;
        let x_771 : f32 = u_xlat11.y;
        u_xlat60 = (x_769 * x_771);
        let x_774 : vec4<f32> = u_xlat9;
        let x_775 : vec2<f32> = vec2<f32>(x_774.x, x_774.y);
        let x_777 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_775.x, x_775.y, x_777);
        let x_785 : vec3<f32> = txVec4;
        let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_785.xy, x_785.z);
        u_xlat61 = x_787;
        let x_789 : vec4<f32> = u_xlat9;
        let x_790 : vec2<f32> = vec2<f32>(x_789.z, x_789.w);
        let x_792 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_790.x, x_790.y, x_792);
        let x_799 : vec3<f32> = txVec5;
        let x_801 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_799.xy, x_799.z);
        u_xlat5.x = x_801;
        let x_804 : f32 = u_xlat5.x;
        let x_806 : f32 = u_xlat12.y;
        u_xlat5.x = (x_804 * x_806);
        let x_810 : f32 = u_xlat12.x;
        let x_811 : f32 = u_xlat61;
        let x_814 : f32 = u_xlat5.x;
        u_xlat61 = ((x_810 * x_811) + x_814);
        let x_817 : vec2<f32> = u_xlat43;
        let x_819 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_826 : vec3<f32> = txVec6;
        let x_828 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_826.xy, x_826.z);
        u_xlat5.x = x_828;
        let x_831 : f32 = u_xlat12.z;
        let x_833 : f32 = u_xlat5.x;
        let x_835 : f32 = u_xlat61;
        u_xlat61 = ((x_831 * x_833) + x_835);
        let x_838 : vec4<f32> = u_xlat8;
        let x_839 : vec2<f32> = vec2<f32>(x_838.x, x_838.y);
        let x_841 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_839.x, x_839.y, x_841);
        let x_848 : vec3<f32> = txVec7;
        let x_850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_848.xy, x_848.z);
        u_xlat5.x = x_850;
        let x_853 : f32 = u_xlat12.w;
        let x_855 : f32 = u_xlat5.x;
        let x_857 : f32 = u_xlat61;
        u_xlat61 = ((x_853 * x_855) + x_857);
        let x_860 : vec4<f32> = u_xlat10;
        let x_861 : vec2<f32> = vec2<f32>(x_860.x, x_860.y);
        let x_863 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_861.x, x_861.y, x_863);
        let x_870 : vec3<f32> = txVec8;
        let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_870.xy, x_870.z);
        u_xlat5.x = x_872;
        let x_875 : f32 = u_xlat13.x;
        let x_877 : f32 = u_xlat5.x;
        let x_879 : f32 = u_xlat61;
        u_xlat61 = ((x_875 * x_877) + x_879);
        let x_882 : vec4<f32> = u_xlat10;
        let x_883 : vec2<f32> = vec2<f32>(x_882.z, x_882.w);
        let x_885 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_883.x, x_883.y, x_885);
        let x_892 : vec3<f32> = txVec9;
        let x_894 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_892.xy, x_892.z);
        u_xlat5.x = x_894;
        let x_897 : f32 = u_xlat13.y;
        let x_899 : f32 = u_xlat5.x;
        let x_901 : f32 = u_xlat61;
        u_xlat61 = ((x_897 * x_899) + x_901);
        let x_904 : vec4<f32> = u_xlat8;
        let x_905 : vec2<f32> = vec2<f32>(x_904.z, x_904.w);
        let x_907 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_905.x, x_905.y, x_907);
        let x_914 : vec3<f32> = txVec10;
        let x_916 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_914.xy, x_914.z);
        u_xlat5.x = x_916;
        let x_919 : f32 = u_xlat13.z;
        let x_921 : f32 = u_xlat5.x;
        let x_923 : f32 = u_xlat61;
        u_xlat61 = ((x_919 * x_921) + x_923);
        let x_926 : vec4<f32> = u_xlat7;
        let x_927 : vec2<f32> = vec2<f32>(x_926.x, x_926.y);
        let x_929 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_927.x, x_927.y, x_929);
        let x_936 : vec3<f32> = txVec11;
        let x_938 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_936.xy, x_936.z);
        u_xlat5.x = x_938;
        let x_941 : f32 = u_xlat13.w;
        let x_943 : f32 = u_xlat5.x;
        let x_945 : f32 = u_xlat61;
        u_xlat61 = ((x_941 * x_943) + x_945);
        let x_948 : vec4<f32> = u_xlat7;
        let x_949 : vec2<f32> = vec2<f32>(x_948.z, x_948.w);
        let x_951 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_949.x, x_949.y, x_951);
        let x_958 : vec3<f32> = txVec12;
        let x_960 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_958.xy, x_958.z);
        u_xlat5.x = x_960;
        let x_962 : f32 = u_xlat60;
        let x_964 : f32 = u_xlat5.x;
        let x_966 : f32 = u_xlat61;
        u_xlat59 = ((x_962 * x_964) + x_966);
      } else {
        let x_969 : vec4<f32> = vs_TEXCOORD6;
        let x_972 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_975 : vec2<f32> = ((vec2<f32>(x_969.x, x_969.y) * vec2<f32>(x_972.z, x_972.w)) + vec2<f32>(0.5f, 0.5f));
        let x_976 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_975.x, x_975.y, x_976.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat5;
        let x_980 : vec2<f32> = floor(vec2<f32>(x_978.x, x_978.y));
        let x_981 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
        let x_983 : vec4<f32> = vs_TEXCOORD6;
        let x_986 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_989 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_983.x, x_983.y) * vec2<f32>(x_986.z, x_986.w)) + -(vec2<f32>(x_989.x, x_989.y)));
        let x_993 : vec2<f32> = u_xlat43;
        u_xlat6 = (vec4<f32>(x_993.x, x_993.x, x_993.y, x_993.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_996 : vec4<f32> = u_xlat6;
        let x_998 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_996.x, x_996.x, x_996.z, x_996.z) * vec4<f32>(x_998.x, x_998.x, x_998.z, x_998.z));
        let x_1001 : vec4<f32> = u_xlat7;
        let x_1005 : vec2<f32> = (vec2<f32>(x_1001.y, x_1001.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1006 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1006.x, x_1005.x, x_1006.z, x_1005.y);
        let x_1008 : vec4<f32> = u_xlat7;
        let x_1011 : vec2<f32> = u_xlat43;
        let x_1013 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1011));
        let x_1014 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1013.x, x_1014.y, x_1013.y, x_1014.w);
        let x_1016 : vec2<f32> = u_xlat43;
        let x_1018 : vec2<f32> = (-(x_1016) + vec2<f32>(1.0f, 1.0f));
        let x_1019 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1018.x, x_1018.y, x_1019.z, x_1019.w);
        let x_1021 : vec2<f32> = u_xlat43;
        u_xlat45 = min(x_1021, vec2<f32>(0.0f, 0.0f));
        let x_1023 : vec2<f32> = u_xlat45;
        let x_1025 : vec2<f32> = u_xlat45;
        let x_1027 : vec4<f32> = u_xlat7;
        let x_1029 : vec2<f32> = ((-(x_1023) * x_1025) + vec2<f32>(x_1027.x, x_1027.y));
        let x_1030 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1029.x, x_1029.y, x_1030.z, x_1030.w);
        let x_1032 : vec2<f32> = u_xlat43;
        u_xlat45 = max(x_1032, vec2<f32>(0.0f, 0.0f));
        let x_1035 : vec2<f32> = u_xlat45;
        let x_1037 : vec2<f32> = u_xlat45;
        let x_1039 : vec4<f32> = u_xlat6;
        let x_1041 : vec2<f32> = ((-(x_1035) * x_1037) + vec2<f32>(x_1039.y, x_1039.w));
        let x_1042 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1041.x, x_1042.y, x_1041.y);
        let x_1044 : vec4<f32> = u_xlat7;
        let x_1046 : vec2<f32> = (vec2<f32>(x_1044.x, x_1044.y) + vec2<f32>(2.0f, 2.0f));
        let x_1047 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1046.x, x_1046.y, x_1047.z, x_1047.w);
        let x_1049 : vec3<f32> = u_xlat25;
        let x_1051 : vec2<f32> = (vec2<f32>(x_1049.x, x_1049.z) + vec2<f32>(2.0f, 2.0f));
        let x_1052 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1052.x, x_1051.x, x_1052.z, x_1051.y);
        let x_1055 : f32 = u_xlat6.y;
        u_xlat9.z = (x_1055 * 0.081632003f);
        let x_1059 : vec4<f32> = u_xlat6;
        let x_1062 : vec3<f32> = (vec3<f32>(x_1059.z, x_1059.x, x_1059.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1063 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1062.x, x_1062.y, x_1062.z, x_1063.w);
        let x_1065 : vec4<f32> = u_xlat7;
        let x_1068 : vec2<f32> = (vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1069 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1069.w);
        let x_1072 : f32 = u_xlat10.y;
        u_xlat9.x = x_1072;
        let x_1074 : vec2<f32> = u_xlat43;
        let x_1081 : vec2<f32> = ((vec2<f32>(x_1074.x, x_1074.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1082 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1082.x, x_1081.x, x_1082.z, x_1081.y);
        let x_1084 : vec2<f32> = u_xlat43;
        let x_1088 : vec2<f32> = ((vec2<f32>(x_1084.x, x_1084.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1089 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1088.x, x_1089.y, x_1088.y, x_1089.w);
        let x_1092 : f32 = u_xlat6.x;
        u_xlat7.y = x_1092;
        let x_1095 : f32 = u_xlat8.y;
        u_xlat7.w = x_1095;
        let x_1097 : vec4<f32> = u_xlat7;
        let x_1098 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1097 + x_1098);
        let x_1100 : vec2<f32> = u_xlat43;
        let x_1103 : vec2<f32> = ((vec2<f32>(x_1100.y, x_1100.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1104 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1104.x, x_1103.x, x_1104.z, x_1103.y);
        let x_1106 : vec2<f32> = u_xlat43;
        let x_1109 : vec2<f32> = ((vec2<f32>(x_1106.y, x_1106.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1110 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1109.x, x_1110.y, x_1109.y, x_1110.w);
        let x_1113 : f32 = u_xlat6.y;
        u_xlat8.y = x_1113;
        let x_1115 : vec4<f32> = u_xlat8;
        let x_1116 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_1115 + x_1116);
        let x_1118 : vec4<f32> = u_xlat7;
        let x_1119 : vec4<f32> = u_xlat9;
        u_xlat7 = (x_1118 / x_1119);
        let x_1121 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1121 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1127 : vec4<f32> = u_xlat8;
        let x_1128 : vec4<f32> = u_xlat6;
        u_xlat8 = (x_1127 / x_1128);
        let x_1130 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1130 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1132 : vec4<f32> = u_xlat7;
        let x_1135 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1132.w, x_1132.x, x_1132.y, x_1132.z) * vec4<f32>(x_1135.x, x_1135.x, x_1135.x, x_1135.x));
        let x_1138 : vec4<f32> = u_xlat8;
        let x_1141 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1138.x, x_1138.w, x_1138.y, x_1138.z) * vec4<f32>(x_1141.y, x_1141.y, x_1141.y, x_1141.y));
        let x_1144 : vec4<f32> = u_xlat7;
        let x_1145 : vec3<f32> = vec3<f32>(x_1144.y, x_1144.z, x_1144.w);
        let x_1146 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1145.x, x_1146.y, x_1145.y, x_1145.z);
        let x_1149 : f32 = u_xlat8.x;
        u_xlat10.y = x_1149;
        let x_1151 : vec4<f32> = u_xlat5;
        let x_1154 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_1157 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1151.x, x_1151.y, x_1151.x, x_1151.y) * vec4<f32>(x_1154.x, x_1154.y, x_1154.x, x_1154.y)) + vec4<f32>(x_1157.x, x_1157.y, x_1157.z, x_1157.y));
        let x_1160 : vec4<f32> = u_xlat5;
        let x_1163 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_1166 : vec4<f32> = u_xlat10;
        u_xlat43 = ((vec2<f32>(x_1160.x, x_1160.y) * vec2<f32>(x_1163.x, x_1163.y)) + vec2<f32>(x_1166.w, x_1166.y));
        let x_1170 : f32 = u_xlat10.y;
        u_xlat7.y = x_1170;
        let x_1173 : f32 = u_xlat8.z;
        u_xlat10.y = x_1173;
        let x_1175 : vec4<f32> = u_xlat5;
        let x_1178 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_1181 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1175.x, x_1175.y, x_1175.x, x_1175.y) * vec4<f32>(x_1178.x, x_1178.y, x_1178.x, x_1178.y)) + vec4<f32>(x_1181.x, x_1181.y, x_1181.z, x_1181.y));
        let x_1184 : vec4<f32> = u_xlat5;
        let x_1187 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_1190 : vec4<f32> = u_xlat10;
        let x_1192 : vec2<f32> = ((vec2<f32>(x_1184.x, x_1184.y) * vec2<f32>(x_1187.x, x_1187.y)) + vec2<f32>(x_1190.w, x_1190.y));
        let x_1193 : vec4<f32> = u_xlat13;
        u_xlat13 = vec4<f32>(x_1192.x, x_1192.y, x_1193.z, x_1193.w);
        let x_1196 : f32 = u_xlat10.y;
        u_xlat7.z = x_1196;
        let x_1199 : vec4<f32> = u_xlat5;
        let x_1202 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_1205 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1199.x, x_1199.y, x_1199.x, x_1199.y) * vec4<f32>(x_1202.x, x_1202.y, x_1202.x, x_1202.y)) + vec4<f32>(x_1205.x, x_1205.y, x_1205.x, x_1205.z));
        let x_1209 : f32 = u_xlat8.w;
        u_xlat10.y = x_1209;
        let x_1212 : vec4<f32> = u_xlat5;
        let x_1215 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_1218 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1212.x, x_1212.y, x_1212.x, x_1212.y) * vec4<f32>(x_1215.x, x_1215.y, x_1215.x, x_1215.y)) + vec4<f32>(x_1218.x, x_1218.y, x_1218.z, x_1218.y));
        let x_1222 : vec4<f32> = u_xlat5;
        let x_1225 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_1228 : vec4<f32> = u_xlat10;
        u_xlat26 = ((vec2<f32>(x_1222.x, x_1222.y) * vec2<f32>(x_1225.x, x_1225.y)) + vec2<f32>(x_1228.w, x_1228.y));
        let x_1232 : f32 = u_xlat10.y;
        u_xlat7.w = x_1232;
        let x_1235 : vec4<f32> = u_xlat5;
        let x_1238 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_1241 : vec4<f32> = u_xlat7;
        u_xlat51 = ((vec2<f32>(x_1235.x, x_1235.y) * vec2<f32>(x_1238.x, x_1238.y)) + vec2<f32>(x_1241.x, x_1241.w));
        let x_1244 : vec4<f32> = u_xlat10;
        let x_1245 : vec3<f32> = vec3<f32>(x_1244.x, x_1244.z, x_1244.w);
        let x_1246 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1245.x, x_1246.y, x_1245.y, x_1245.z);
        let x_1248 : vec4<f32> = u_xlat5;
        let x_1251 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_1248.x, x_1248.y, x_1248.x, x_1248.y) * vec4<f32>(x_1251.x, x_1251.y, x_1251.x, x_1251.y)) + vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1254.y));
        let x_1258 : vec4<f32> = u_xlat5;
        let x_1261 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_1264 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1258.x, x_1258.y) * vec2<f32>(x_1261.x, x_1261.y)) + vec2<f32>(x_1264.w, x_1264.y));
        let x_1268 : f32 = u_xlat7.x;
        u_xlat8.x = x_1268;
        let x_1270 : vec4<f32> = u_xlat5;
        let x_1273 : vec4<f32> = x_402.x_MainLightShadowmapSize;
        let x_1276 : vec4<f32> = u_xlat8;
        let x_1278 : vec2<f32> = ((vec2<f32>(x_1270.x, x_1270.y) * vec2<f32>(x_1273.x, x_1273.y)) + vec2<f32>(x_1276.x, x_1276.y));
        let x_1279 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1278.x, x_1278.y, x_1279.z, x_1279.w);
        let x_1282 : vec4<f32> = u_xlat6;
        let x_1284 : vec4<f32> = u_xlat9;
        u_xlat16 = (vec4<f32>(x_1282.x, x_1282.x, x_1282.x, x_1282.x) * x_1284);
        let x_1287 : vec4<f32> = u_xlat6;
        let x_1289 : vec4<f32> = u_xlat9;
        u_xlat17 = (vec4<f32>(x_1287.y, x_1287.y, x_1287.y, x_1287.y) * x_1289);
        let x_1292 : vec4<f32> = u_xlat6;
        let x_1294 : vec4<f32> = u_xlat9;
        u_xlat18 = (vec4<f32>(x_1292.z, x_1292.z, x_1292.z, x_1292.z) * x_1294);
        let x_1296 : vec4<f32> = u_xlat6;
        let x_1298 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_1296.w, x_1296.w, x_1296.w, x_1296.w) * x_1298);
        let x_1301 : vec4<f32> = u_xlat11;
        let x_1302 : vec2<f32> = vec2<f32>(x_1301.x, x_1301.y);
        let x_1304 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec13;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1311.xy, x_1311.z);
        u_xlat60 = x_1313;
        let x_1315 : vec4<f32> = u_xlat11;
        let x_1316 : vec2<f32> = vec2<f32>(x_1315.z, x_1315.w);
        let x_1318 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1316.x, x_1316.y, x_1318);
        let x_1325 : vec3<f32> = txVec14;
        let x_1327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1325.xy, x_1325.z);
        u_xlat61 = x_1327;
        let x_1328 : f32 = u_xlat61;
        let x_1330 : f32 = u_xlat16.y;
        u_xlat61 = (x_1328 * x_1330);
        let x_1333 : f32 = u_xlat16.x;
        let x_1334 : f32 = u_xlat60;
        let x_1336 : f32 = u_xlat61;
        u_xlat60 = ((x_1333 * x_1334) + x_1336);
        let x_1339 : vec2<f32> = u_xlat43;
        let x_1341 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1339.x, x_1339.y, x_1341);
        let x_1348 : vec3<f32> = txVec15;
        let x_1350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1348.xy, x_1348.z);
        u_xlat61 = x_1350;
        let x_1352 : f32 = u_xlat16.z;
        let x_1353 : f32 = u_xlat61;
        let x_1355 : f32 = u_xlat60;
        u_xlat60 = ((x_1352 * x_1353) + x_1355);
        let x_1358 : vec4<f32> = u_xlat14;
        let x_1359 : vec2<f32> = vec2<f32>(x_1358.x, x_1358.y);
        let x_1361 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec16;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1368.xy, x_1368.z);
        u_xlat61 = x_1370;
        let x_1372 : f32 = u_xlat16.w;
        let x_1373 : f32 = u_xlat61;
        let x_1375 : f32 = u_xlat60;
        u_xlat60 = ((x_1372 * x_1373) + x_1375);
        let x_1378 : vec4<f32> = u_xlat12;
        let x_1379 : vec2<f32> = vec2<f32>(x_1378.x, x_1378.y);
        let x_1381 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1379.x, x_1379.y, x_1381);
        let x_1388 : vec3<f32> = txVec17;
        let x_1390 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1388.xy, x_1388.z);
        u_xlat61 = x_1390;
        let x_1392 : f32 = u_xlat17.x;
        let x_1393 : f32 = u_xlat61;
        let x_1395 : f32 = u_xlat60;
        u_xlat60 = ((x_1392 * x_1393) + x_1395);
        let x_1398 : vec4<f32> = u_xlat12;
        let x_1399 : vec2<f32> = vec2<f32>(x_1398.z, x_1398.w);
        let x_1401 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1399.x, x_1399.y, x_1401);
        let x_1408 : vec3<f32> = txVec18;
        let x_1410 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1408.xy, x_1408.z);
        u_xlat61 = x_1410;
        let x_1412 : f32 = u_xlat17.y;
        let x_1413 : f32 = u_xlat61;
        let x_1415 : f32 = u_xlat60;
        u_xlat60 = ((x_1412 * x_1413) + x_1415);
        let x_1418 : vec4<f32> = u_xlat13;
        let x_1419 : vec2<f32> = vec2<f32>(x_1418.x, x_1418.y);
        let x_1421 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1419.x, x_1419.y, x_1421);
        let x_1428 : vec3<f32> = txVec19;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1428.xy, x_1428.z);
        u_xlat61 = x_1430;
        let x_1432 : f32 = u_xlat17.z;
        let x_1433 : f32 = u_xlat61;
        let x_1435 : f32 = u_xlat60;
        u_xlat60 = ((x_1432 * x_1433) + x_1435);
        let x_1438 : vec4<f32> = u_xlat14;
        let x_1439 : vec2<f32> = vec2<f32>(x_1438.z, x_1438.w);
        let x_1441 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec20;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1448.xy, x_1448.z);
        u_xlat61 = x_1450;
        let x_1452 : f32 = u_xlat17.w;
        let x_1453 : f32 = u_xlat61;
        let x_1455 : f32 = u_xlat60;
        u_xlat60 = ((x_1452 * x_1453) + x_1455);
        let x_1458 : vec4<f32> = u_xlat15;
        let x_1459 : vec2<f32> = vec2<f32>(x_1458.x, x_1458.y);
        let x_1461 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1459.x, x_1459.y, x_1461);
        let x_1468 : vec3<f32> = txVec21;
        let x_1470 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1468.xy, x_1468.z);
        u_xlat61 = x_1470;
        let x_1472 : f32 = u_xlat18.x;
        let x_1473 : f32 = u_xlat61;
        let x_1475 : f32 = u_xlat60;
        u_xlat60 = ((x_1472 * x_1473) + x_1475);
        let x_1478 : vec4<f32> = u_xlat15;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.z, x_1478.w);
        let x_1481 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec22;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
        u_xlat61 = x_1490;
        let x_1492 : f32 = u_xlat18.y;
        let x_1493 : f32 = u_xlat61;
        let x_1495 : f32 = u_xlat60;
        u_xlat60 = ((x_1492 * x_1493) + x_1495);
        let x_1498 : vec2<f32> = u_xlat26;
        let x_1500 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1498.x, x_1498.y, x_1500);
        let x_1507 : vec3<f32> = txVec23;
        let x_1509 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1507.xy, x_1507.z);
        u_xlat61 = x_1509;
        let x_1511 : f32 = u_xlat18.z;
        let x_1512 : f32 = u_xlat61;
        let x_1514 : f32 = u_xlat60;
        u_xlat60 = ((x_1511 * x_1512) + x_1514);
        let x_1517 : vec2<f32> = u_xlat51;
        let x_1519 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec24;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1526.xy, x_1526.z);
        u_xlat61 = x_1528;
        let x_1530 : f32 = u_xlat18.w;
        let x_1531 : f32 = u_xlat61;
        let x_1533 : f32 = u_xlat60;
        u_xlat60 = ((x_1530 * x_1531) + x_1533);
        let x_1536 : vec4<f32> = u_xlat10;
        let x_1537 : vec2<f32> = vec2<f32>(x_1536.x, x_1536.y);
        let x_1539 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1537.x, x_1537.y, x_1539);
        let x_1546 : vec3<f32> = txVec25;
        let x_1548 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1546.xy, x_1546.z);
        u_xlat61 = x_1548;
        let x_1550 : f32 = u_xlat6.x;
        let x_1551 : f32 = u_xlat61;
        let x_1553 : f32 = u_xlat60;
        u_xlat60 = ((x_1550 * x_1551) + x_1553);
        let x_1556 : vec4<f32> = u_xlat10;
        let x_1557 : vec2<f32> = vec2<f32>(x_1556.z, x_1556.w);
        let x_1559 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1557.x, x_1557.y, x_1559);
        let x_1566 : vec3<f32> = txVec26;
        let x_1568 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1566.xy, x_1566.z);
        u_xlat61 = x_1568;
        let x_1570 : f32 = u_xlat6.y;
        let x_1571 : f32 = u_xlat61;
        let x_1573 : f32 = u_xlat60;
        u_xlat60 = ((x_1570 * x_1571) + x_1573);
        let x_1576 : vec2<f32> = u_xlat46;
        let x_1578 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1576.x, x_1576.y, x_1578);
        let x_1585 : vec3<f32> = txVec27;
        let x_1587 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1585.xy, x_1585.z);
        u_xlat61 = x_1587;
        let x_1589 : f32 = u_xlat6.z;
        let x_1590 : f32 = u_xlat61;
        let x_1592 : f32 = u_xlat60;
        u_xlat60 = ((x_1589 * x_1590) + x_1592);
        let x_1595 : vec4<f32> = u_xlat5;
        let x_1596 : vec2<f32> = vec2<f32>(x_1595.x, x_1595.y);
        let x_1598 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
        let x_1605 : vec3<f32> = txVec28;
        let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1605.xy, x_1605.z);
        u_xlat61 = x_1607;
        let x_1609 : f32 = u_xlat6.w;
        let x_1610 : f32 = u_xlat61;
        let x_1612 : f32 = u_xlat60;
        u_xlat59 = ((x_1609 * x_1610) + x_1612);
      }
    }
  } else {
    let x_1616 : vec4<f32> = vs_TEXCOORD6;
    let x_1617 : vec2<f32> = vec2<f32>(x_1616.x, x_1616.y);
    let x_1619 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
    let x_1626 : vec3<f32> = txVec29;
    let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1626.xy, x_1626.z);
    u_xlat59 = x_1628;
  }
  let x_1630 : f32 = x_402.x_MainLightShadowParams.x;
  u_xlat60 = (-(x_1630) + 1.0f);
  let x_1633 : f32 = u_xlat59;
  let x_1635 : f32 = x_402.x_MainLightShadowParams.x;
  let x_1637 : f32 = u_xlat60;
  u_xlat59 = ((x_1633 * x_1635) + x_1637);
  let x_1640 : f32 = vs_TEXCOORD6.z;
  u_xlatb60 = (0.0f >= x_1640);
  let x_1644 : f32 = vs_TEXCOORD6.z;
  u_xlatb61 = (x_1644 >= 1.0f);
  let x_1646 : bool = u_xlatb60;
  let x_1647 : bool = u_xlatb61;
  u_xlatb60 = (x_1646 | x_1647);
  let x_1649 : bool = u_xlatb60;
  let x_1650 : f32 = u_xlat59;
  u_xlat59 = select(x_1650, 1.0f, x_1649);
  let x_1654 : vec3<f32> = vs_TEXCOORD1;
  let x_1657 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1659 : vec3<f32> = (x_1654 + -(x_1657));
  let x_1660 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1659.x, x_1659.y, x_1659.z, x_1660.w);
  let x_1662 : vec4<f32> = u_xlat5;
  let x_1664 : vec4<f32> = u_xlat5;
  u_xlat60 = dot(vec3<f32>(x_1662.x, x_1662.y, x_1662.z), vec3<f32>(x_1664.x, x_1664.y, x_1664.z));
  let x_1667 : f32 = u_xlat60;
  let x_1669 : f32 = x_402.x_MainLightShadowParams.z;
  let x_1672 : f32 = x_402.x_MainLightShadowParams.w;
  u_xlat60 = ((x_1667 * x_1669) + x_1672);
  let x_1674 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1674, 0.0f, 1.0f);
  let x_1676 : f32 = u_xlat59;
  u_xlat61 = (-(x_1676) + 1.0f);
  let x_1679 : f32 = u_xlat60;
  let x_1680 : f32 = u_xlat61;
  let x_1682 : f32 = u_xlat59;
  u_xlat59 = ((x_1679 * x_1680) + x_1682);
  let x_1684 : vec4<f32> = u_xlat1;
  let x_1687 : vec4<f32> = x_43.x_MainLightColor;
  let x_1689 : vec3<f32> = (vec3<f32>(x_1684.x, x_1684.x, x_1684.x) * vec3<f32>(x_1687.x, x_1687.y, x_1687.z));
  let x_1690 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1689.x, x_1689.y, x_1689.z, x_1690.w);
  let x_1692 : f32 = u_xlat57;
  let x_1694 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_1692, x_1692, x_1692) * x_1694);
  let x_1696 : f32 = u_xlat59;
  let x_1698 : f32 = x_236.unity_LightData.z;
  u_xlat57 = (x_1696 * x_1698);
  let x_1700 : f32 = u_xlat57;
  let x_1702 : vec4<f32> = u_xlat5;
  let x_1704 : vec3<f32> = (vec3<f32>(x_1700, x_1700, x_1700) * vec3<f32>(x_1702.x, x_1702.y, x_1702.z));
  let x_1705 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1704.x, x_1704.y, x_1704.z, x_1705.w);
  let x_1707 : vec3<f32> = u_xlat2;
  let x_1710 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat57 = dot(x_1707, vec3<f32>(x_1710.x, x_1710.y, x_1710.z));
  let x_1713 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1713, 0.0f, 1.0f);
  let x_1715 : f32 = u_xlat57;
  let x_1717 : vec4<f32> = u_xlat5;
  let x_1719 : vec3<f32> = (vec3<f32>(x_1715, x_1715, x_1715) * vec3<f32>(x_1717.x, x_1717.y, x_1717.z));
  let x_1720 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1719.x, x_1719.y, x_1719.z, x_1720.w);
  let x_1723 : f32 = x_56.x_SpecColor.w;
  u_xlat57 = ((x_1723 * 10.0f) + 1.0f);
  let x_1727 : f32 = u_xlat57;
  u_xlat57 = exp2(x_1727);
  let x_1729 : vec3<f32> = u_xlat3;
  let x_1730 : vec3<f32> = u_xlat19;
  let x_1734 : vec4<f32> = x_43.x_MainLightPosition;
  let x_1736 : vec3<f32> = ((x_1729 * vec3<f32>(x_1730.x, x_1730.x, x_1730.x)) + vec3<f32>(x_1734.x, x_1734.y, x_1734.z));
  let x_1737 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1736.x, x_1736.y, x_1736.z, x_1737.w);
  let x_1739 : vec4<f32> = u_xlat7;
  let x_1741 : vec4<f32> = u_xlat7;
  u_xlat59 = dot(vec3<f32>(x_1739.x, x_1739.y, x_1739.z), vec3<f32>(x_1741.x, x_1741.y, x_1741.z));
  let x_1744 : f32 = u_xlat59;
  u_xlat59 = max(x_1744, 1.17549435e-37f);
  let x_1746 : f32 = u_xlat59;
  u_xlat59 = inverseSqrt(x_1746);
  let x_1748 : f32 = u_xlat59;
  let x_1750 : vec4<f32> = u_xlat7;
  let x_1752 : vec3<f32> = (vec3<f32>(x_1748, x_1748, x_1748) * vec3<f32>(x_1750.x, x_1750.y, x_1750.z));
  let x_1753 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1752.x, x_1752.y, x_1752.z, x_1753.w);
  let x_1755 : vec3<f32> = u_xlat2;
  let x_1756 : vec4<f32> = u_xlat7;
  u_xlat59 = dot(x_1755, vec3<f32>(x_1756.x, x_1756.y, x_1756.z));
  let x_1759 : f32 = u_xlat59;
  u_xlat59 = clamp(x_1759, 0.0f, 1.0f);
  let x_1761 : f32 = u_xlat59;
  u_xlat59 = log2(x_1761);
  let x_1763 : f32 = u_xlat57;
  let x_1764 : f32 = u_xlat59;
  u_xlat59 = (x_1763 * x_1764);
  let x_1766 : f32 = u_xlat59;
  u_xlat59 = exp2(x_1766);
  let x_1768 : f32 = u_xlat59;
  let x_1771 : vec4<f32> = x_56.x_SpecColor;
  let x_1773 : vec3<f32> = (vec3<f32>(x_1768, x_1768, x_1768) * vec3<f32>(x_1771.x, x_1771.y, x_1771.z));
  let x_1774 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
  let x_1776 : vec4<f32> = u_xlat5;
  let x_1778 : vec4<f32> = u_xlat7;
  let x_1780 : vec3<f32> = (vec3<f32>(x_1776.x, x_1776.y, x_1776.z) * vec3<f32>(x_1778.x, x_1778.y, x_1778.z));
  let x_1781 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1780.x, x_1780.y, x_1780.z, x_1781.w);
  let x_1783 : vec4<f32> = u_xlat6;
  let x_1785 : vec4<f32> = u_xlat1;
  let x_1788 : vec4<f32> = u_xlat5;
  let x_1790 : vec3<f32> = ((vec3<f32>(x_1783.x, x_1783.y, x_1783.z) * vec3<f32>(x_1785.y, x_1785.z, x_1785.w)) + vec3<f32>(x_1788.x, x_1788.y, x_1788.z));
  let x_1791 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1794 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1796 : f32 = x_236.unity_LightData.y;
  u_xlat59 = min(x_1794, x_1796);
  let x_1800 : f32 = u_xlat59;
  u_xlatu59 = bitcast<u32>(i32(x_1800));
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1812 : u32 = u_xlatu_loop_1;
    let x_1813 : u32 = u_xlatu59;
    if ((x_1812 < x_1813)) {
    } else {
      break;
    }
    let x_1816 : u32 = u_xlatu_loop_1;
    u_xlatu61 = (x_1816 >> 2u);
    let x_1820 : u32 = u_xlatu_loop_1;
    u_xlati62 = bitcast<i32>((x_1820 & 3u));
    let x_1823 : u32 = u_xlatu61;
    let x_1826 : vec4<f32> = x_236.unity_LightIndices[bitcast<i32>(x_1823)];
    let x_1836 : i32 = u_xlati62;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1841 : vec4<u32> = indexable[x_1836];
    u_xlat61 = dot(x_1826, bitcast<vec4<f32>>(x_1841));
    let x_1845 : f32 = u_xlat61;
    u_xlati61 = i32(x_1845);
    let x_1847 : vec3<f32> = vs_TEXCOORD1;
    let x_1859 : i32 = u_xlati61;
    let x_1861 : vec4<f32> = x_1858.x_AdditionalLightsPosition[x_1859];
    let x_1864 : i32 = u_xlati61;
    let x_1866 : vec4<f32> = x_1858.x_AdditionalLightsPosition[x_1864];
    let x_1868 : vec3<f32> = ((-(x_1847) * vec3<f32>(x_1861.w, x_1861.w, x_1861.w)) + vec3<f32>(x_1866.x, x_1866.y, x_1866.z));
    let x_1869 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1868.x, x_1868.y, x_1868.z, x_1869.w);
    let x_1872 : vec4<f32> = u_xlat7;
    let x_1874 : vec4<f32> = u_xlat7;
    u_xlat62 = dot(vec3<f32>(x_1872.x, x_1872.y, x_1872.z), vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
    let x_1877 : f32 = u_xlat62;
    u_xlat62 = max(x_1877, 6.10351562e-05f);
    let x_1881 : f32 = u_xlat62;
    u_xlat63 = inverseSqrt(x_1881);
    let x_1883 : f32 = u_xlat63;
    let x_1885 : vec4<f32> = u_xlat7;
    let x_1887 : vec3<f32> = (vec3<f32>(x_1883, x_1883, x_1883) * vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
    let x_1888 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
    let x_1890 : f32 = u_xlat62;
    u_xlat63 = (1.0f / x_1890);
    let x_1892 : f32 = u_xlat62;
    let x_1893 : i32 = u_xlati61;
    let x_1895 : f32 = x_1858.x_AdditionalLightsAttenuation[x_1893].x;
    u_xlat62 = (x_1892 * x_1895);
    let x_1897 : f32 = u_xlat62;
    let x_1899 : f32 = u_xlat62;
    u_xlat62 = ((-(x_1897) * x_1899) + 1.0f);
    let x_1902 : f32 = u_xlat62;
    u_xlat62 = max(x_1902, 0.0f);
    let x_1904 : f32 = u_xlat62;
    let x_1905 : f32 = u_xlat62;
    u_xlat62 = (x_1904 * x_1905);
    let x_1907 : f32 = u_xlat62;
    let x_1908 : f32 = u_xlat63;
    u_xlat62 = (x_1907 * x_1908);
    let x_1910 : i32 = u_xlati61;
    let x_1912 : vec4<f32> = x_1858.x_AdditionalLightsSpotDir[x_1910];
    let x_1914 : vec4<f32> = u_xlat7;
    u_xlat63 = dot(vec3<f32>(x_1912.x, x_1912.y, x_1912.z), vec3<f32>(x_1914.x, x_1914.y, x_1914.z));
    let x_1917 : f32 = u_xlat63;
    let x_1918 : i32 = u_xlati61;
    let x_1920 : f32 = x_1858.x_AdditionalLightsAttenuation[x_1918].z;
    let x_1922 : i32 = u_xlati61;
    let x_1924 : f32 = x_1858.x_AdditionalLightsAttenuation[x_1922].w;
    u_xlat63 = ((x_1917 * x_1920) + x_1924);
    let x_1926 : f32 = u_xlat63;
    u_xlat63 = clamp(x_1926, 0.0f, 1.0f);
    let x_1928 : f32 = u_xlat63;
    let x_1929 : f32 = u_xlat63;
    u_xlat63 = (x_1928 * x_1929);
    let x_1931 : f32 = u_xlat62;
    let x_1932 : f32 = u_xlat63;
    u_xlat62 = (x_1931 * x_1932);
    let x_1934 : vec4<f32> = u_xlat1;
    let x_1936 : i32 = u_xlati61;
    let x_1938 : vec4<f32> = x_1858.x_AdditionalLightsColor[x_1936];
    let x_1940 : vec3<f32> = (vec3<f32>(x_1934.x, x_1934.x, x_1934.x) * vec3<f32>(x_1938.x, x_1938.y, x_1938.z));
    let x_1941 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1940.x, x_1940.y, x_1940.z, x_1941.w);
    let x_1943 : f32 = u_xlat62;
    let x_1945 : vec4<f32> = u_xlat8;
    let x_1947 : vec3<f32> = (vec3<f32>(x_1943, x_1943, x_1943) * vec3<f32>(x_1945.x, x_1945.y, x_1945.z));
    let x_1948 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1947.x, x_1947.y, x_1947.z, x_1948.w);
    let x_1950 : vec3<f32> = u_xlat2;
    let x_1951 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(x_1950, vec3<f32>(x_1951.x, x_1951.y, x_1951.z));
    let x_1954 : f32 = u_xlat61;
    u_xlat61 = clamp(x_1954, 0.0f, 1.0f);
    let x_1956 : f32 = u_xlat61;
    let x_1958 : vec4<f32> = u_xlat8;
    let x_1960 : vec3<f32> = (vec3<f32>(x_1956, x_1956, x_1956) * vec3<f32>(x_1958.x, x_1958.y, x_1958.z));
    let x_1961 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1960.x, x_1960.y, x_1960.z, x_1961.w);
    let x_1963 : vec3<f32> = u_xlat3;
    let x_1964 : vec3<f32> = u_xlat19;
    let x_1967 : vec4<f32> = u_xlat7;
    let x_1969 : vec3<f32> = ((x_1963 * vec3<f32>(x_1964.x, x_1964.x, x_1964.x)) + vec3<f32>(x_1967.x, x_1967.y, x_1967.z));
    let x_1970 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1969.x, x_1969.y, x_1969.z, x_1970.w);
    let x_1972 : vec4<f32> = u_xlat7;
    let x_1974 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(vec3<f32>(x_1972.x, x_1972.y, x_1972.z), vec3<f32>(x_1974.x, x_1974.y, x_1974.z));
    let x_1977 : f32 = u_xlat61;
    u_xlat61 = max(x_1977, 1.17549435e-37f);
    let x_1979 : f32 = u_xlat61;
    u_xlat61 = inverseSqrt(x_1979);
    let x_1981 : f32 = u_xlat61;
    let x_1983 : vec4<f32> = u_xlat7;
    let x_1985 : vec3<f32> = (vec3<f32>(x_1981, x_1981, x_1981) * vec3<f32>(x_1983.x, x_1983.y, x_1983.z));
    let x_1986 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1985.x, x_1985.y, x_1985.z, x_1986.w);
    let x_1988 : vec3<f32> = u_xlat2;
    let x_1989 : vec4<f32> = u_xlat7;
    u_xlat61 = dot(x_1988, vec3<f32>(x_1989.x, x_1989.y, x_1989.z));
    let x_1992 : f32 = u_xlat61;
    u_xlat61 = clamp(x_1992, 0.0f, 1.0f);
    let x_1994 : f32 = u_xlat61;
    u_xlat61 = log2(x_1994);
    let x_1996 : f32 = u_xlat57;
    let x_1997 : f32 = u_xlat61;
    u_xlat61 = (x_1996 * x_1997);
    let x_1999 : f32 = u_xlat61;
    u_xlat61 = exp2(x_1999);
    let x_2001 : f32 = u_xlat61;
    let x_2004 : vec4<f32> = x_56.x_SpecColor;
    let x_2006 : vec3<f32> = (vec3<f32>(x_2001, x_2001, x_2001) * vec3<f32>(x_2004.x, x_2004.y, x_2004.z));
    let x_2007 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2006.x, x_2006.y, x_2006.z, x_2007.w);
    let x_2009 : vec4<f32> = u_xlat7;
    let x_2011 : vec4<f32> = u_xlat8;
    let x_2013 : vec3<f32> = (vec3<f32>(x_2009.x, x_2009.y, x_2009.z) * vec3<f32>(x_2011.x, x_2011.y, x_2011.z));
    let x_2014 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2013.x, x_2013.y, x_2013.z, x_2014.w);
    let x_2016 : vec4<f32> = u_xlat9;
    let x_2018 : vec4<f32> = u_xlat1;
    let x_2021 : vec4<f32> = u_xlat7;
    let x_2023 : vec3<f32> = ((vec3<f32>(x_2016.x, x_2016.y, x_2016.z) * vec3<f32>(x_2018.y, x_2018.z, x_2018.w)) + vec3<f32>(x_2021.x, x_2021.y, x_2021.z));
    let x_2024 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2023.x, x_2023.y, x_2023.z, x_2024.w);
    let x_2026 : vec4<f32> = u_xlat6;
    let x_2028 : vec4<f32> = u_xlat7;
    let x_2030 : vec3<f32> = (vec3<f32>(x_2026.x, x_2026.y, x_2026.z) + vec3<f32>(x_2028.x, x_2028.y, x_2028.z));
    let x_2031 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2030.x, x_2030.y, x_2030.z, x_2031.w);

    continuing {
      let x_2033 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2033 + bitcast<u32>(1i));
    }
  }
  let x_2035 : vec3<f32> = u_xlat4;
  let x_2036 : vec4<f32> = u_xlat1;
  let x_2039 : vec4<f32> = u_xlat5;
  let x_2041 : vec3<f32> = ((x_2035 * vec3<f32>(x_2036.y, x_2036.z, x_2036.w)) + vec3<f32>(x_2039.x, x_2039.y, x_2039.z));
  let x_2042 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_2041.x, x_2041.y, x_2041.z, x_2042.w);
  let x_2046 : vec4<f32> = u_xlat6;
  let x_2048 : vec4<f32> = u_xlat1;
  let x_2050 : vec3<f32> = (vec3<f32>(x_2046.x, x_2046.y, x_2046.z) + vec3<f32>(x_2048.x, x_2048.y, x_2048.z));
  let x_2051 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2050.x, x_2050.y, x_2050.z, x_2051.w);
  let x_2054 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2054 == 1.0f);
  let x_2056 : bool = u_xlatb19;
  let x_2057 : bool = u_xlatb38;
  u_xlatb19 = (x_2056 | x_2057);
  let x_2059 : bool = u_xlatb19;
  if (x_2059) {
    let x_2064 : f32 = u_xlat0.x;
    x_2060 = x_2064;
  } else {
    x_2060 = 1.0f;
  }
  let x_2066 : f32 = x_2060;
  SV_Target0.w = x_2066;
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

