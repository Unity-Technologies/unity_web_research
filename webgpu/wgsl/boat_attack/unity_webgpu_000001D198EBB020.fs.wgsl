struct PGlobals {
  x_ScaledScreenParams : vec4<f32>,
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  x_MainLightPosition : vec4<f32>,
  x_MainLightColor : vec4<f32>,
  x_AmbientOcclusionParam : vec4<f32>,
  x_AdditionalLightsCount : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_FogParams : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(4) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(3) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_92 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(5) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_327 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(6) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1779 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb19 : bool;
  var x_99 : f32;
  var u_xlatb1 : bool;
  var u_xlat2 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat55 : f32;
  var u_xlat20 : vec3<f32>;
  var u_xlatb21 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat21 : vec3<f32>;
  var u_xlatb39 : bool;
  var u_xlat39 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat40 : vec2<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat57 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat59 : f32;
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
  var u_xlat22 : f32;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb57 : bool;
  var x_1626 : f32;
  var u_xlatu55 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu5 : u32;
  var u_xlati23 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati5 : i32;
  var u_xlat24 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_1962 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_40 : vec2<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_BaseMap, sampler_BaseMap, x_40, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_56.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_52.w, x_52.x, x_52.y, x_52.z) * vec4<f32>(x_59.w, x_59.x, x_59.y, x_59.z));
  let x_63 : vec4<f32> = hlslcc_FragCoord;
  let x_67 : f32 = x_44.x_DitheringTextureInvSize;
  let x_69 : vec2<f32> = (vec2<f32>(x_63.x, x_63.y) * vec2<f32>(x_67, x_67));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : f32 = x_44.x_GlobalMipBias.x;
  let x_81 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_77.x, x_77.y), x_80);
  u_xlat1.x = x_81.w;
  let x_95 : f32 = x_92.unity_LODFade.x;
  u_xlatb19 = (x_95 >= 0.0f);
  let x_98 : bool = u_xlatb19;
  if (x_98) {
    let x_103 : f32 = u_xlat1.x;
    x_99 = abs(x_103);
  } else {
    let x_107 : f32 = u_xlat1.x;
    x_99 = -(abs(x_107));
  }
  let x_110 : f32 = x_99;
  u_xlat1.x = x_110;
  let x_113 : f32 = u_xlat1.x;
  let x_116 : f32 = x_92.unity_LODFade.x;
  u_xlat1.x = (-(x_113) + x_116);
  let x_121 : f32 = u_xlat1.x;
  u_xlatb1 = (x_121 < 0.0f);
  let x_123 : bool = u_xlatb1;
  if (((select(0i, 1i, x_123) * -1i) != 0i)) {
    discard;
  }
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_134, x_135);
  let x_139 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_139);
  let x_142 : vec4<f32> = u_xlat1;
  let x_144 : vec3<f32> = vs_TEXCOORD2;
  let x_145 : vec3<f32> = (vec3<f32>(x_142.x, x_142.x, x_142.x) * x_144);
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_152 : f32 = vs_TEXCOORD1.y;
  let x_155 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2 = (x_152 * x_155);
  let x_158 : f32 = x_44.unity_MatrixV[0i].z;
  let x_160 : f32 = vs_TEXCOORD1.x;
  let x_162 : f32 = u_xlat2;
  u_xlat2 = ((x_158 * x_160) + x_162);
  let x_165 : f32 = x_44.unity_MatrixV[2i].z;
  let x_167 : f32 = vs_TEXCOORD1.z;
  let x_169 : f32 = u_xlat2;
  u_xlat2 = ((x_165 * x_167) + x_169);
  let x_171 : f32 = u_xlat2;
  let x_174 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat2 = (x_171 + x_174);
  let x_176 : f32 = u_xlat2;
  let x_180 : f32 = x_44.x_ProjectionParams.y;
  u_xlat2 = (-(x_176) + -(x_180));
  let x_183 : f32 = u_xlat2;
  u_xlat2 = max(x_183, 0.0f);
  let x_185 : f32 = u_xlat2;
  let x_188 : f32 = x_44.unity_FogParams.x;
  u_xlat2 = (x_185 * x_188);
  u_xlat1.w = 1.0f;
  let x_195 : vec4<f32> = x_92.unity_SHAr;
  let x_196 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_195, x_196);
  let x_201 : vec4<f32> = x_92.unity_SHAg;
  let x_202 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_201, x_202);
  let x_207 : vec4<f32> = x_92.unity_SHAb;
  let x_208 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_207, x_208);
  let x_212 : vec4<f32> = u_xlat1;
  let x_214 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec4<f32>(x_212.y, x_212.z, x_212.z, x_212.x) * vec4<f32>(x_214.x, x_214.y, x_214.z, x_214.z));
  let x_220 : vec4<f32> = x_92.unity_SHBr;
  let x_221 : vec4<f32> = u_xlat4;
  u_xlat5.x = dot(x_220, x_221);
  let x_226 : vec4<f32> = x_92.unity_SHBg;
  let x_227 : vec4<f32> = u_xlat4;
  u_xlat5.y = dot(x_226, x_227);
  let x_232 : vec4<f32> = x_92.unity_SHBb;
  let x_233 : vec4<f32> = u_xlat4;
  u_xlat5.z = dot(x_232, x_233);
  let x_238 : f32 = u_xlat1.y;
  let x_240 : f32 = u_xlat1.y;
  u_xlat55 = (x_238 * x_240);
  let x_243 : f32 = u_xlat1.x;
  let x_245 : f32 = u_xlat1.x;
  let x_247 : f32 = u_xlat55;
  u_xlat55 = ((x_243 * x_245) + -(x_247));
  let x_253 : vec4<f32> = x_92.unity_SHC;
  let x_255 : f32 = u_xlat55;
  let x_258 : vec4<f32> = u_xlat5;
  u_xlat20 = ((vec3<f32>(x_253.x, x_253.y, x_253.z) * vec3<f32>(x_255, x_255, x_255)) + vec3<f32>(x_258.x, x_258.y, x_258.z));
  let x_261 : vec3<f32> = u_xlat20;
  let x_262 : vec3<f32> = u_xlat3;
  u_xlat20 = (x_261 + x_262);
  let x_264 : vec3<f32> = u_xlat20;
  u_xlat20 = max(x_264, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_269 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_270 : vec2<f32> = vec2<f32>(x_269.x, x_269.y);
  let x_274 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_270.x, x_270.y));
  let x_275 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_274.x, x_274.y, x_275.z);
  let x_277 : vec3<f32> = u_xlat3;
  let x_279 : vec4<f32> = hlslcc_FragCoord;
  let x_281 : vec2<f32> = (vec2<f32>(x_277.x, x_277.y) * vec2<f32>(x_279.x, x_279.y));
  let x_282 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_281.x, x_281.y, x_282.z);
  let x_285 : f32 = u_xlat3.y;
  let x_288 : f32 = x_44.x_ScaleBiasRt.x;
  let x_291 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat55 = ((x_285 * x_288) + x_291);
  let x_293 : f32 = u_xlat55;
  u_xlat3.z = (-(x_293) + 1.0f);
  let x_302 : vec3<f32> = u_xlat3;
  let x_305 : f32 = x_44.x_GlobalMipBias.x;
  let x_306 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_302.x, x_302.z), x_305);
  u_xlat55 = x_306.x;
  let x_308 : f32 = u_xlat55;
  u_xlat3.x = (x_308 + -1.0f);
  let x_314 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_316 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_314 * x_316) + 1.0f);
  let x_320 : f32 = u_xlat55;
  u_xlat55 = min(x_320, 1.0f);
  let x_329 : f32 = x_327.x_MainLightShadowParams.y;
  u_xlatb21 = (0.0f < x_329);
  let x_331 : bool = u_xlatb21;
  if (x_331) {
    let x_335 : f32 = x_327.x_MainLightShadowParams.y;
    u_xlatb21 = (x_335 == 1.0f);
    let x_337 : bool = u_xlatb21;
    if (x_337) {
      let x_341 : vec4<f32> = vs_TEXCOORD6;
      let x_345 : vec4<f32> = x_327.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_341.x, x_341.y, x_341.x, x_341.y) + x_345);
      let x_348 : vec4<f32> = u_xlat4;
      let x_349 : vec2<f32> = vec2<f32>(x_348.x, x_348.y);
      let x_351 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_349.x, x_349.y, x_351);
      let x_363 : vec3<f32> = txVec0;
      let x_365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_363.xy, x_363.z);
      u_xlat5.x = x_365;
      let x_368 : vec4<f32> = u_xlat4;
      let x_369 : vec2<f32> = vec2<f32>(x_368.z, x_368.w);
      let x_371 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_369.x, x_369.y, x_371);
      let x_378 : vec3<f32> = txVec1;
      let x_380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_378.xy, x_378.z);
      u_xlat5.y = x_380;
      let x_382 : vec4<f32> = vs_TEXCOORD6;
      let x_385 : vec4<f32> = x_327.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_382.x, x_382.y, x_382.x, x_382.y) + x_385);
      let x_388 : vec4<f32> = u_xlat4;
      let x_389 : vec2<f32> = vec2<f32>(x_388.x, x_388.y);
      let x_391 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_389.x, x_389.y, x_391);
      let x_398 : vec3<f32> = txVec2;
      let x_400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_398.xy, x_398.z);
      u_xlat5.z = x_400;
      let x_403 : vec4<f32> = u_xlat4;
      let x_404 : vec2<f32> = vec2<f32>(x_403.z, x_403.w);
      let x_406 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_404.x, x_404.y, x_406);
      let x_413 : vec3<f32> = txVec3;
      let x_415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_413.xy, x_413.z);
      u_xlat5.w = x_415;
      let x_418 : vec4<f32> = u_xlat5;
      u_xlat21.x = dot(x_418, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_426 : f32 = x_327.x_MainLightShadowParams.y;
      u_xlatb39 = (x_426 == 2.0f);
      let x_429 : bool = u_xlatb39;
      if (x_429) {
        let x_434 : vec4<f32> = vs_TEXCOORD6;
        let x_437 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        u_xlat39 = ((vec2<f32>(x_434.x, x_434.y) * vec2<f32>(x_437.z, x_437.w)) + vec2<f32>(0.5f, 0.5f));
        let x_443 : vec2<f32> = u_xlat39;
        u_xlat39 = floor(x_443);
        let x_445 : vec4<f32> = vs_TEXCOORD6;
        let x_448 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_451 : vec2<f32> = u_xlat39;
        let x_453 : vec2<f32> = ((vec2<f32>(x_445.x, x_445.y) * vec2<f32>(x_448.z, x_448.w)) + -(x_451));
        let x_454 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_453.x, x_453.y, x_454.z, x_454.w);
        let x_456 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_456.x, x_456.x, x_456.y, x_456.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_461 : vec4<f32> = u_xlat5;
        let x_463 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_461.x, x_461.x, x_461.z, x_461.z) * vec4<f32>(x_463.x, x_463.x, x_463.z, x_463.z));
        let x_467 : vec4<f32> = u_xlat6;
        u_xlat40 = (vec2<f32>(x_467.y, x_467.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_472 : vec4<f32> = u_xlat6;
        let x_475 : vec4<f32> = u_xlat4;
        let x_478 : vec2<f32> = ((vec2<f32>(x_472.x, x_472.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_475.x, x_475.y)));
        let x_479 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_478.x, x_479.y, x_478.y, x_479.w);
        let x_481 : vec4<f32> = u_xlat4;
        let x_484 : vec2<f32> = (-(vec2<f32>(x_481.x, x_481.y)) + vec2<f32>(1.0f, 1.0f));
        let x_485 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
        let x_488 : vec4<f32> = u_xlat4;
        u_xlat42 = min(vec2<f32>(x_488.x, x_488.y), vec2<f32>(0.0f, 0.0f));
        let x_492 : vec2<f32> = u_xlat42;
        let x_494 : vec2<f32> = u_xlat42;
        let x_496 : vec4<f32> = u_xlat6;
        u_xlat42 = ((-(x_492) * x_494) + vec2<f32>(x_496.x, x_496.y));
        let x_499 : vec4<f32> = u_xlat4;
        let x_501 : vec2<f32> = max(vec2<f32>(x_499.x, x_499.y), vec2<f32>(0.0f, 0.0f));
        let x_502 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_501.x, x_501.y, x_502.z, x_502.w);
        let x_504 : vec4<f32> = u_xlat4;
        let x_507 : vec4<f32> = u_xlat4;
        let x_510 : vec4<f32> = u_xlat5;
        let x_512 : vec2<f32> = ((-(vec2<f32>(x_504.x, x_504.y)) * vec2<f32>(x_507.x, x_507.y)) + vec2<f32>(x_510.y, x_510.w));
        let x_513 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
        let x_515 : vec2<f32> = u_xlat42;
        u_xlat42 = (x_515 + vec2<f32>(1.0f, 1.0f));
        let x_517 : vec4<f32> = u_xlat4;
        let x_519 : vec2<f32> = (vec2<f32>(x_517.x, x_517.y) + vec2<f32>(1.0f, 1.0f));
        let x_520 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
        let x_523 : vec4<f32> = u_xlat5;
        let x_527 : vec2<f32> = (vec2<f32>(x_523.x, x_523.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_528 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_527.x, x_527.y, x_528.z, x_528.w);
        let x_531 : vec4<f32> = u_xlat6;
        let x_533 : vec2<f32> = (vec2<f32>(x_531.x, x_531.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_534 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_533.x, x_533.y, x_534.z, x_534.w);
        let x_536 : vec2<f32> = u_xlat42;
        let x_537 : vec2<f32> = (x_536 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_538 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_537.x, x_537.y, x_538.z, x_538.w);
        let x_541 : vec4<f32> = u_xlat4;
        let x_543 : vec2<f32> = (vec2<f32>(x_541.x, x_541.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_544 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
        let x_546 : vec4<f32> = u_xlat5;
        let x_548 : vec2<f32> = (vec2<f32>(x_546.y, x_546.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_549 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_548.x, x_548.y, x_549.z, x_549.w);
        let x_552 : f32 = u_xlat6.x;
        u_xlat7.z = x_552;
        let x_555 : f32 = u_xlat4.x;
        u_xlat7.w = x_555;
        let x_558 : f32 = u_xlat9.x;
        u_xlat8.z = x_558;
        let x_561 : f32 = u_xlat40.x;
        u_xlat8.w = x_561;
        let x_563 : vec4<f32> = u_xlat7;
        let x_565 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_563.z, x_563.w, x_563.x, x_563.z) + vec4<f32>(x_565.z, x_565.w, x_565.x, x_565.z));
        let x_569 : f32 = u_xlat7.y;
        u_xlat6.z = x_569;
        let x_572 : f32 = u_xlat4.y;
        u_xlat6.w = x_572;
        let x_575 : f32 = u_xlat8.y;
        u_xlat9.z = x_575;
        let x_578 : f32 = u_xlat40.y;
        u_xlat9.w = x_578;
        let x_580 : vec4<f32> = u_xlat6;
        let x_582 : vec4<f32> = u_xlat9;
        let x_584 : vec3<f32> = (vec3<f32>(x_580.z, x_580.y, x_580.w) + vec3<f32>(x_582.z, x_582.y, x_582.w));
        let x_585 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
        let x_587 : vec4<f32> = u_xlat8;
        let x_589 : vec4<f32> = u_xlat5;
        let x_591 : vec3<f32> = (vec3<f32>(x_587.x, x_587.z, x_587.w) / vec3<f32>(x_589.z, x_589.w, x_589.y));
        let x_592 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
        let x_594 : vec4<f32> = u_xlat6;
        let x_600 : vec3<f32> = (vec3<f32>(x_594.x, x_594.y, x_594.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_601 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_600.x, x_600.y, x_600.z, x_601.w);
        let x_603 : vec4<f32> = u_xlat9;
        let x_605 : vec4<f32> = u_xlat4;
        let x_607 : vec3<f32> = (vec3<f32>(x_603.z, x_603.y, x_603.w) / vec3<f32>(x_605.x, x_605.y, x_605.z));
        let x_608 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
        let x_610 : vec4<f32> = u_xlat7;
        let x_612 : vec3<f32> = (vec3<f32>(x_610.x, x_610.y, x_610.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_613 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
        let x_615 : vec4<f32> = u_xlat6;
        let x_618 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_620 : vec3<f32> = (vec3<f32>(x_615.y, x_615.x, x_615.z) * vec3<f32>(x_618.x, x_618.x, x_618.x));
        let x_621 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
        let x_623 : vec4<f32> = u_xlat7;
        let x_626 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_628 : vec3<f32> = (vec3<f32>(x_623.x, x_623.y, x_623.z) * vec3<f32>(x_626.y, x_626.y, x_626.y));
        let x_629 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_628.x, x_628.y, x_628.z, x_629.w);
        let x_632 : f32 = u_xlat7.x;
        u_xlat6.w = x_632;
        let x_634 : vec2<f32> = u_xlat39;
        let x_637 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_640 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y) * vec4<f32>(x_637.x, x_637.y, x_637.x, x_637.y)) + vec4<f32>(x_640.y, x_640.w, x_640.x, x_640.w));
        let x_643 : vec2<f32> = u_xlat39;
        let x_645 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_648 : vec4<f32> = u_xlat6;
        let x_650 : vec2<f32> = ((x_643 * vec2<f32>(x_645.x, x_645.y)) + vec2<f32>(x_648.z, x_648.w));
        let x_651 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
        let x_654 : f32 = u_xlat6.y;
        u_xlat7.w = x_654;
        let x_656 : vec4<f32> = u_xlat7;
        let x_657 : vec2<f32> = vec2<f32>(x_656.y, x_656.z);
        let x_658 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_658.x, x_657.x, x_658.z, x_657.y);
        let x_661 : vec2<f32> = u_xlat39;
        let x_664 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_667 : vec4<f32> = u_xlat6;
        u_xlat10 = ((vec4<f32>(x_661.x, x_661.y, x_661.x, x_661.y) * vec4<f32>(x_664.x, x_664.y, x_664.x, x_664.y)) + vec4<f32>(x_667.x, x_667.y, x_667.z, x_667.y));
        let x_670 : vec2<f32> = u_xlat39;
        let x_673 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_676 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_670.x, x_670.y, x_670.x, x_670.y) * vec4<f32>(x_673.x, x_673.y, x_673.x, x_673.y)) + vec4<f32>(x_676.w, x_676.y, x_676.w, x_676.z));
        let x_679 : vec2<f32> = u_xlat39;
        let x_682 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_685 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_679.x, x_679.y, x_679.x, x_679.y) * vec4<f32>(x_682.x, x_682.y, x_682.x, x_682.y)) + vec4<f32>(x_685.x, x_685.w, x_685.z, x_685.w));
        let x_689 : vec4<f32> = u_xlat4;
        let x_691 : vec4<f32> = u_xlat5;
        u_xlat11 = (vec4<f32>(x_689.x, x_689.x, x_689.x, x_689.y) * vec4<f32>(x_691.z, x_691.w, x_691.y, x_691.z));
        let x_695 : vec4<f32> = u_xlat4;
        let x_697 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_695.y, x_695.y, x_695.z, x_695.z) * x_697);
        let x_700 : f32 = u_xlat4.z;
        let x_702 : f32 = u_xlat5.y;
        u_xlat39.x = (x_700 * x_702);
        let x_706 : vec4<f32> = u_xlat8;
        let x_707 : vec2<f32> = vec2<f32>(x_706.x, x_706.y);
        let x_709 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_707.x, x_707.y, x_709);
        let x_717 : vec3<f32> = txVec4;
        let x_719 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_717.xy, x_717.z);
        u_xlat57 = x_719;
        let x_721 : vec4<f32> = u_xlat8;
        let x_722 : vec2<f32> = vec2<f32>(x_721.z, x_721.w);
        let x_724 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_722.x, x_722.y, x_724);
        let x_731 : vec3<f32> = txVec5;
        let x_733 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_731.xy, x_731.z);
        u_xlat4.x = x_733;
        let x_736 : f32 = u_xlat4.x;
        let x_738 : f32 = u_xlat11.y;
        u_xlat4.x = (x_736 * x_738);
        let x_742 : f32 = u_xlat11.x;
        let x_743 : f32 = u_xlat57;
        let x_746 : f32 = u_xlat4.x;
        u_xlat57 = ((x_742 * x_743) + x_746);
        let x_749 : vec4<f32> = u_xlat9;
        let x_750 : vec2<f32> = vec2<f32>(x_749.x, x_749.y);
        let x_752 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_750.x, x_750.y, x_752);
        let x_759 : vec3<f32> = txVec6;
        let x_761 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_759.xy, x_759.z);
        u_xlat4.x = x_761;
        let x_764 : f32 = u_xlat11.z;
        let x_766 : f32 = u_xlat4.x;
        let x_768 : f32 = u_xlat57;
        u_xlat57 = ((x_764 * x_766) + x_768);
        let x_771 : vec4<f32> = u_xlat7;
        let x_772 : vec2<f32> = vec2<f32>(x_771.x, x_771.y);
        let x_774 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_772.x, x_772.y, x_774);
        let x_781 : vec3<f32> = txVec7;
        let x_783 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_781.xy, x_781.z);
        u_xlat4.x = x_783;
        let x_786 : f32 = u_xlat11.w;
        let x_788 : f32 = u_xlat4.x;
        let x_790 : f32 = u_xlat57;
        u_xlat57 = ((x_786 * x_788) + x_790);
        let x_793 : vec4<f32> = u_xlat10;
        let x_794 : vec2<f32> = vec2<f32>(x_793.x, x_793.y);
        let x_796 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_794.x, x_794.y, x_796);
        let x_803 : vec3<f32> = txVec8;
        let x_805 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_803.xy, x_803.z);
        u_xlat4.x = x_805;
        let x_808 : f32 = u_xlat12.x;
        let x_810 : f32 = u_xlat4.x;
        let x_812 : f32 = u_xlat57;
        u_xlat57 = ((x_808 * x_810) + x_812);
        let x_815 : vec4<f32> = u_xlat10;
        let x_816 : vec2<f32> = vec2<f32>(x_815.z, x_815.w);
        let x_818 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_816.x, x_816.y, x_818);
        let x_825 : vec3<f32> = txVec9;
        let x_827 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_825.xy, x_825.z);
        u_xlat4.x = x_827;
        let x_830 : f32 = u_xlat12.y;
        let x_832 : f32 = u_xlat4.x;
        let x_834 : f32 = u_xlat57;
        u_xlat57 = ((x_830 * x_832) + x_834);
        let x_837 : vec4<f32> = u_xlat7;
        let x_838 : vec2<f32> = vec2<f32>(x_837.z, x_837.w);
        let x_840 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_838.x, x_838.y, x_840);
        let x_847 : vec3<f32> = txVec10;
        let x_849 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_847.xy, x_847.z);
        u_xlat4.x = x_849;
        let x_852 : f32 = u_xlat12.z;
        let x_854 : f32 = u_xlat4.x;
        let x_856 : f32 = u_xlat57;
        u_xlat57 = ((x_852 * x_854) + x_856);
        let x_859 : vec4<f32> = u_xlat6;
        let x_860 : vec2<f32> = vec2<f32>(x_859.x, x_859.y);
        let x_862 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_860.x, x_860.y, x_862);
        let x_869 : vec3<f32> = txVec11;
        let x_871 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_869.xy, x_869.z);
        u_xlat4.x = x_871;
        let x_874 : f32 = u_xlat12.w;
        let x_876 : f32 = u_xlat4.x;
        let x_878 : f32 = u_xlat57;
        u_xlat57 = ((x_874 * x_876) + x_878);
        let x_881 : vec4<f32> = u_xlat6;
        let x_882 : vec2<f32> = vec2<f32>(x_881.z, x_881.w);
        let x_884 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_882.x, x_882.y, x_884);
        let x_891 : vec3<f32> = txVec12;
        let x_893 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_891.xy, x_891.z);
        u_xlat4.x = x_893;
        let x_896 : f32 = u_xlat39.x;
        let x_898 : f32 = u_xlat4.x;
        let x_900 : f32 = u_xlat57;
        u_xlat21.x = ((x_896 * x_898) + x_900);
      } else {
        let x_904 : vec4<f32> = vs_TEXCOORD6;
        let x_907 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        u_xlat39 = ((vec2<f32>(x_904.x, x_904.y) * vec2<f32>(x_907.z, x_907.w)) + vec2<f32>(0.5f, 0.5f));
        let x_911 : vec2<f32> = u_xlat39;
        u_xlat39 = floor(x_911);
        let x_913 : vec4<f32> = vs_TEXCOORD6;
        let x_916 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_919 : vec2<f32> = u_xlat39;
        let x_921 : vec2<f32> = ((vec2<f32>(x_913.x, x_913.y) * vec2<f32>(x_916.z, x_916.w)) + -(x_919));
        let x_922 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_921.x, x_921.y, x_922.z, x_922.w);
        let x_924 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_924.x, x_924.x, x_924.y, x_924.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_927 : vec4<f32> = u_xlat5;
        let x_929 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_927.x, x_927.x, x_927.z, x_927.z) * vec4<f32>(x_929.x, x_929.x, x_929.z, x_929.z));
        let x_932 : vec4<f32> = u_xlat6;
        let x_936 : vec2<f32> = (vec2<f32>(x_932.y, x_932.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_937 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_937.x, x_936.x, x_937.z, x_936.y);
        let x_939 : vec4<f32> = u_xlat6;
        let x_942 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_939.x, x_939.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_942.x, x_942.y)));
        let x_946 : vec4<f32> = u_xlat4;
        let x_949 : vec2<f32> = (-(vec2<f32>(x_946.x, x_946.y)) + vec2<f32>(1.0f, 1.0f));
        let x_950 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_949.x, x_950.y, x_949.y, x_950.w);
        let x_952 : vec4<f32> = u_xlat4;
        let x_954 : vec2<f32> = min(vec2<f32>(x_952.x, x_952.y), vec2<f32>(0.0f, 0.0f));
        let x_955 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec4<f32> = u_xlat6;
        let x_960 : vec4<f32> = u_xlat6;
        let x_963 : vec4<f32> = u_xlat5;
        let x_965 : vec2<f32> = ((-(vec2<f32>(x_957.x, x_957.y)) * vec2<f32>(x_960.x, x_960.y)) + vec2<f32>(x_963.x, x_963.z));
        let x_966 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_965.x, x_966.y, x_965.y, x_966.w);
        let x_968 : vec4<f32> = u_xlat4;
        let x_970 : vec2<f32> = max(vec2<f32>(x_968.x, x_968.y), vec2<f32>(0.0f, 0.0f));
        let x_971 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_971.w);
        let x_973 : vec4<f32> = u_xlat6;
        let x_976 : vec4<f32> = u_xlat6;
        let x_979 : vec4<f32> = u_xlat5;
        let x_981 : vec2<f32> = ((-(vec2<f32>(x_973.x, x_973.y)) * vec2<f32>(x_976.x, x_976.y)) + vec2<f32>(x_979.y, x_979.w));
        let x_982 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_982.x, x_981.x, x_982.z, x_981.y);
        let x_984 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_984 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_988 : f32 = u_xlat5.y;
        u_xlat6.z = (x_988 * 0.081632003f);
        let x_992 : vec2<f32> = u_xlat40;
        let x_995 : vec2<f32> = (vec2<f32>(x_992.y, x_992.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_996 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_995.x, x_995.y, x_996.z, x_996.w);
        let x_998 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_998.x, x_998.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1002 : f32 = u_xlat5.w;
        u_xlat8.z = (x_1002 * 0.081632003f);
        let x_1006 : f32 = u_xlat8.y;
        u_xlat6.x = x_1006;
        let x_1008 : vec4<f32> = u_xlat4;
        let x_1015 : vec2<f32> = ((vec2<f32>(x_1008.x, x_1008.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1016 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1016.x, x_1015.x, x_1016.z, x_1015.y);
        let x_1018 : vec4<f32> = u_xlat4;
        let x_1022 : vec2<f32> = ((vec2<f32>(x_1018.x, x_1018.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1023 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1022.x, x_1023.y, x_1022.y, x_1023.w);
        let x_1026 : f32 = u_xlat40.x;
        u_xlat5.y = x_1026;
        let x_1029 : f32 = u_xlat7.y;
        u_xlat5.w = x_1029;
        let x_1031 : vec4<f32> = u_xlat5;
        let x_1032 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1031 + x_1032);
        let x_1034 : vec4<f32> = u_xlat4;
        let x_1037 : vec2<f32> = ((vec2<f32>(x_1034.y, x_1034.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1038 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1038.x, x_1037.x, x_1038.z, x_1037.y);
        let x_1040 : vec4<f32> = u_xlat4;
        let x_1043 : vec2<f32> = ((vec2<f32>(x_1040.y, x_1040.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1044 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1043.x, x_1044.y, x_1043.y, x_1044.w);
        let x_1047 : f32 = u_xlat40.y;
        u_xlat7.y = x_1047;
        let x_1049 : vec4<f32> = u_xlat7;
        let x_1050 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_1049 + x_1050);
        let x_1052 : vec4<f32> = u_xlat5;
        let x_1053 : vec4<f32> = u_xlat6;
        u_xlat5 = (x_1052 / x_1053);
        let x_1055 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_1055 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1061 : vec4<f32> = u_xlat7;
        let x_1062 : vec4<f32> = u_xlat4;
        u_xlat7 = (x_1061 / x_1062);
        let x_1064 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1064 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1066 : vec4<f32> = u_xlat5;
        let x_1069 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_1066.w, x_1066.x, x_1066.y, x_1066.z) * vec4<f32>(x_1069.x, x_1069.x, x_1069.x, x_1069.x));
        let x_1072 : vec4<f32> = u_xlat7;
        let x_1075 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1072.x, x_1072.w, x_1072.y, x_1072.z) * vec4<f32>(x_1075.y, x_1075.y, x_1075.y, x_1075.y));
        let x_1078 : vec4<f32> = u_xlat5;
        let x_1079 : vec3<f32> = vec3<f32>(x_1078.y, x_1078.z, x_1078.w);
        let x_1080 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1079.x, x_1080.y, x_1079.y, x_1079.z);
        let x_1083 : f32 = u_xlat7.x;
        u_xlat8.y = x_1083;
        let x_1085 : vec2<f32> = u_xlat39;
        let x_1088 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1091 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y) * vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y)) + vec4<f32>(x_1091.x, x_1091.y, x_1091.z, x_1091.y));
        let x_1094 : vec2<f32> = u_xlat39;
        let x_1096 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1099 : vec4<f32> = u_xlat8;
        let x_1101 : vec2<f32> = ((x_1094 * vec2<f32>(x_1096.x, x_1096.y)) + vec2<f32>(x_1099.w, x_1099.y));
        let x_1102 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1101.x, x_1101.y, x_1102.z, x_1102.w);
        let x_1105 : f32 = u_xlat8.y;
        u_xlat5.y = x_1105;
        let x_1108 : f32 = u_xlat7.z;
        u_xlat8.y = x_1108;
        let x_1110 : vec2<f32> = u_xlat39;
        let x_1113 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1110.x, x_1110.y, x_1110.x, x_1110.y) * vec4<f32>(x_1113.x, x_1113.y, x_1113.x, x_1113.y)) + vec4<f32>(x_1116.x, x_1116.y, x_1116.z, x_1116.y));
        let x_1120 : vec2<f32> = u_xlat39;
        let x_1122 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1125 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1120 * vec2<f32>(x_1122.x, x_1122.y)) + vec2<f32>(x_1125.w, x_1125.y));
        let x_1129 : f32 = u_xlat8.y;
        u_xlat5.z = x_1129;
        let x_1131 : vec2<f32> = u_xlat39;
        let x_1134 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1137 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1131.x, x_1131.y, x_1131.x, x_1131.y) * vec4<f32>(x_1134.x, x_1134.y, x_1134.x, x_1134.y)) + vec4<f32>(x_1137.x, x_1137.y, x_1137.x, x_1137.z));
        let x_1141 : f32 = u_xlat7.w;
        u_xlat8.y = x_1141;
        let x_1144 : vec2<f32> = u_xlat39;
        let x_1147 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1150 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1144.x, x_1144.y, x_1144.x, x_1144.y) * vec4<f32>(x_1147.x, x_1147.y, x_1147.x, x_1147.y)) + vec4<f32>(x_1150.x, x_1150.y, x_1150.z, x_1150.y));
        let x_1154 : vec2<f32> = u_xlat39;
        let x_1156 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1159 : vec4<f32> = u_xlat8;
        let x_1161 : vec2<f32> = ((x_1154 * vec2<f32>(x_1156.x, x_1156.y)) + vec2<f32>(x_1159.w, x_1159.y));
        let x_1162 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1161.x, x_1161.y, x_1162.z);
        let x_1165 : f32 = u_xlat8.y;
        u_xlat5.w = x_1165;
        let x_1168 : vec2<f32> = u_xlat39;
        let x_1170 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1173 : vec4<f32> = u_xlat5;
        u_xlat14 = ((x_1168 * vec2<f32>(x_1170.x, x_1170.y)) + vec2<f32>(x_1173.x, x_1173.w));
        let x_1176 : vec4<f32> = u_xlat8;
        let x_1177 : vec3<f32> = vec3<f32>(x_1176.x, x_1176.z, x_1176.w);
        let x_1178 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1177.x, x_1178.y, x_1177.y, x_1177.z);
        let x_1180 : vec2<f32> = u_xlat39;
        let x_1183 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1186 : vec4<f32> = u_xlat7;
        u_xlat8 = ((vec4<f32>(x_1180.x, x_1180.y, x_1180.x, x_1180.y) * vec4<f32>(x_1183.x, x_1183.y, x_1183.x, x_1183.y)) + vec4<f32>(x_1186.x, x_1186.y, x_1186.z, x_1186.y));
        let x_1190 : vec2<f32> = u_xlat39;
        let x_1192 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1195 : vec4<f32> = u_xlat7;
        u_xlat43 = ((x_1190 * vec2<f32>(x_1192.x, x_1192.y)) + vec2<f32>(x_1195.w, x_1195.y));
        let x_1199 : f32 = u_xlat5.x;
        u_xlat7.x = x_1199;
        let x_1201 : vec2<f32> = u_xlat39;
        let x_1203 : vec4<f32> = x_327.x_MainLightShadowmapSize;
        let x_1206 : vec4<f32> = u_xlat7;
        u_xlat39 = ((x_1201 * vec2<f32>(x_1203.x, x_1203.y)) + vec2<f32>(x_1206.x, x_1206.y));
        let x_1210 : vec4<f32> = u_xlat4;
        let x_1212 : vec4<f32> = u_xlat6;
        u_xlat15 = (vec4<f32>(x_1210.x, x_1210.x, x_1210.x, x_1210.x) * x_1212);
        let x_1215 : vec4<f32> = u_xlat4;
        let x_1217 : vec4<f32> = u_xlat6;
        u_xlat16 = (vec4<f32>(x_1215.y, x_1215.y, x_1215.y, x_1215.y) * x_1217);
        let x_1220 : vec4<f32> = u_xlat4;
        let x_1222 : vec4<f32> = u_xlat6;
        u_xlat17 = (vec4<f32>(x_1220.z, x_1220.z, x_1220.z, x_1220.z) * x_1222);
        let x_1224 : vec4<f32> = u_xlat4;
        let x_1226 : vec4<f32> = u_xlat6;
        u_xlat4 = (vec4<f32>(x_1224.w, x_1224.w, x_1224.w, x_1224.w) * x_1226);
        let x_1229 : vec4<f32> = u_xlat9;
        let x_1230 : vec2<f32> = vec2<f32>(x_1229.x, x_1229.y);
        let x_1232 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1239 : vec3<f32> = txVec13;
        let x_1241 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1239.xy, x_1239.z);
        u_xlat5.x = x_1241;
        let x_1244 : vec4<f32> = u_xlat9;
        let x_1245 : vec2<f32> = vec2<f32>(x_1244.z, x_1244.w);
        let x_1247 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1245.x, x_1245.y, x_1247);
        let x_1255 : vec3<f32> = txVec14;
        let x_1257 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1255.xy, x_1255.z);
        u_xlat59 = x_1257;
        let x_1258 : f32 = u_xlat59;
        let x_1260 : f32 = u_xlat15.y;
        u_xlat59 = (x_1258 * x_1260);
        let x_1263 : f32 = u_xlat15.x;
        let x_1265 : f32 = u_xlat5.x;
        let x_1267 : f32 = u_xlat59;
        u_xlat5.x = ((x_1263 * x_1265) + x_1267);
        let x_1271 : vec4<f32> = u_xlat10;
        let x_1272 : vec2<f32> = vec2<f32>(x_1271.x, x_1271.y);
        let x_1274 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1272.x, x_1272.y, x_1274);
        let x_1281 : vec3<f32> = txVec15;
        let x_1283 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1281.xy, x_1281.z);
        u_xlat59 = x_1283;
        let x_1285 : f32 = u_xlat15.z;
        let x_1286 : f32 = u_xlat59;
        let x_1289 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1285 * x_1286) + x_1289);
        let x_1293 : vec4<f32> = u_xlat12;
        let x_1294 : vec2<f32> = vec2<f32>(x_1293.x, x_1293.y);
        let x_1296 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1294.x, x_1294.y, x_1296);
        let x_1303 : vec3<f32> = txVec16;
        let x_1305 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1303.xy, x_1303.z);
        u_xlat59 = x_1305;
        let x_1307 : f32 = u_xlat15.w;
        let x_1308 : f32 = u_xlat59;
        let x_1311 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1307 * x_1308) + x_1311);
        let x_1315 : vec4<f32> = u_xlat11;
        let x_1316 : vec2<f32> = vec2<f32>(x_1315.x, x_1315.y);
        let x_1318 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1316.x, x_1316.y, x_1318);
        let x_1325 : vec3<f32> = txVec17;
        let x_1327 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1325.xy, x_1325.z);
        u_xlat59 = x_1327;
        let x_1329 : f32 = u_xlat16.x;
        let x_1330 : f32 = u_xlat59;
        let x_1333 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1329 * x_1330) + x_1333);
        let x_1337 : vec4<f32> = u_xlat11;
        let x_1338 : vec2<f32> = vec2<f32>(x_1337.z, x_1337.w);
        let x_1340 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1338.x, x_1338.y, x_1340);
        let x_1347 : vec3<f32> = txVec18;
        let x_1349 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1347.xy, x_1347.z);
        u_xlat59 = x_1349;
        let x_1351 : f32 = u_xlat16.y;
        let x_1352 : f32 = u_xlat59;
        let x_1355 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1351 * x_1352) + x_1355);
        let x_1359 : vec2<f32> = u_xlat46;
        let x_1361 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1359.x, x_1359.y, x_1361);
        let x_1368 : vec3<f32> = txVec19;
        let x_1370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1368.xy, x_1368.z);
        u_xlat59 = x_1370;
        let x_1372 : f32 = u_xlat16.z;
        let x_1373 : f32 = u_xlat59;
        let x_1376 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1372 * x_1373) + x_1376);
        let x_1380 : vec4<f32> = u_xlat12;
        let x_1381 : vec2<f32> = vec2<f32>(x_1380.z, x_1380.w);
        let x_1383 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1381.x, x_1381.y, x_1383);
        let x_1390 : vec3<f32> = txVec20;
        let x_1392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1390.xy, x_1390.z);
        u_xlat59 = x_1392;
        let x_1394 : f32 = u_xlat16.w;
        let x_1395 : f32 = u_xlat59;
        let x_1398 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1394 * x_1395) + x_1398);
        let x_1402 : vec4<f32> = u_xlat13;
        let x_1403 : vec2<f32> = vec2<f32>(x_1402.x, x_1402.y);
        let x_1405 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec21;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1412.xy, x_1412.z);
        u_xlat59 = x_1414;
        let x_1416 : f32 = u_xlat17.x;
        let x_1417 : f32 = u_xlat59;
        let x_1420 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1416 * x_1417) + x_1420);
        let x_1424 : vec4<f32> = u_xlat13;
        let x_1425 : vec2<f32> = vec2<f32>(x_1424.z, x_1424.w);
        let x_1427 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
        let x_1434 : vec3<f32> = txVec22;
        let x_1436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1434.xy, x_1434.z);
        u_xlat59 = x_1436;
        let x_1438 : f32 = u_xlat17.y;
        let x_1439 : f32 = u_xlat59;
        let x_1442 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1438 * x_1439) + x_1442);
        let x_1446 : vec3<f32> = u_xlat23;
        let x_1447 : vec2<f32> = vec2<f32>(x_1446.x, x_1446.y);
        let x_1449 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec23;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1456.xy, x_1456.z);
        u_xlat23.x = x_1458;
        let x_1461 : f32 = u_xlat17.z;
        let x_1463 : f32 = u_xlat23.x;
        let x_1466 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1461 * x_1463) + x_1466);
        let x_1470 : vec2<f32> = u_xlat14;
        let x_1472 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1470.x, x_1470.y, x_1472);
        let x_1479 : vec3<f32> = txVec24;
        let x_1481 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1479.xy, x_1479.z);
        u_xlat23.x = x_1481;
        let x_1484 : f32 = u_xlat17.w;
        let x_1486 : f32 = u_xlat23.x;
        let x_1489 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1484 * x_1486) + x_1489);
        let x_1493 : vec4<f32> = u_xlat8;
        let x_1494 : vec2<f32> = vec2<f32>(x_1493.x, x_1493.y);
        let x_1496 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1494.x, x_1494.y, x_1496);
        let x_1503 : vec3<f32> = txVec25;
        let x_1505 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1503.xy, x_1503.z);
        u_xlat23.x = x_1505;
        let x_1508 : f32 = u_xlat4.x;
        let x_1510 : f32 = u_xlat23.x;
        let x_1513 : f32 = u_xlat5.x;
        u_xlat4.x = ((x_1508 * x_1510) + x_1513);
        let x_1517 : vec4<f32> = u_xlat8;
        let x_1518 : vec2<f32> = vec2<f32>(x_1517.z, x_1517.w);
        let x_1520 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1518.x, x_1518.y, x_1520);
        let x_1527 : vec3<f32> = txVec26;
        let x_1529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1527.xy, x_1527.z);
        u_xlat5.x = x_1529;
        let x_1532 : f32 = u_xlat4.y;
        let x_1534 : f32 = u_xlat5.x;
        let x_1537 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_1532 * x_1534) + x_1537);
        let x_1541 : vec2<f32> = u_xlat43;
        let x_1543 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1541.x, x_1541.y, x_1543);
        let x_1551 : vec3<f32> = txVec27;
        let x_1553 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1551.xy, x_1551.z);
        u_xlat22 = x_1553;
        let x_1555 : f32 = u_xlat4.z;
        let x_1556 : f32 = u_xlat22;
        let x_1559 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_1555 * x_1556) + x_1559);
        let x_1563 : vec2<f32> = u_xlat39;
        let x_1565 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1563.x, x_1563.y, x_1565);
        let x_1572 : vec3<f32> = txVec28;
        let x_1574 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1572.xy, x_1572.z);
        u_xlat39.x = x_1574;
        let x_1577 : f32 = u_xlat4.w;
        let x_1579 : f32 = u_xlat39.x;
        let x_1582 : f32 = u_xlat4.x;
        u_xlat21.x = ((x_1577 * x_1579) + x_1582);
      }
    }
  } else {
    let x_1587 : vec4<f32> = vs_TEXCOORD6;
    let x_1588 : vec2<f32> = vec2<f32>(x_1587.x, x_1587.y);
    let x_1590 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1588.x, x_1588.y, x_1590);
    let x_1597 : vec3<f32> = txVec29;
    let x_1599 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1597.xy, x_1597.z);
    u_xlat21.x = x_1599;
  }
  let x_1602 : f32 = x_327.x_MainLightShadowParams.x;
  u_xlat39.x = (-(x_1602) + 1.0f);
  let x_1607 : f32 = u_xlat21.x;
  let x_1609 : f32 = x_327.x_MainLightShadowParams.x;
  let x_1612 : f32 = u_xlat39.x;
  u_xlat21.x = ((x_1607 * x_1609) + x_1612);
  let x_1616 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (0.0f >= x_1616);
  let x_1620 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (x_1620 >= 1.0f);
  let x_1622 : bool = u_xlatb57;
  let x_1623 : bool = u_xlatb39;
  u_xlatb39 = (x_1622 | x_1623);
  let x_1625 : bool = u_xlatb39;
  if (x_1625) {
    x_1626 = 1.0f;
  } else {
    let x_1631 : f32 = u_xlat21.x;
    x_1626 = x_1631;
  }
  let x_1632 : f32 = x_1626;
  u_xlat21.x = x_1632;
  let x_1634 : vec3<f32> = vs_TEXCOORD1;
  let x_1637 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1639 : vec3<f32> = (x_1634 + -(x_1637));
  let x_1640 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1639.x, x_1639.y, x_1639.z, x_1640.w);
  let x_1642 : vec4<f32> = u_xlat4;
  let x_1644 : vec4<f32> = u_xlat4;
  u_xlat39.x = dot(vec3<f32>(x_1642.x, x_1642.y, x_1642.z), vec3<f32>(x_1644.x, x_1644.y, x_1644.z));
  let x_1649 : f32 = u_xlat39.x;
  let x_1651 : f32 = x_327.x_MainLightShadowParams.z;
  let x_1654 : f32 = x_327.x_MainLightShadowParams.w;
  u_xlat39.x = ((x_1649 * x_1651) + x_1654);
  let x_1658 : f32 = u_xlat39.x;
  u_xlat39.x = clamp(x_1658, 0.0f, 1.0f);
  let x_1662 : f32 = u_xlat21.x;
  u_xlat57 = (-(x_1662) + 1.0f);
  let x_1666 : f32 = u_xlat39.x;
  let x_1667 : f32 = u_xlat57;
  let x_1670 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_1666 * x_1667) + x_1670);
  let x_1673 : vec3<f32> = u_xlat3;
  let x_1676 : vec4<f32> = x_44.x_MainLightColor;
  let x_1678 : vec3<f32> = (vec3<f32>(x_1673.x, x_1673.x, x_1673.x) * vec3<f32>(x_1676.x, x_1676.y, x_1676.z));
  let x_1679 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1678.x, x_1678.y, x_1678.z, x_1679.w);
  let x_1681 : f32 = u_xlat55;
  let x_1683 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_1681, x_1681, x_1681) * x_1683);
  let x_1686 : f32 = u_xlat21.x;
  let x_1689 : f32 = x_92.unity_LightData.z;
  u_xlat55 = (x_1686 * x_1689);
  let x_1691 : f32 = u_xlat55;
  let x_1693 : vec4<f32> = u_xlat4;
  u_xlat21 = (vec3<f32>(x_1691, x_1691, x_1691) * vec3<f32>(x_1693.x, x_1693.y, x_1693.z));
  let x_1696 : vec4<f32> = u_xlat1;
  let x_1699 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat55 = dot(vec3<f32>(x_1696.x, x_1696.y, x_1696.z), vec3<f32>(x_1699.x, x_1699.y, x_1699.z));
  let x_1702 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1702, 0.0f, 1.0f);
  let x_1704 : f32 = u_xlat55;
  let x_1706 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1704, x_1704, x_1704) * x_1706);
  let x_1708 : vec4<f32> = u_xlat0;
  let x_1710 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1708.y, x_1708.z, x_1708.w) * x_1710);
  let x_1713 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1715 : f32 = x_92.unity_LightData.y;
  u_xlat55 = min(x_1713, x_1715);
  let x_1719 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1719));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1731 : u32 = u_xlatu_loop_1;
    let x_1732 : u32 = u_xlatu55;
    if ((x_1731 < x_1732)) {
    } else {
      break;
    }
    let x_1735 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1735 >> 2u);
    let x_1739 : u32 = u_xlatu_loop_1;
    u_xlati23 = bitcast<i32>((x_1739 & 3u));
    let x_1742 : u32 = u_xlatu5;
    let x_1745 : vec4<f32> = x_92.unity_LightIndices[bitcast<i32>(x_1742)];
    let x_1755 : i32 = u_xlati23;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1760 : vec4<u32> = indexable[x_1755];
    u_xlat5.x = dot(x_1745, bitcast<vec4<f32>>(x_1760));
    let x_1766 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1766);
    let x_1768 : vec3<f32> = vs_TEXCOORD1;
    let x_1780 : i32 = u_xlati5;
    let x_1782 : vec4<f32> = x_1779.x_AdditionalLightsPosition[x_1780];
    let x_1785 : i32 = u_xlati5;
    let x_1787 : vec4<f32> = x_1779.x_AdditionalLightsPosition[x_1785];
    u_xlat23 = ((-(x_1768) * vec3<f32>(x_1782.w, x_1782.w, x_1782.w)) + vec3<f32>(x_1787.x, x_1787.y, x_1787.z));
    let x_1790 : vec3<f32> = u_xlat23;
    let x_1791 : vec3<f32> = u_xlat23;
    u_xlat6.x = dot(x_1790, x_1791);
    let x_1795 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1795, 6.10351562e-05f);
    let x_1801 : f32 = u_xlat6.x;
    u_xlat24.x = inverseSqrt(x_1801);
    let x_1804 : vec3<f32> = u_xlat23;
    let x_1805 : vec3<f32> = u_xlat24;
    u_xlat23 = (x_1804 * vec3<f32>(x_1805.x, x_1805.x, x_1805.x));
    let x_1809 : f32 = u_xlat6.x;
    u_xlat24.x = (1.0f / x_1809);
    let x_1813 : f32 = u_xlat6.x;
    let x_1814 : i32 = u_xlati5;
    let x_1816 : f32 = x_1779.x_AdditionalLightsAttenuation[x_1814].x;
    u_xlat6.x = (x_1813 * x_1816);
    let x_1820 : f32 = u_xlat6.x;
    let x_1823 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1820) * x_1823) + 1.0f);
    let x_1828 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1828, 0.0f);
    let x_1832 : f32 = u_xlat6.x;
    let x_1834 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1832 * x_1834);
    let x_1838 : f32 = u_xlat6.x;
    let x_1840 : f32 = u_xlat24.x;
    u_xlat6.x = (x_1838 * x_1840);
    let x_1843 : i32 = u_xlati5;
    let x_1845 : vec4<f32> = x_1779.x_AdditionalLightsSpotDir[x_1843];
    let x_1847 : vec3<f32> = u_xlat23;
    u_xlat24.x = dot(vec3<f32>(x_1845.x, x_1845.y, x_1845.z), x_1847);
    let x_1851 : f32 = u_xlat24.x;
    let x_1852 : i32 = u_xlati5;
    let x_1854 : f32 = x_1779.x_AdditionalLightsAttenuation[x_1852].z;
    let x_1856 : i32 = u_xlati5;
    let x_1858 : f32 = x_1779.x_AdditionalLightsAttenuation[x_1856].w;
    u_xlat24.x = ((x_1851 * x_1854) + x_1858);
    let x_1862 : f32 = u_xlat24.x;
    u_xlat24.x = clamp(x_1862, 0.0f, 1.0f);
    let x_1866 : f32 = u_xlat24.x;
    let x_1868 : f32 = u_xlat24.x;
    u_xlat24.x = (x_1866 * x_1868);
    let x_1872 : f32 = u_xlat24.x;
    let x_1874 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1872 * x_1874);
    let x_1877 : vec3<f32> = u_xlat3;
    let x_1879 : i32 = u_xlati5;
    let x_1881 : vec4<f32> = x_1779.x_AdditionalLightsColor[x_1879];
    u_xlat24 = (vec3<f32>(x_1877.x, x_1877.x, x_1877.x) * vec3<f32>(x_1881.x, x_1881.y, x_1881.z));
    let x_1884 : vec4<f32> = u_xlat6;
    let x_1886 : vec3<f32> = u_xlat24;
    let x_1887 : vec3<f32> = (vec3<f32>(x_1884.x, x_1884.x, x_1884.x) * x_1886);
    let x_1888 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1887.x, x_1887.y, x_1887.z, x_1888.w);
    let x_1890 : vec4<f32> = u_xlat1;
    let x_1892 : vec3<f32> = u_xlat23;
    u_xlat5.x = dot(vec3<f32>(x_1890.x, x_1890.y, x_1890.z), x_1892);
    let x_1896 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1896, 0.0f, 1.0f);
    let x_1899 : vec4<f32> = u_xlat5;
    let x_1901 : vec4<f32> = u_xlat6;
    let x_1903 : vec3<f32> = (vec3<f32>(x_1899.x, x_1899.x, x_1899.x) * vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
    let x_1904 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
    let x_1906 : vec4<f32> = u_xlat5;
    let x_1908 : vec4<f32> = u_xlat0;
    let x_1911 : vec4<f32> = u_xlat4;
    let x_1913 : vec3<f32> = ((vec3<f32>(x_1906.x, x_1906.y, x_1906.z) * vec3<f32>(x_1908.y, x_1908.z, x_1908.w)) + vec3<f32>(x_1911.x, x_1911.y, x_1911.z));
    let x_1914 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1913.x, x_1913.y, x_1913.z, x_1914.w);

    continuing {
      let x_1916 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1916 + bitcast<u32>(1i));
    }
  }
  let x_1919 : vec3<f32> = u_xlat20;
  let x_1920 : vec4<f32> = u_xlat0;
  let x_1923 : vec3<f32> = u_xlat21;
  u_xlat18 = ((x_1919 * vec3<f32>(x_1920.y, x_1920.z, x_1920.w)) + x_1923);
  let x_1925 : vec4<f32> = u_xlat4;
  let x_1927 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_1925.x, x_1925.y, x_1925.z) + x_1927);
  let x_1929 : f32 = u_xlat2;
  let x_1930 : f32 = u_xlat2;
  u_xlat1.x = (x_1929 * -(x_1930));
  let x_1935 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1935);
  let x_1938 : vec3<f32> = u_xlat18;
  let x_1941 : vec4<f32> = x_44.unity_FogColor;
  u_xlat18 = (x_1938 + -(vec3<f32>(x_1941.x, x_1941.y, x_1941.z)));
  let x_1947 : vec4<f32> = u_xlat1;
  let x_1949 : vec3<f32> = u_xlat18;
  let x_1952 : vec4<f32> = x_44.unity_FogColor;
  let x_1954 : vec3<f32> = ((vec3<f32>(x_1947.x, x_1947.x, x_1947.x) * x_1949) + vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
  let x_1955 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
  let x_1959 : f32 = x_56.x_Surface;
  u_xlatb18 = (x_1959 == 1.0f);
  let x_1961 : bool = u_xlatb18;
  if (x_1961) {
    let x_1966 : f32 = u_xlat0.x;
    x_1962 = x_1966;
  } else {
    x_1962 = 1.0f;
  }
  let x_1968 : f32 = x_1962;
  SV_Target0.w = x_1968;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

