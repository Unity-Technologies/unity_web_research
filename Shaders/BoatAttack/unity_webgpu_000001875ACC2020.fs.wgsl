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
  x_ScaleBiasRt : vec4<f32>,
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

type Arr_1 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_1,
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

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_199 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_1554 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1653 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat55 : f32;
  var u_xlat56 : f32;
  var u_xlatb3 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat21 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
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
  var u_xlat39 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat57 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat23 : vec2<f32>;
  var u_xlat14 : vec2<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
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
  var u_xlatb39 : bool;
  var x_1491 : f32;
  var u_xlatu55 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu58 : u32;
  var u_xlati5 : i32;
  var u_xlat58 : f32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati58 : i32;
  var u_xlat59 : f32;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_1803 : f32;
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
  let x_51 : vec4<f32> = u_xlat0;
  let x_58 : vec4<f32> = x_55.x_BaseColor;
  u_xlat0 = (vec4<f32>(x_51.w, x_51.x, x_51.y, x_51.z) * vec4<f32>(x_58.w, x_58.x, x_58.y, x_58.z));
  let x_65 : vec3<f32> = vs_TEXCOORD2;
  let x_66 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_65, x_66);
  let x_71 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_71);
  let x_74 : vec3<f32> = u_xlat1;
  let x_76 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_74.x, x_74.x, x_74.x) * x_76);
  let x_85 : vec2<f32> = vs_TEXCOORD7;
  let x_87 : f32 = x_43.x_GlobalMipBias.x;
  let x_88 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_85, x_87);
  u_xlat2 = x_88;
  let x_94 : vec2<f32> = vs_TEXCOORD7;
  let x_96 : f32 = x_43.x_GlobalMipBias.x;
  let x_97 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_94, x_96);
  let x_98 : vec3<f32> = vec3<f32>(x_97.x, x_97.y, x_97.z);
  let x_99 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_98.x, x_98.y, x_98.z, x_99.w);
  let x_101 : vec4<f32> = u_xlat2;
  let x_105 : vec3<f32> = (vec3<f32>(x_101.x, x_101.y, x_101.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_106 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_109 : vec3<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat55 = dot(x_109, vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_113 : f32 = u_xlat55;
  u_xlat55 = (x_113 + 0.5f);
  let x_116 : f32 = u_xlat55;
  let x_118 : vec4<f32> = u_xlat3;
  let x_120 : vec3<f32> = (vec3<f32>(x_116, x_116, x_116) * vec3<f32>(x_118.x, x_118.y, x_118.z));
  let x_121 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_120.x, x_120.y, x_120.z, x_121.w);
  let x_124 : f32 = u_xlat2.w;
  u_xlat55 = max(x_124, 0.0001f);
  let x_127 : vec4<f32> = u_xlat2;
  let x_129 : f32 = u_xlat55;
  let x_131 : vec3<f32> = (vec3<f32>(x_127.x, x_127.y, x_127.z) / vec3<f32>(x_129, x_129, x_129));
  let x_132 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_131.x, x_131.y, x_131.z, x_132.w);
  let x_137 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_138 : vec2<f32> = vec2<f32>(x_137.x, x_137.y);
  let x_142 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_138.x, x_138.y));
  let x_143 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_142.x, x_142.y, x_143.z, x_143.w);
  let x_145 : vec4<f32> = u_xlat3;
  let x_147 : vec4<f32> = hlslcc_FragCoord;
  let x_149 : vec2<f32> = (vec2<f32>(x_145.x, x_145.y) * vec2<f32>(x_147.x, x_147.y));
  let x_150 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_149.x, x_149.y, x_150.z, x_150.w);
  let x_154 : f32 = u_xlat3.y;
  let x_157 : f32 = x_43.x_ScaleBiasRt.x;
  let x_160 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat55 = ((x_154 * x_157) + x_160);
  let x_162 : f32 = u_xlat55;
  u_xlat3.z = (-(x_162) + 1.0f);
  let x_172 : vec4<f32> = u_xlat3;
  let x_175 : f32 = x_43.x_GlobalMipBias.x;
  let x_176 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_172.x, x_172.z), x_175);
  u_xlat55 = x_176.x;
  let x_179 : f32 = u_xlat55;
  u_xlat56 = (x_179 + -1.0f);
  let x_184 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_185 : f32 = u_xlat56;
  u_xlat56 = ((x_184 * x_185) + 1.0f);
  let x_188 : f32 = u_xlat55;
  u_xlat55 = min(x_188, 1.0f);
  let x_202 : f32 = x_199.x_MainLightShadowParams.y;
  u_xlatb3 = (0.0f < x_202);
  let x_204 : bool = u_xlatb3;
  if (x_204) {
    let x_208 : f32 = x_199.x_MainLightShadowParams.y;
    u_xlatb3 = (x_208 == 1.0f);
    let x_210 : bool = u_xlatb3;
    if (x_210) {
      let x_214 : vec4<f32> = vs_TEXCOORD6;
      let x_218 : vec4<f32> = x_199.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_214.x, x_214.y, x_214.x, x_214.y) + x_218);
      let x_221 : vec4<f32> = u_xlat3;
      let x_222 : vec2<f32> = vec2<f32>(x_221.x, x_221.y);
      let x_224 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_222.x, x_222.y, x_224);
      let x_237 : vec3<f32> = txVec0;
      let x_239 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_237.xy, x_237.z);
      u_xlat4.x = x_239;
      let x_242 : vec4<f32> = u_xlat3;
      let x_243 : vec2<f32> = vec2<f32>(x_242.z, x_242.w);
      let x_245 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_243.x, x_243.y, x_245);
      let x_252 : vec3<f32> = txVec1;
      let x_254 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_252.xy, x_252.z);
      u_xlat4.y = x_254;
      let x_256 : vec4<f32> = vs_TEXCOORD6;
      let x_259 : vec4<f32> = x_199.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_256.x, x_256.y, x_256.x, x_256.y) + x_259);
      let x_262 : vec4<f32> = u_xlat3;
      let x_263 : vec2<f32> = vec2<f32>(x_262.x, x_262.y);
      let x_265 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_263.x, x_263.y, x_265);
      let x_272 : vec3<f32> = txVec2;
      let x_274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_272.xy, x_272.z);
      u_xlat4.z = x_274;
      let x_277 : vec4<f32> = u_xlat3;
      let x_278 : vec2<f32> = vec2<f32>(x_277.z, x_277.w);
      let x_280 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_278.x, x_278.y, x_280);
      let x_287 : vec3<f32> = txVec3;
      let x_289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_287.xy, x_287.z);
      u_xlat4.w = x_289;
      let x_291 : vec4<f32> = u_xlat4;
      u_xlat3.x = dot(x_291, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_299 : f32 = x_199.x_MainLightShadowParams.y;
      u_xlatb21 = (x_299 == 2.0f);
      let x_302 : bool = u_xlatb21;
      if (x_302) {
        let x_306 : vec4<f32> = vs_TEXCOORD6;
        let x_310 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_314 : vec2<f32> = ((vec2<f32>(x_306.x, x_306.y) * vec2<f32>(x_310.z, x_310.w)) + vec2<f32>(0.5f, 0.5f));
        let x_315 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_314.x, x_314.y, x_315.z);
        let x_317 : vec3<f32> = u_xlat21;
        let x_319 : vec2<f32> = floor(vec2<f32>(x_317.x, x_317.y));
        let x_320 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_319.x, x_319.y, x_320.z);
        let x_322 : vec4<f32> = vs_TEXCOORD6;
        let x_325 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_328 : vec3<f32> = u_xlat21;
        let x_331 : vec2<f32> = ((vec2<f32>(x_322.x, x_322.y) * vec2<f32>(x_325.z, x_325.w)) + -(vec2<f32>(x_328.x, x_328.y)));
        let x_332 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_331.x, x_331.y, x_332.z, x_332.w);
        let x_335 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_335.x, x_335.x, x_335.y, x_335.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_340 : vec4<f32> = u_xlat5;
        let x_342 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_340.x, x_340.x, x_340.z, x_340.z) * vec4<f32>(x_342.x, x_342.x, x_342.z, x_342.z));
        let x_347 : vec4<f32> = u_xlat6;
        u_xlat40 = (vec2<f32>(x_347.y, x_347.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_352 : vec4<f32> = u_xlat6;
        let x_355 : vec4<f32> = u_xlat4;
        let x_358 : vec2<f32> = ((vec2<f32>(x_352.x, x_352.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_355.x, x_355.y)));
        let x_359 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_358.x, x_359.y, x_358.y, x_359.w);
        let x_361 : vec4<f32> = u_xlat4;
        let x_364 : vec2<f32> = (-(vec2<f32>(x_361.x, x_361.y)) + vec2<f32>(1.0f, 1.0f));
        let x_365 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_364.x, x_364.y, x_365.z, x_365.w);
        let x_368 : vec4<f32> = u_xlat4;
        u_xlat42 = min(vec2<f32>(x_368.x, x_368.y), vec2<f32>(0.0f, 0.0f));
        let x_372 : vec2<f32> = u_xlat42;
        let x_374 : vec2<f32> = u_xlat42;
        let x_376 : vec4<f32> = u_xlat6;
        u_xlat42 = ((-(x_372) * x_374) + vec2<f32>(x_376.x, x_376.y));
        let x_379 : vec4<f32> = u_xlat4;
        let x_381 : vec2<f32> = max(vec2<f32>(x_379.x, x_379.y), vec2<f32>(0.0f, 0.0f));
        let x_382 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_382.z, x_382.w);
        let x_384 : vec4<f32> = u_xlat4;
        let x_387 : vec4<f32> = u_xlat4;
        let x_390 : vec4<f32> = u_xlat5;
        let x_392 : vec2<f32> = ((-(vec2<f32>(x_384.x, x_384.y)) * vec2<f32>(x_387.x, x_387.y)) + vec2<f32>(x_390.y, x_390.w));
        let x_393 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_392.x, x_392.y, x_393.z, x_393.w);
        let x_395 : vec2<f32> = u_xlat42;
        u_xlat42 = (x_395 + vec2<f32>(1.0f, 1.0f));
        let x_397 : vec4<f32> = u_xlat4;
        let x_399 : vec2<f32> = (vec2<f32>(x_397.x, x_397.y) + vec2<f32>(1.0f, 1.0f));
        let x_400 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
        let x_403 : vec4<f32> = u_xlat5;
        let x_407 : vec2<f32> = (vec2<f32>(x_403.x, x_403.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_408 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_407.x, x_407.y, x_408.z, x_408.w);
        let x_411 : vec4<f32> = u_xlat6;
        let x_413 : vec2<f32> = (vec2<f32>(x_411.x, x_411.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_414 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
        let x_416 : vec2<f32> = u_xlat42;
        let x_417 : vec2<f32> = (x_416 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_418 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_417.x, x_417.y, x_418.z, x_418.w);
        let x_421 : vec4<f32> = u_xlat4;
        let x_423 : vec2<f32> = (vec2<f32>(x_421.x, x_421.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_424 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_423.x, x_423.y, x_424.z, x_424.w);
        let x_426 : vec4<f32> = u_xlat5;
        let x_428 : vec2<f32> = (vec2<f32>(x_426.y, x_426.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_429 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_428.x, x_428.y, x_429.z, x_429.w);
        let x_432 : f32 = u_xlat6.x;
        u_xlat7.z = x_432;
        let x_435 : f32 = u_xlat4.x;
        u_xlat7.w = x_435;
        let x_438 : f32 = u_xlat9.x;
        u_xlat8.z = x_438;
        let x_441 : f32 = u_xlat40.x;
        u_xlat8.w = x_441;
        let x_443 : vec4<f32> = u_xlat7;
        let x_445 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_443.z, x_443.w, x_443.x, x_443.z) + vec4<f32>(x_445.z, x_445.w, x_445.x, x_445.z));
        let x_449 : f32 = u_xlat7.y;
        u_xlat6.z = x_449;
        let x_452 : f32 = u_xlat4.y;
        u_xlat6.w = x_452;
        let x_455 : f32 = u_xlat8.y;
        u_xlat9.z = x_455;
        let x_458 : f32 = u_xlat40.y;
        u_xlat9.w = x_458;
        let x_460 : vec4<f32> = u_xlat6;
        let x_462 : vec4<f32> = u_xlat9;
        let x_464 : vec3<f32> = (vec3<f32>(x_460.z, x_460.y, x_460.w) + vec3<f32>(x_462.z, x_462.y, x_462.w));
        let x_465 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_464.x, x_464.y, x_464.z, x_465.w);
        let x_467 : vec4<f32> = u_xlat8;
        let x_469 : vec4<f32> = u_xlat5;
        let x_471 : vec3<f32> = (vec3<f32>(x_467.x, x_467.z, x_467.w) / vec3<f32>(x_469.z, x_469.w, x_469.y));
        let x_472 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_471.x, x_471.y, x_471.z, x_472.w);
        let x_474 : vec4<f32> = u_xlat6;
        let x_479 : vec3<f32> = (vec3<f32>(x_474.x, x_474.y, x_474.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_480 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
        let x_482 : vec4<f32> = u_xlat9;
        let x_484 : vec4<f32> = u_xlat4;
        let x_486 : vec3<f32> = (vec3<f32>(x_482.z, x_482.y, x_482.w) / vec3<f32>(x_484.x, x_484.y, x_484.z));
        let x_487 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
        let x_489 : vec4<f32> = u_xlat7;
        let x_491 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_492 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_491.x, x_491.y, x_491.z, x_492.w);
        let x_494 : vec4<f32> = u_xlat6;
        let x_497 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_499 : vec3<f32> = (vec3<f32>(x_494.y, x_494.x, x_494.z) * vec3<f32>(x_497.x, x_497.x, x_497.x));
        let x_500 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_499.x, x_499.y, x_499.z, x_500.w);
        let x_502 : vec4<f32> = u_xlat7;
        let x_505 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_507 : vec3<f32> = (vec3<f32>(x_502.x, x_502.y, x_502.z) * vec3<f32>(x_505.y, x_505.y, x_505.y));
        let x_508 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_507.x, x_507.y, x_507.z, x_508.w);
        let x_511 : f32 = u_xlat7.x;
        u_xlat6.w = x_511;
        let x_513 : vec3<f32> = u_xlat21;
        let x_516 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_519 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_513.x, x_513.y, x_513.x, x_513.y) * vec4<f32>(x_516.x, x_516.y, x_516.x, x_516.y)) + vec4<f32>(x_519.y, x_519.w, x_519.x, x_519.w));
        let x_522 : vec3<f32> = u_xlat21;
        let x_525 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_528 : vec4<f32> = u_xlat6;
        let x_530 : vec2<f32> = ((vec2<f32>(x_522.x, x_522.y) * vec2<f32>(x_525.x, x_525.y)) + vec2<f32>(x_528.z, x_528.w));
        let x_531 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
        let x_534 : f32 = u_xlat6.y;
        u_xlat7.w = x_534;
        let x_536 : vec4<f32> = u_xlat7;
        let x_537 : vec2<f32> = vec2<f32>(x_536.y, x_536.z);
        let x_538 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_538.x, x_537.x, x_538.z, x_537.y);
        let x_541 : vec3<f32> = u_xlat21;
        let x_544 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_547 : vec4<f32> = u_xlat6;
        u_xlat10 = ((vec4<f32>(x_541.x, x_541.y, x_541.x, x_541.y) * vec4<f32>(x_544.x, x_544.y, x_544.x, x_544.y)) + vec4<f32>(x_547.x, x_547.y, x_547.z, x_547.y));
        let x_550 : vec3<f32> = u_xlat21;
        let x_553 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_556 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_550.x, x_550.y, x_550.x, x_550.y) * vec4<f32>(x_553.x, x_553.y, x_553.x, x_553.y)) + vec4<f32>(x_556.w, x_556.y, x_556.w, x_556.z));
        let x_559 : vec3<f32> = u_xlat21;
        let x_562 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_565 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_559.x, x_559.y, x_559.x, x_559.y) * vec4<f32>(x_562.x, x_562.y, x_562.x, x_562.y)) + vec4<f32>(x_565.x, x_565.w, x_565.z, x_565.w));
        let x_569 : vec4<f32> = u_xlat4;
        let x_571 : vec4<f32> = u_xlat5;
        u_xlat11 = (vec4<f32>(x_569.x, x_569.x, x_569.x, x_569.y) * vec4<f32>(x_571.z, x_571.w, x_571.y, x_571.z));
        let x_575 : vec4<f32> = u_xlat4;
        let x_577 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_575.y, x_575.y, x_575.z, x_575.z) * x_577);
        let x_580 : f32 = u_xlat4.z;
        let x_582 : f32 = u_xlat5.y;
        u_xlat21.x = (x_580 * x_582);
        let x_586 : vec4<f32> = u_xlat8;
        let x_587 : vec2<f32> = vec2<f32>(x_586.x, x_586.y);
        let x_589 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_587.x, x_587.y, x_589);
        let x_597 : vec3<f32> = txVec4;
        let x_599 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_597.xy, x_597.z);
        u_xlat39 = x_599;
        let x_601 : vec4<f32> = u_xlat8;
        let x_602 : vec2<f32> = vec2<f32>(x_601.z, x_601.w);
        let x_604 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_602.x, x_602.y, x_604);
        let x_612 : vec3<f32> = txVec5;
        let x_614 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_612.xy, x_612.z);
        u_xlat57 = x_614;
        let x_615 : f32 = u_xlat57;
        let x_617 : f32 = u_xlat11.y;
        u_xlat57 = (x_615 * x_617);
        let x_620 : f32 = u_xlat11.x;
        let x_621 : f32 = u_xlat39;
        let x_623 : f32 = u_xlat57;
        u_xlat39 = ((x_620 * x_621) + x_623);
        let x_626 : vec4<f32> = u_xlat9;
        let x_627 : vec2<f32> = vec2<f32>(x_626.x, x_626.y);
        let x_629 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_627.x, x_627.y, x_629);
        let x_636 : vec3<f32> = txVec6;
        let x_638 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_636.xy, x_636.z);
        u_xlat57 = x_638;
        let x_640 : f32 = u_xlat11.z;
        let x_641 : f32 = u_xlat57;
        let x_643 : f32 = u_xlat39;
        u_xlat39 = ((x_640 * x_641) + x_643);
        let x_646 : vec4<f32> = u_xlat7;
        let x_647 : vec2<f32> = vec2<f32>(x_646.x, x_646.y);
        let x_649 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_647.x, x_647.y, x_649);
        let x_656 : vec3<f32> = txVec7;
        let x_658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_656.xy, x_656.z);
        u_xlat57 = x_658;
        let x_660 : f32 = u_xlat11.w;
        let x_661 : f32 = u_xlat57;
        let x_663 : f32 = u_xlat39;
        u_xlat39 = ((x_660 * x_661) + x_663);
        let x_666 : vec4<f32> = u_xlat10;
        let x_667 : vec2<f32> = vec2<f32>(x_666.x, x_666.y);
        let x_669 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_667.x, x_667.y, x_669);
        let x_676 : vec3<f32> = txVec8;
        let x_678 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_676.xy, x_676.z);
        u_xlat57 = x_678;
        let x_680 : f32 = u_xlat12.x;
        let x_681 : f32 = u_xlat57;
        let x_683 : f32 = u_xlat39;
        u_xlat39 = ((x_680 * x_681) + x_683);
        let x_686 : vec4<f32> = u_xlat10;
        let x_687 : vec2<f32> = vec2<f32>(x_686.z, x_686.w);
        let x_689 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_687.x, x_687.y, x_689);
        let x_696 : vec3<f32> = txVec9;
        let x_698 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_696.xy, x_696.z);
        u_xlat57 = x_698;
        let x_700 : f32 = u_xlat12.y;
        let x_701 : f32 = u_xlat57;
        let x_703 : f32 = u_xlat39;
        u_xlat39 = ((x_700 * x_701) + x_703);
        let x_706 : vec4<f32> = u_xlat7;
        let x_707 : vec2<f32> = vec2<f32>(x_706.z, x_706.w);
        let x_709 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_707.x, x_707.y, x_709);
        let x_716 : vec3<f32> = txVec10;
        let x_718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_716.xy, x_716.z);
        u_xlat57 = x_718;
        let x_720 : f32 = u_xlat12.z;
        let x_721 : f32 = u_xlat57;
        let x_723 : f32 = u_xlat39;
        u_xlat39 = ((x_720 * x_721) + x_723);
        let x_726 : vec4<f32> = u_xlat6;
        let x_727 : vec2<f32> = vec2<f32>(x_726.x, x_726.y);
        let x_729 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_727.x, x_727.y, x_729);
        let x_736 : vec3<f32> = txVec11;
        let x_738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_736.xy, x_736.z);
        u_xlat57 = x_738;
        let x_740 : f32 = u_xlat12.w;
        let x_741 : f32 = u_xlat57;
        let x_743 : f32 = u_xlat39;
        u_xlat39 = ((x_740 * x_741) + x_743);
        let x_746 : vec4<f32> = u_xlat6;
        let x_747 : vec2<f32> = vec2<f32>(x_746.z, x_746.w);
        let x_749 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_747.x, x_747.y, x_749);
        let x_756 : vec3<f32> = txVec12;
        let x_758 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_756.xy, x_756.z);
        u_xlat57 = x_758;
        let x_760 : f32 = u_xlat21.x;
        let x_761 : f32 = u_xlat57;
        let x_763 : f32 = u_xlat39;
        u_xlat3.x = ((x_760 * x_761) + x_763);
      } else {
        let x_767 : vec4<f32> = vs_TEXCOORD6;
        let x_770 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_773 : vec2<f32> = ((vec2<f32>(x_767.x, x_767.y) * vec2<f32>(x_770.z, x_770.w)) + vec2<f32>(0.5f, 0.5f));
        let x_774 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_773.x, x_773.y, x_774.z);
        let x_776 : vec3<f32> = u_xlat21;
        let x_778 : vec2<f32> = floor(vec2<f32>(x_776.x, x_776.y));
        let x_779 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_778.x, x_778.y, x_779.z);
        let x_781 : vec4<f32> = vs_TEXCOORD6;
        let x_784 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_787 : vec3<f32> = u_xlat21;
        let x_790 : vec2<f32> = ((vec2<f32>(x_781.x, x_781.y) * vec2<f32>(x_784.z, x_784.w)) + -(vec2<f32>(x_787.x, x_787.y)));
        let x_791 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_790.x, x_790.y, x_791.z, x_791.w);
        let x_793 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_793.x, x_793.x, x_793.y, x_793.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_796 : vec4<f32> = u_xlat5;
        let x_798 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_796.x, x_796.x, x_796.z, x_796.z) * vec4<f32>(x_798.x, x_798.x, x_798.z, x_798.z));
        let x_801 : vec4<f32> = u_xlat6;
        let x_805 : vec2<f32> = (vec2<f32>(x_801.y, x_801.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_806 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_806.x, x_805.x, x_806.z, x_805.y);
        let x_808 : vec4<f32> = u_xlat6;
        let x_811 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_808.x, x_808.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_811.x, x_811.y)));
        let x_815 : vec4<f32> = u_xlat4;
        let x_818 : vec2<f32> = (-(vec2<f32>(x_815.x, x_815.y)) + vec2<f32>(1.0f, 1.0f));
        let x_819 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_818.x, x_819.y, x_818.y, x_819.w);
        let x_821 : vec4<f32> = u_xlat4;
        let x_823 : vec2<f32> = min(vec2<f32>(x_821.x, x_821.y), vec2<f32>(0.0f, 0.0f));
        let x_824 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_823.x, x_823.y, x_824.z, x_824.w);
        let x_826 : vec4<f32> = u_xlat6;
        let x_829 : vec4<f32> = u_xlat6;
        let x_832 : vec4<f32> = u_xlat5;
        let x_834 : vec2<f32> = ((-(vec2<f32>(x_826.x, x_826.y)) * vec2<f32>(x_829.x, x_829.y)) + vec2<f32>(x_832.x, x_832.z));
        let x_835 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_834.x, x_835.y, x_834.y, x_835.w);
        let x_837 : vec4<f32> = u_xlat4;
        let x_839 : vec2<f32> = max(vec2<f32>(x_837.x, x_837.y), vec2<f32>(0.0f, 0.0f));
        let x_840 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_839.x, x_839.y, x_840.z, x_840.w);
        let x_842 : vec4<f32> = u_xlat6;
        let x_845 : vec4<f32> = u_xlat6;
        let x_848 : vec4<f32> = u_xlat5;
        let x_850 : vec2<f32> = ((-(vec2<f32>(x_842.x, x_842.y)) * vec2<f32>(x_845.x, x_845.y)) + vec2<f32>(x_848.y, x_848.w));
        let x_851 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_851.x, x_850.x, x_851.z, x_850.y);
        let x_853 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_853 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_857 : f32 = u_xlat5.y;
        u_xlat6.z = (x_857 * 0.081632003f);
        let x_861 : vec2<f32> = u_xlat40;
        let x_864 : vec2<f32> = (vec2<f32>(x_861.y, x_861.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_865 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_864.x, x_864.y, x_865.z, x_865.w);
        let x_867 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_867.x, x_867.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_871 : f32 = u_xlat5.w;
        u_xlat8.z = (x_871 * 0.081632003f);
        let x_875 : f32 = u_xlat8.y;
        u_xlat6.x = x_875;
        let x_877 : vec4<f32> = u_xlat4;
        let x_884 : vec2<f32> = ((vec2<f32>(x_877.x, x_877.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_885 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_885.x, x_884.x, x_885.z, x_884.y);
        let x_887 : vec4<f32> = u_xlat4;
        let x_891 : vec2<f32> = ((vec2<f32>(x_887.x, x_887.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_892 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_891.x, x_892.y, x_891.y, x_892.w);
        let x_895 : f32 = u_xlat40.x;
        u_xlat5.y = x_895;
        let x_898 : f32 = u_xlat7.y;
        u_xlat5.w = x_898;
        let x_900 : vec4<f32> = u_xlat5;
        let x_901 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_900 + x_901);
        let x_903 : vec4<f32> = u_xlat4;
        let x_906 : vec2<f32> = ((vec2<f32>(x_903.y, x_903.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_907 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_907.x, x_906.x, x_907.z, x_906.y);
        let x_909 : vec4<f32> = u_xlat4;
        let x_912 : vec2<f32> = ((vec2<f32>(x_909.y, x_909.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_913 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_912.x, x_913.y, x_912.y, x_913.w);
        let x_916 : f32 = u_xlat40.y;
        u_xlat7.y = x_916;
        let x_918 : vec4<f32> = u_xlat7;
        let x_919 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_918 + x_919);
        let x_921 : vec4<f32> = u_xlat5;
        let x_922 : vec4<f32> = u_xlat6;
        u_xlat5 = (x_921 / x_922);
        let x_924 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_924 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_930 : vec4<f32> = u_xlat7;
        let x_931 : vec4<f32> = u_xlat4;
        u_xlat7 = (x_930 / x_931);
        let x_933 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_933 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_935 : vec4<f32> = u_xlat5;
        let x_938 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_935.w, x_935.x, x_935.y, x_935.z) * vec4<f32>(x_938.x, x_938.x, x_938.x, x_938.x));
        let x_941 : vec4<f32> = u_xlat7;
        let x_944 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_941.x, x_941.w, x_941.y, x_941.z) * vec4<f32>(x_944.y, x_944.y, x_944.y, x_944.y));
        let x_947 : vec4<f32> = u_xlat5;
        let x_948 : vec3<f32> = vec3<f32>(x_947.y, x_947.z, x_947.w);
        let x_949 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_948.x, x_949.y, x_948.y, x_948.z);
        let x_952 : f32 = u_xlat7.x;
        u_xlat8.y = x_952;
        let x_954 : vec3<f32> = u_xlat21;
        let x_957 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_960 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_954.x, x_954.y, x_954.x, x_954.y) * vec4<f32>(x_957.x, x_957.y, x_957.x, x_957.y)) + vec4<f32>(x_960.x, x_960.y, x_960.z, x_960.y));
        let x_963 : vec3<f32> = u_xlat21;
        let x_966 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_969 : vec4<f32> = u_xlat8;
        let x_971 : vec2<f32> = ((vec2<f32>(x_963.x, x_963.y) * vec2<f32>(x_966.x, x_966.y)) + vec2<f32>(x_969.w, x_969.y));
        let x_972 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_971.x, x_971.y, x_972.z, x_972.w);
        let x_975 : f32 = u_xlat8.y;
        u_xlat5.y = x_975;
        let x_978 : f32 = u_xlat7.z;
        u_xlat8.y = x_978;
        let x_980 : vec3<f32> = u_xlat21;
        let x_983 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_986 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_980.x, x_980.y, x_980.x, x_980.y) * vec4<f32>(x_983.x, x_983.y, x_983.x, x_983.y)) + vec4<f32>(x_986.x, x_986.y, x_986.z, x_986.y));
        let x_990 : vec3<f32> = u_xlat21;
        let x_993 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_996 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_990.x, x_990.y) * vec2<f32>(x_993.x, x_993.y)) + vec2<f32>(x_996.w, x_996.y));
        let x_1000 : f32 = u_xlat8.y;
        u_xlat5.z = x_1000;
        let x_1002 : vec3<f32> = u_xlat21;
        let x_1005 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1008 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1002.x, x_1002.y, x_1002.x, x_1002.y) * vec4<f32>(x_1005.x, x_1005.y, x_1005.x, x_1005.y)) + vec4<f32>(x_1008.x, x_1008.y, x_1008.x, x_1008.z));
        let x_1012 : f32 = u_xlat7.w;
        u_xlat8.y = x_1012;
        let x_1015 : vec3<f32> = u_xlat21;
        let x_1018 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1021 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1015.x, x_1015.y, x_1015.x, x_1015.y) * vec4<f32>(x_1018.x, x_1018.y, x_1018.x, x_1018.y)) + vec4<f32>(x_1021.x, x_1021.y, x_1021.z, x_1021.y));
        let x_1025 : vec3<f32> = u_xlat21;
        let x_1028 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1031 : vec4<f32> = u_xlat8;
        u_xlat23 = ((vec2<f32>(x_1025.x, x_1025.y) * vec2<f32>(x_1028.x, x_1028.y)) + vec2<f32>(x_1031.w, x_1031.y));
        let x_1035 : f32 = u_xlat8.y;
        u_xlat5.w = x_1035;
        let x_1038 : vec3<f32> = u_xlat21;
        let x_1041 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1044 : vec4<f32> = u_xlat5;
        u_xlat14 = ((vec2<f32>(x_1038.x, x_1038.y) * vec2<f32>(x_1041.x, x_1041.y)) + vec2<f32>(x_1044.x, x_1044.w));
        let x_1047 : vec4<f32> = u_xlat8;
        let x_1048 : vec3<f32> = vec3<f32>(x_1047.x, x_1047.z, x_1047.w);
        let x_1049 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1048.x, x_1049.y, x_1048.y, x_1048.z);
        let x_1051 : vec3<f32> = u_xlat21;
        let x_1054 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1057 : vec4<f32> = u_xlat7;
        u_xlat8 = ((vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y) * vec4<f32>(x_1054.x, x_1054.y, x_1054.x, x_1054.y)) + vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1057.y));
        let x_1061 : vec3<f32> = u_xlat21;
        let x_1064 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1067 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1061.x, x_1061.y) * vec2<f32>(x_1064.x, x_1064.y)) + vec2<f32>(x_1067.w, x_1067.y));
        let x_1071 : f32 = u_xlat5.x;
        u_xlat7.x = x_1071;
        let x_1073 : vec3<f32> = u_xlat21;
        let x_1076 : vec4<f32> = x_199.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat7;
        let x_1081 : vec2<f32> = ((vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(x_1076.x, x_1076.y)) + vec2<f32>(x_1079.x, x_1079.y));
        let x_1082 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1081.x, x_1081.y, x_1082.z);
        let x_1085 : vec4<f32> = u_xlat4;
        let x_1087 : vec4<f32> = u_xlat6;
        u_xlat15 = (vec4<f32>(x_1085.x, x_1085.x, x_1085.x, x_1085.x) * x_1087);
        let x_1090 : vec4<f32> = u_xlat4;
        let x_1092 : vec4<f32> = u_xlat6;
        u_xlat16 = (vec4<f32>(x_1090.y, x_1090.y, x_1090.y, x_1090.y) * x_1092);
        let x_1095 : vec4<f32> = u_xlat4;
        let x_1097 : vec4<f32> = u_xlat6;
        u_xlat17 = (vec4<f32>(x_1095.z, x_1095.z, x_1095.z, x_1095.z) * x_1097);
        let x_1099 : vec4<f32> = u_xlat4;
        let x_1101 : vec4<f32> = u_xlat6;
        u_xlat4 = (vec4<f32>(x_1099.w, x_1099.w, x_1099.w, x_1099.w) * x_1101);
        let x_1104 : vec4<f32> = u_xlat9;
        let x_1105 : vec2<f32> = vec2<f32>(x_1104.x, x_1104.y);
        let x_1107 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1105.x, x_1105.y, x_1107);
        let x_1114 : vec3<f32> = txVec13;
        let x_1116 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1114.xy, x_1114.z);
        u_xlat57 = x_1116;
        let x_1118 : vec4<f32> = u_xlat9;
        let x_1119 : vec2<f32> = vec2<f32>(x_1118.z, x_1118.w);
        let x_1121 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1119.x, x_1119.y, x_1121);
        let x_1128 : vec3<f32> = txVec14;
        let x_1130 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1128.xy, x_1128.z);
        u_xlat5.x = x_1130;
        let x_1133 : f32 = u_xlat5.x;
        let x_1135 : f32 = u_xlat15.y;
        u_xlat5.x = (x_1133 * x_1135);
        let x_1139 : f32 = u_xlat15.x;
        let x_1140 : f32 = u_xlat57;
        let x_1143 : f32 = u_xlat5.x;
        u_xlat57 = ((x_1139 * x_1140) + x_1143);
        let x_1146 : vec4<f32> = u_xlat10;
        let x_1147 : vec2<f32> = vec2<f32>(x_1146.x, x_1146.y);
        let x_1149 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1147.x, x_1147.y, x_1149);
        let x_1156 : vec3<f32> = txVec15;
        let x_1158 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1156.xy, x_1156.z);
        u_xlat5.x = x_1158;
        let x_1161 : f32 = u_xlat15.z;
        let x_1163 : f32 = u_xlat5.x;
        let x_1165 : f32 = u_xlat57;
        u_xlat57 = ((x_1161 * x_1163) + x_1165);
        let x_1168 : vec4<f32> = u_xlat12;
        let x_1169 : vec2<f32> = vec2<f32>(x_1168.x, x_1168.y);
        let x_1171 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1169.x, x_1169.y, x_1171);
        let x_1178 : vec3<f32> = txVec16;
        let x_1180 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1178.xy, x_1178.z);
        u_xlat5.x = x_1180;
        let x_1183 : f32 = u_xlat15.w;
        let x_1185 : f32 = u_xlat5.x;
        let x_1187 : f32 = u_xlat57;
        u_xlat57 = ((x_1183 * x_1185) + x_1187);
        let x_1190 : vec4<f32> = u_xlat11;
        let x_1191 : vec2<f32> = vec2<f32>(x_1190.x, x_1190.y);
        let x_1193 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
        let x_1200 : vec3<f32> = txVec17;
        let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1200.xy, x_1200.z);
        u_xlat5.x = x_1202;
        let x_1205 : f32 = u_xlat16.x;
        let x_1207 : f32 = u_xlat5.x;
        let x_1209 : f32 = u_xlat57;
        u_xlat57 = ((x_1205 * x_1207) + x_1209);
        let x_1212 : vec4<f32> = u_xlat11;
        let x_1213 : vec2<f32> = vec2<f32>(x_1212.z, x_1212.w);
        let x_1215 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1213.x, x_1213.y, x_1215);
        let x_1222 : vec3<f32> = txVec18;
        let x_1224 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1222.xy, x_1222.z);
        u_xlat5.x = x_1224;
        let x_1227 : f32 = u_xlat16.y;
        let x_1229 : f32 = u_xlat5.x;
        let x_1231 : f32 = u_xlat57;
        u_xlat57 = ((x_1227 * x_1229) + x_1231);
        let x_1234 : vec2<f32> = u_xlat46;
        let x_1236 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1234.x, x_1234.y, x_1236);
        let x_1243 : vec3<f32> = txVec19;
        let x_1245 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1243.xy, x_1243.z);
        u_xlat5.x = x_1245;
        let x_1248 : f32 = u_xlat16.z;
        let x_1250 : f32 = u_xlat5.x;
        let x_1252 : f32 = u_xlat57;
        u_xlat57 = ((x_1248 * x_1250) + x_1252);
        let x_1255 : vec4<f32> = u_xlat12;
        let x_1256 : vec2<f32> = vec2<f32>(x_1255.z, x_1255.w);
        let x_1258 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
        let x_1265 : vec3<f32> = txVec20;
        let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1265.xy, x_1265.z);
        u_xlat5.x = x_1267;
        let x_1270 : f32 = u_xlat16.w;
        let x_1272 : f32 = u_xlat5.x;
        let x_1274 : f32 = u_xlat57;
        u_xlat57 = ((x_1270 * x_1272) + x_1274);
        let x_1277 : vec4<f32> = u_xlat13;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.x, x_1277.y);
        let x_1280 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1287 : vec3<f32> = txVec21;
        let x_1289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1287.xy, x_1287.z);
        u_xlat5.x = x_1289;
        let x_1292 : f32 = u_xlat17.x;
        let x_1294 : f32 = u_xlat5.x;
        let x_1296 : f32 = u_xlat57;
        u_xlat57 = ((x_1292 * x_1294) + x_1296);
        let x_1299 : vec4<f32> = u_xlat13;
        let x_1300 : vec2<f32> = vec2<f32>(x_1299.z, x_1299.w);
        let x_1302 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1300.x, x_1300.y, x_1302);
        let x_1309 : vec3<f32> = txVec22;
        let x_1311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1309.xy, x_1309.z);
        u_xlat5.x = x_1311;
        let x_1314 : f32 = u_xlat17.y;
        let x_1316 : f32 = u_xlat5.x;
        let x_1318 : f32 = u_xlat57;
        u_xlat57 = ((x_1314 * x_1316) + x_1318);
        let x_1321 : vec2<f32> = u_xlat23;
        let x_1323 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1321.x, x_1321.y, x_1323);
        let x_1330 : vec3<f32> = txVec23;
        let x_1332 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1330.xy, x_1330.z);
        u_xlat5.x = x_1332;
        let x_1335 : f32 = u_xlat17.z;
        let x_1337 : f32 = u_xlat5.x;
        let x_1339 : f32 = u_xlat57;
        u_xlat57 = ((x_1335 * x_1337) + x_1339);
        let x_1342 : vec2<f32> = u_xlat14;
        let x_1344 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1342.x, x_1342.y, x_1344);
        let x_1351 : vec3<f32> = txVec24;
        let x_1353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1351.xy, x_1351.z);
        u_xlat5.x = x_1353;
        let x_1356 : f32 = u_xlat17.w;
        let x_1358 : f32 = u_xlat5.x;
        let x_1360 : f32 = u_xlat57;
        u_xlat57 = ((x_1356 * x_1358) + x_1360);
        let x_1363 : vec4<f32> = u_xlat8;
        let x_1364 : vec2<f32> = vec2<f32>(x_1363.x, x_1363.y);
        let x_1366 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1364.x, x_1364.y, x_1366);
        let x_1373 : vec3<f32> = txVec25;
        let x_1375 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1373.xy, x_1373.z);
        u_xlat5.x = x_1375;
        let x_1378 : f32 = u_xlat4.x;
        let x_1380 : f32 = u_xlat5.x;
        let x_1382 : f32 = u_xlat57;
        u_xlat57 = ((x_1378 * x_1380) + x_1382);
        let x_1385 : vec4<f32> = u_xlat8;
        let x_1386 : vec2<f32> = vec2<f32>(x_1385.z, x_1385.w);
        let x_1388 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1386.x, x_1386.y, x_1388);
        let x_1395 : vec3<f32> = txVec26;
        let x_1397 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1395.xy, x_1395.z);
        u_xlat4.x = x_1397;
        let x_1400 : f32 = u_xlat4.y;
        let x_1402 : f32 = u_xlat4.x;
        let x_1404 : f32 = u_xlat57;
        u_xlat57 = ((x_1400 * x_1402) + x_1404);
        let x_1407 : vec2<f32> = u_xlat43;
        let x_1409 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1407.x, x_1407.y, x_1409);
        let x_1416 : vec3<f32> = txVec27;
        let x_1418 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1416.xy, x_1416.z);
        u_xlat4.x = x_1418;
        let x_1421 : f32 = u_xlat4.z;
        let x_1423 : f32 = u_xlat4.x;
        let x_1425 : f32 = u_xlat57;
        u_xlat57 = ((x_1421 * x_1423) + x_1425);
        let x_1428 : vec3<f32> = u_xlat21;
        let x_1429 : vec2<f32> = vec2<f32>(x_1428.x, x_1428.y);
        let x_1431 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1429.x, x_1429.y, x_1431);
        let x_1438 : vec3<f32> = txVec28;
        let x_1440 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1438.xy, x_1438.z);
        u_xlat21.x = x_1440;
        let x_1443 : f32 = u_xlat4.w;
        let x_1445 : f32 = u_xlat21.x;
        let x_1447 : f32 = u_xlat57;
        u_xlat3.x = ((x_1443 * x_1445) + x_1447);
      }
    }
  } else {
    let x_1452 : vec4<f32> = vs_TEXCOORD6;
    let x_1453 : vec2<f32> = vec2<f32>(x_1452.x, x_1452.y);
    let x_1455 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1453.x, x_1453.y, x_1455);
    let x_1462 : vec3<f32> = txVec29;
    let x_1464 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1462.xy, x_1462.z);
    u_xlat3.x = x_1464;
  }
  let x_1467 : f32 = x_199.x_MainLightShadowParams.x;
  u_xlat21.x = (-(x_1467) + 1.0f);
  let x_1472 : f32 = u_xlat3.x;
  let x_1474 : f32 = x_199.x_MainLightShadowParams.x;
  let x_1477 : f32 = u_xlat21.x;
  u_xlat3.x = ((x_1472 * x_1474) + x_1477);
  let x_1481 : f32 = vs_TEXCOORD6.z;
  u_xlatb21 = (0.0f >= x_1481);
  let x_1485 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (x_1485 >= 1.0f);
  let x_1487 : bool = u_xlatb39;
  let x_1488 : bool = u_xlatb21;
  u_xlatb21 = (x_1487 | x_1488);
  let x_1490 : bool = u_xlatb21;
  if (x_1490) {
    x_1491 = 1.0f;
  } else {
    let x_1496 : f32 = u_xlat3.x;
    x_1491 = x_1496;
  }
  let x_1497 : f32 = x_1491;
  u_xlat3.x = x_1497;
  let x_1500 : vec3<f32> = vs_TEXCOORD1;
  let x_1503 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat21 = (x_1500 + -(x_1503));
  let x_1506 : vec3<f32> = u_xlat21;
  let x_1507 : vec3<f32> = u_xlat21;
  u_xlat21.x = dot(x_1506, x_1507);
  let x_1511 : f32 = u_xlat21.x;
  let x_1513 : f32 = x_199.x_MainLightShadowParams.z;
  let x_1516 : f32 = x_199.x_MainLightShadowParams.w;
  u_xlat21.x = ((x_1511 * x_1513) + x_1516);
  let x_1520 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_1520, 0.0f, 1.0f);
  let x_1524 : f32 = u_xlat3.x;
  u_xlat39 = (-(x_1524) + 1.0f);
  let x_1528 : f32 = u_xlat21.x;
  let x_1529 : f32 = u_xlat39;
  let x_1532 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1528 * x_1529) + x_1532);
  let x_1535 : f32 = u_xlat56;
  let x_1539 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat21 = (vec3<f32>(x_1535, x_1535, x_1535) * vec3<f32>(x_1539.x, x_1539.y, x_1539.z));
  let x_1542 : f32 = u_xlat55;
  let x_1544 : vec4<f32> = u_xlat2;
  let x_1546 : vec3<f32> = (vec3<f32>(x_1542, x_1542, x_1542) * vec3<f32>(x_1544.x, x_1544.y, x_1544.z));
  let x_1547 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1546.x, x_1546.y, x_1546.z, x_1547.w);
  let x_1550 : f32 = u_xlat3.x;
  let x_1557 : f32 = x_1554.unity_LightData.z;
  u_xlat55 = (x_1550 * x_1557);
  let x_1559 : f32 = u_xlat55;
  let x_1561 : vec3<f32> = u_xlat21;
  let x_1562 : vec3<f32> = (vec3<f32>(x_1559, x_1559, x_1559) * x_1561);
  let x_1563 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1562.x, x_1562.y, x_1562.z, x_1563.w);
  let x_1565 : vec3<f32> = u_xlat1;
  let x_1568 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(x_1565, vec3<f32>(x_1568.x, x_1568.y, x_1568.z));
  let x_1571 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1571, 0.0f, 1.0f);
  let x_1573 : f32 = u_xlat55;
  let x_1575 : vec4<f32> = u_xlat3;
  let x_1577 : vec3<f32> = (vec3<f32>(x_1573, x_1573, x_1573) * vec3<f32>(x_1575.x, x_1575.y, x_1575.z));
  let x_1578 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1577.x, x_1577.y, x_1577.z, x_1578.w);
  let x_1580 : vec4<f32> = u_xlat0;
  let x_1582 : vec4<f32> = u_xlat3;
  let x_1584 : vec3<f32> = (vec3<f32>(x_1580.y, x_1580.z, x_1580.w) * vec3<f32>(x_1582.x, x_1582.y, x_1582.z));
  let x_1585 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1584.x, x_1584.y, x_1584.z, x_1585.w);
  let x_1588 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1590 : f32 = x_1554.unity_LightData.y;
  u_xlat55 = min(x_1588, x_1590);
  let x_1594 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1594));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1606 : u32 = u_xlatu_loop_1;
    let x_1607 : u32 = u_xlatu55;
    if ((x_1606 < x_1607)) {
    } else {
      break;
    }
    let x_1610 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_1610 >> 2u);
    let x_1614 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_1614 & 3u));
    let x_1618 : u32 = u_xlatu58;
    let x_1621 : vec4<f32> = x_1554.unity_LightIndices[bitcast<i32>(x_1618)];
    let x_1631 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1636 : vec4<u32> = indexable[x_1631];
    u_xlat58 = dot(x_1621, bitcast<vec4<f32>>(x_1636));
    let x_1640 : f32 = u_xlat58;
    u_xlati58 = i32(x_1640);
    let x_1642 : vec3<f32> = vs_TEXCOORD1;
    let x_1654 : i32 = u_xlati58;
    let x_1656 : vec4<f32> = x_1653.x_AdditionalLightsPosition[x_1654];
    let x_1659 : i32 = u_xlati58;
    let x_1661 : vec4<f32> = x_1653.x_AdditionalLightsPosition[x_1659];
    let x_1663 : vec3<f32> = ((-(x_1642) * vec3<f32>(x_1656.w, x_1656.w, x_1656.w)) + vec3<f32>(x_1661.x, x_1661.y, x_1661.z));
    let x_1664 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1663.x, x_1663.y, x_1663.z, x_1664.w);
    let x_1667 : vec4<f32> = u_xlat5;
    let x_1669 : vec4<f32> = u_xlat5;
    u_xlat59 = dot(vec3<f32>(x_1667.x, x_1667.y, x_1667.z), vec3<f32>(x_1669.x, x_1669.y, x_1669.z));
    let x_1672 : f32 = u_xlat59;
    u_xlat59 = max(x_1672, 6.10351562e-05f);
    let x_1675 : f32 = u_xlat59;
    u_xlat6.x = inverseSqrt(x_1675);
    let x_1678 : vec4<f32> = u_xlat5;
    let x_1680 : vec4<f32> = u_xlat6;
    let x_1682 : vec3<f32> = (vec3<f32>(x_1678.x, x_1678.y, x_1678.z) * vec3<f32>(x_1680.x, x_1680.x, x_1680.x));
    let x_1683 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1682.x, x_1682.y, x_1682.z, x_1683.w);
    let x_1685 : f32 = u_xlat59;
    u_xlat6.x = (1.0f / x_1685);
    let x_1688 : f32 = u_xlat59;
    let x_1689 : i32 = u_xlati58;
    let x_1691 : f32 = x_1653.x_AdditionalLightsAttenuation[x_1689].x;
    u_xlat59 = (x_1688 * x_1691);
    let x_1693 : f32 = u_xlat59;
    let x_1695 : f32 = u_xlat59;
    u_xlat59 = ((-(x_1693) * x_1695) + 1.0f);
    let x_1698 : f32 = u_xlat59;
    u_xlat59 = max(x_1698, 0.0f);
    let x_1700 : f32 = u_xlat59;
    let x_1701 : f32 = u_xlat59;
    u_xlat59 = (x_1700 * x_1701);
    let x_1703 : f32 = u_xlat59;
    let x_1705 : f32 = u_xlat6.x;
    u_xlat59 = (x_1703 * x_1705);
    let x_1707 : i32 = u_xlati58;
    let x_1709 : vec4<f32> = x_1653.x_AdditionalLightsSpotDir[x_1707];
    let x_1711 : vec4<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_1709.x, x_1709.y, x_1709.z), vec3<f32>(x_1711.x, x_1711.y, x_1711.z));
    let x_1716 : f32 = u_xlat6.x;
    let x_1717 : i32 = u_xlati58;
    let x_1719 : f32 = x_1653.x_AdditionalLightsAttenuation[x_1717].z;
    let x_1721 : i32 = u_xlati58;
    let x_1723 : f32 = x_1653.x_AdditionalLightsAttenuation[x_1721].w;
    u_xlat6.x = ((x_1716 * x_1719) + x_1723);
    let x_1727 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1727, 0.0f, 1.0f);
    let x_1731 : f32 = u_xlat6.x;
    let x_1733 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1731 * x_1733);
    let x_1736 : f32 = u_xlat59;
    let x_1738 : f32 = u_xlat6.x;
    u_xlat59 = (x_1736 * x_1738);
    let x_1740 : f32 = u_xlat56;
    let x_1742 : i32 = u_xlati58;
    let x_1744 : vec4<f32> = x_1653.x_AdditionalLightsColor[x_1742];
    let x_1746 : vec3<f32> = (vec3<f32>(x_1740, x_1740, x_1740) * vec3<f32>(x_1744.x, x_1744.y, x_1744.z));
    let x_1747 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1746.x, x_1746.y, x_1746.z, x_1747.w);
    let x_1749 : f32 = u_xlat59;
    let x_1751 : vec4<f32> = u_xlat6;
    let x_1753 : vec3<f32> = (vec3<f32>(x_1749, x_1749, x_1749) * vec3<f32>(x_1751.x, x_1751.y, x_1751.z));
    let x_1754 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1753.x, x_1753.y, x_1753.z, x_1754.w);
    let x_1756 : vec3<f32> = u_xlat1;
    let x_1757 : vec4<f32> = u_xlat5;
    u_xlat58 = dot(x_1756, vec3<f32>(x_1757.x, x_1757.y, x_1757.z));
    let x_1760 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1760, 0.0f, 1.0f);
    let x_1762 : f32 = u_xlat58;
    let x_1764 : vec4<f32> = u_xlat6;
    let x_1766 : vec3<f32> = (vec3<f32>(x_1762, x_1762, x_1762) * vec3<f32>(x_1764.x, x_1764.y, x_1764.z));
    let x_1767 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1766.x, x_1766.y, x_1766.z, x_1767.w);
    let x_1769 : vec4<f32> = u_xlat5;
    let x_1771 : vec4<f32> = u_xlat0;
    let x_1774 : vec4<f32> = u_xlat4;
    let x_1776 : vec3<f32> = ((vec3<f32>(x_1769.x, x_1769.y, x_1769.z) * vec3<f32>(x_1771.y, x_1771.z, x_1771.w)) + vec3<f32>(x_1774.x, x_1774.y, x_1774.z));
    let x_1777 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1776.x, x_1776.y, x_1776.z, x_1777.w);

    continuing {
      let x_1779 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1779 + bitcast<u32>(1i));
    }
  }
  let x_1782 : vec4<f32> = u_xlat2;
  let x_1784 : vec4<f32> = u_xlat0;
  let x_1787 : vec4<f32> = u_xlat3;
  u_xlat18 = ((vec3<f32>(x_1782.x, x_1782.y, x_1782.z) * vec3<f32>(x_1784.y, x_1784.z, x_1784.w)) + vec3<f32>(x_1787.x, x_1787.y, x_1787.z));
  let x_1792 : vec4<f32> = u_xlat4;
  let x_1794 : vec3<f32> = u_xlat18;
  let x_1795 : vec3<f32> = (vec3<f32>(x_1792.x, x_1792.y, x_1792.z) + x_1794);
  let x_1796 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1795.x, x_1795.y, x_1795.z, x_1796.w);
  let x_1800 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_1800 == 1.0f);
  let x_1802 : bool = u_xlatb18;
  if (x_1802) {
    let x_1807 : f32 = u_xlat0.x;
    x_1803 = x_1807;
  } else {
    x_1803 = 1.0f;
  }
  let x_1809 : f32 = x_1803;
  SV_Target0.w = x_1809;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  main_1();
  return main_out(SV_Target0);
}

