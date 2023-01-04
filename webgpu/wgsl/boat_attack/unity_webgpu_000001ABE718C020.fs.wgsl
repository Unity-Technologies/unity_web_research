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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(3) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_267 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1685 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1923 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlat21 : vec3<f32>;
  var u_xlat2 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat63 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat64 : f32;
  var u_xlat60 : f32;
  var u_xlat43 : f32;
  var u_xlatb5 : bool;
  var u_xlat5 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlat25 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat45 : f32;
  var txVec5 : vec3<f32>;
  var u_xlat65 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat27 : vec2<f32>;
  var u_xlat16 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
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
  var u_xlatb45 : bool;
  var x_1559 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat28 : vec3<f32>;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu23 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati23 : i32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_TEXCOORD0;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_59 : vec4<f32> = vs_TEXCOORD0;
  let x_62 : f32 = x_44.x_GlobalMipBias.x;
  let x_63 : vec4<f32> = textureSampleBias(x_MetallicTex, sampler_MetallicTex, vec2<f32>(x_59.x, x_59.y), x_62);
  u_xlat1 = x_63.x;
  let x_68 : vec4<f32> = vs_TEXCOORD3;
  let x_70 : vec4<f32> = vs_TEXCOORD3;
  u_xlat21.x = dot(vec3<f32>(x_68.x, x_68.y, x_68.z), vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_75 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_75);
  let x_78 : vec3<f32> = u_xlat21;
  let x_80 : vec4<f32> = vs_TEXCOORD3;
  u_xlat21 = (vec3<f32>(x_78.x, x_78.x, x_78.x) * vec3<f32>(x_80.x, x_80.y, x_80.z));
  let x_88 : f32 = vs_TEXCOORD7.y;
  let x_92 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2 = (x_88 * x_92);
  let x_96 : f32 = x_44.unity_MatrixV[0i].z;
  let x_98 : f32 = vs_TEXCOORD7.x;
  let x_100 : f32 = u_xlat2;
  u_xlat2 = ((x_96 * x_98) + x_100);
  let x_104 : f32 = x_44.unity_MatrixV[2i].z;
  let x_106 : f32 = vs_TEXCOORD7.z;
  let x_108 : f32 = u_xlat2;
  u_xlat2 = ((x_104 * x_106) + x_108);
  let x_110 : f32 = u_xlat2;
  let x_113 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat2 = (x_110 + x_113);
  let x_115 : f32 = u_xlat2;
  let x_119 : f32 = x_44.x_ProjectionParams.y;
  u_xlat2 = (-(x_115) + -(x_119));
  let x_122 : f32 = u_xlat2;
  u_xlat2 = max(x_122, 0.0f);
  let x_125 : f32 = u_xlat2;
  let x_128 : f32 = x_44.unity_FogParams.x;
  u_xlat2 = (x_125 * x_128);
  let x_136 : vec4<f32> = vs_TEXCOORD0;
  let x_139 : f32 = x_44.x_GlobalMipBias.x;
  let x_140 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_136.z, x_136.w), x_139);
  u_xlat22 = vec3<f32>(x_140.x, x_140.y, x_140.z);
  let x_146 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_147 : vec2<f32> = vec2<f32>(x_146.x, x_146.y);
  let x_151 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_147.x, x_147.y));
  let x_152 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_151.x, x_151.y, x_152.z);
  let x_154 : vec3<f32> = u_xlat3;
  let x_156 : vec4<f32> = hlslcc_FragCoord;
  let x_158 : vec2<f32> = (vec2<f32>(x_154.x, x_154.y) * vec2<f32>(x_156.x, x_156.y));
  let x_159 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_158.x, x_158.y, x_159.z);
  let x_163 : f32 = u_xlat3.y;
  let x_166 : f32 = x_44.x_ScaleBiasRt.x;
  let x_169 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat23 = ((x_163 * x_166) + x_169);
  let x_171 : f32 = u_xlat23;
  u_xlat3.z = (-(x_171) + 1.0f);
  let x_175 : f32 = u_xlat1;
  u_xlat23 = ((-(x_175) * 0.959999979f) + 0.959999979f);
  let x_181 : f32 = u_xlat23;
  u_xlat63 = (-(x_181) + 1.0f);
  let x_185 : vec4<f32> = u_xlat0;
  let x_187 : f32 = u_xlat23;
  u_xlat4 = (vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187, x_187, x_187));
  let x_190 : vec4<f32> = u_xlat0;
  let x_194 : vec3<f32> = (vec3<f32>(x_190.x, x_190.y, x_190.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_195 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_194.x, x_194.y, x_194.z, x_195.w);
  let x_197 : f32 = u_xlat1;
  let x_199 : vec4<f32> = u_xlat0;
  let x_204 : vec3<f32> = ((vec3<f32>(x_197, x_197, x_197) * vec3<f32>(x_199.x, x_199.y, x_199.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_205 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  let x_208 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_208) + 1.0f);
  let x_211 : f32 = u_xlat1;
  let x_212 : f32 = u_xlat1;
  u_xlat23 = (x_211 * x_212);
  let x_214 : f32 = u_xlat23;
  u_xlat23 = max(x_214, 0.0078125f);
  let x_218 : f32 = u_xlat23;
  let x_219 : f32 = u_xlat23;
  u_xlat64 = (x_218 * x_219);
  let x_223 : f32 = u_xlat0.w;
  let x_224 : f32 = u_xlat63;
  u_xlat60 = (x_223 + x_224);
  let x_226 : f32 = u_xlat60;
  u_xlat60 = clamp(x_226, 0.0f, 1.0f);
  let x_228 : f32 = u_xlat23;
  u_xlat63 = ((x_228 * 4.0f) + 2.0f);
  let x_238 : vec3<f32> = u_xlat3;
  let x_241 : f32 = x_44.x_GlobalMipBias.x;
  let x_242 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_238.x, x_238.z), x_241);
  u_xlat3.x = x_242.x;
  let x_247 : f32 = u_xlat3.x;
  u_xlat43 = (x_247 + -1.0f);
  let x_252 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_253 : f32 = u_xlat43;
  u_xlat43 = ((x_252 * x_253) + 1.0f);
  let x_257 : f32 = u_xlat3.x;
  u_xlat3.x = min(x_257, 1.0f);
  let x_269 : f32 = x_267.x_MainLightShadowParams.y;
  u_xlatb5 = (0.0f < x_269);
  let x_271 : bool = u_xlatb5;
  if (x_271) {
    let x_275 : f32 = x_267.x_MainLightShadowParams.y;
    u_xlatb5 = (x_275 == 1.0f);
    let x_277 : bool = u_xlatb5;
    if (x_277) {
      let x_282 : vec4<f32> = vs_TEXCOORD8;
      let x_286 : vec4<f32> = x_267.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_282.x, x_282.y, x_282.x, x_282.y) + x_286);
      let x_289 : vec4<f32> = u_xlat5;
      let x_290 : vec2<f32> = vec2<f32>(x_289.x, x_289.y);
      let x_292 : f32 = vs_TEXCOORD8.z;
      txVec0 = vec3<f32>(x_290.x, x_290.y, x_292);
      let x_305 : vec3<f32> = txVec0;
      let x_307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_305.xy, x_305.z);
      u_xlat6.x = x_307;
      let x_310 : vec4<f32> = u_xlat5;
      let x_311 : vec2<f32> = vec2<f32>(x_310.z, x_310.w);
      let x_313 : f32 = vs_TEXCOORD8.z;
      txVec1 = vec3<f32>(x_311.x, x_311.y, x_313);
      let x_320 : vec3<f32> = txVec1;
      let x_322 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_320.xy, x_320.z);
      u_xlat6.y = x_322;
      let x_324 : vec4<f32> = vs_TEXCOORD8;
      let x_327 : vec4<f32> = x_267.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_324.x, x_324.y, x_324.x, x_324.y) + x_327);
      let x_330 : vec4<f32> = u_xlat5;
      let x_331 : vec2<f32> = vec2<f32>(x_330.x, x_330.y);
      let x_333 : f32 = vs_TEXCOORD8.z;
      txVec2 = vec3<f32>(x_331.x, x_331.y, x_333);
      let x_340 : vec3<f32> = txVec2;
      let x_342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_340.xy, x_340.z);
      u_xlat6.z = x_342;
      let x_345 : vec4<f32> = u_xlat5;
      let x_346 : vec2<f32> = vec2<f32>(x_345.z, x_345.w);
      let x_348 : f32 = vs_TEXCOORD8.z;
      txVec3 = vec3<f32>(x_346.x, x_346.y, x_348);
      let x_355 : vec3<f32> = txVec3;
      let x_357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_355.xy, x_355.z);
      u_xlat6.w = x_357;
      let x_359 : vec4<f32> = u_xlat6;
      u_xlat5.x = dot(x_359, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_367 : f32 = x_267.x_MainLightShadowParams.y;
      u_xlatb25 = (x_367 == 2.0f);
      let x_369 : bool = u_xlatb25;
      if (x_369) {
        let x_373 : vec4<f32> = vs_TEXCOORD8;
        let x_376 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_381 : vec2<f32> = ((vec2<f32>(x_373.x, x_373.y) * vec2<f32>(x_376.z, x_376.w)) + vec2<f32>(0.5f, 0.5f));
        let x_382 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_381.x, x_381.y, x_382.z);
        let x_384 : vec3<f32> = u_xlat25;
        let x_386 : vec2<f32> = floor(vec2<f32>(x_384.x, x_384.y));
        let x_387 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_386.x, x_386.y, x_387.z);
        let x_389 : vec4<f32> = vs_TEXCOORD8;
        let x_392 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_395 : vec3<f32> = u_xlat25;
        let x_398 : vec2<f32> = ((vec2<f32>(x_389.x, x_389.y) * vec2<f32>(x_392.z, x_392.w)) + -(vec2<f32>(x_395.x, x_395.y)));
        let x_399 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_398.x, x_398.y, x_399.z, x_399.w);
        let x_402 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_402.x, x_402.x, x_402.y, x_402.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_407 : vec4<f32> = u_xlat7;
        let x_409 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_407.x, x_407.x, x_407.z, x_407.z) * vec4<f32>(x_409.x, x_409.x, x_409.z, x_409.z));
        let x_414 : vec4<f32> = u_xlat8;
        u_xlat46 = (vec2<f32>(x_414.y, x_414.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_419 : vec4<f32> = u_xlat8;
        let x_422 : vec4<f32> = u_xlat6;
        let x_425 : vec2<f32> = ((vec2<f32>(x_419.x, x_419.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_422.x, x_422.y)));
        let x_426 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_425.x, x_426.y, x_425.y, x_426.w);
        let x_428 : vec4<f32> = u_xlat6;
        let x_431 : vec2<f32> = (-(vec2<f32>(x_428.x, x_428.y)) + vec2<f32>(1.0f, 1.0f));
        let x_432 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_431.x, x_431.y, x_432.z, x_432.w);
        let x_435 : vec4<f32> = u_xlat6;
        u_xlat48 = min(vec2<f32>(x_435.x, x_435.y), vec2<f32>(0.0f, 0.0f));
        let x_439 : vec2<f32> = u_xlat48;
        let x_441 : vec2<f32> = u_xlat48;
        let x_443 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_439) * x_441) + vec2<f32>(x_443.x, x_443.y));
        let x_446 : vec4<f32> = u_xlat6;
        let x_448 : vec2<f32> = max(vec2<f32>(x_446.x, x_446.y), vec2<f32>(0.0f, 0.0f));
        let x_449 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_448.x, x_448.y, x_449.z, x_449.w);
        let x_451 : vec4<f32> = u_xlat6;
        let x_454 : vec4<f32> = u_xlat6;
        let x_457 : vec4<f32> = u_xlat7;
        let x_459 : vec2<f32> = ((-(vec2<f32>(x_451.x, x_451.y)) * vec2<f32>(x_454.x, x_454.y)) + vec2<f32>(x_457.y, x_457.w));
        let x_460 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_459.x, x_459.y, x_460.z, x_460.w);
        let x_462 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_462 + vec2<f32>(1.0f, 1.0f));
        let x_464 : vec4<f32> = u_xlat6;
        let x_466 : vec2<f32> = (vec2<f32>(x_464.x, x_464.y) + vec2<f32>(1.0f, 1.0f));
        let x_467 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_466.x, x_466.y, x_467.z, x_467.w);
        let x_470 : vec4<f32> = u_xlat7;
        let x_474 : vec2<f32> = (vec2<f32>(x_470.x, x_470.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_475 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_474.x, x_474.y, x_475.z, x_475.w);
        let x_478 : vec4<f32> = u_xlat8;
        let x_480 : vec2<f32> = (vec2<f32>(x_478.x, x_478.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_481 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_480.x, x_480.y, x_481.z, x_481.w);
        let x_483 : vec2<f32> = u_xlat48;
        let x_484 : vec2<f32> = (x_483 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_485 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
        let x_488 : vec4<f32> = u_xlat6;
        let x_490 : vec2<f32> = (vec2<f32>(x_488.x, x_488.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_491 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
        let x_493 : vec4<f32> = u_xlat7;
        let x_495 : vec2<f32> = (vec2<f32>(x_493.y, x_493.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_496 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_495.x, x_495.y, x_496.z, x_496.w);
        let x_499 : f32 = u_xlat8.x;
        u_xlat9.z = x_499;
        let x_502 : f32 = u_xlat6.x;
        u_xlat9.w = x_502;
        let x_505 : f32 = u_xlat11.x;
        u_xlat10.z = x_505;
        let x_508 : f32 = u_xlat46.x;
        u_xlat10.w = x_508;
        let x_510 : vec4<f32> = u_xlat9;
        let x_512 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_510.z, x_510.w, x_510.x, x_510.z) + vec4<f32>(x_512.z, x_512.w, x_512.x, x_512.z));
        let x_516 : f32 = u_xlat9.y;
        u_xlat8.z = x_516;
        let x_519 : f32 = u_xlat6.y;
        u_xlat8.w = x_519;
        let x_522 : f32 = u_xlat10.y;
        u_xlat11.z = x_522;
        let x_525 : f32 = u_xlat46.y;
        u_xlat11.w = x_525;
        let x_527 : vec4<f32> = u_xlat8;
        let x_529 : vec4<f32> = u_xlat11;
        let x_531 : vec3<f32> = (vec3<f32>(x_527.z, x_527.y, x_527.w) + vec3<f32>(x_529.z, x_529.y, x_529.w));
        let x_532 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
        let x_534 : vec4<f32> = u_xlat10;
        let x_536 : vec4<f32> = u_xlat7;
        let x_538 : vec3<f32> = (vec3<f32>(x_534.x, x_534.z, x_534.w) / vec3<f32>(x_536.z, x_536.w, x_536.y));
        let x_539 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
        let x_541 : vec4<f32> = u_xlat8;
        let x_547 : vec3<f32> = (vec3<f32>(x_541.x, x_541.y, x_541.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_548 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_547.x, x_547.y, x_547.z, x_548.w);
        let x_550 : vec4<f32> = u_xlat11;
        let x_552 : vec4<f32> = u_xlat6;
        let x_554 : vec3<f32> = (vec3<f32>(x_550.z, x_550.y, x_550.w) / vec3<f32>(x_552.x, x_552.y, x_552.z));
        let x_555 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_554.x, x_554.y, x_554.z, x_555.w);
        let x_557 : vec4<f32> = u_xlat9;
        let x_559 : vec3<f32> = (vec3<f32>(x_557.x, x_557.y, x_557.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_560 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
        let x_562 : vec4<f32> = u_xlat8;
        let x_565 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_567 : vec3<f32> = (vec3<f32>(x_562.y, x_562.x, x_562.z) * vec3<f32>(x_565.x, x_565.x, x_565.x));
        let x_568 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
        let x_570 : vec4<f32> = u_xlat9;
        let x_573 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_575 : vec3<f32> = (vec3<f32>(x_570.x, x_570.y, x_570.z) * vec3<f32>(x_573.y, x_573.y, x_573.y));
        let x_576 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_575.x, x_575.y, x_575.z, x_576.w);
        let x_579 : f32 = u_xlat9.x;
        u_xlat8.w = x_579;
        let x_581 : vec3<f32> = u_xlat25;
        let x_584 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_587 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_581.x, x_581.y, x_581.x, x_581.y) * vec4<f32>(x_584.x, x_584.y, x_584.x, x_584.y)) + vec4<f32>(x_587.y, x_587.w, x_587.x, x_587.w));
        let x_590 : vec3<f32> = u_xlat25;
        let x_593 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_596 : vec4<f32> = u_xlat8;
        let x_598 : vec2<f32> = ((vec2<f32>(x_590.x, x_590.y) * vec2<f32>(x_593.x, x_593.y)) + vec2<f32>(x_596.z, x_596.w));
        let x_599 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_602 : f32 = u_xlat8.y;
        u_xlat9.w = x_602;
        let x_604 : vec4<f32> = u_xlat9;
        let x_605 : vec2<f32> = vec2<f32>(x_604.y, x_604.z);
        let x_606 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_606.x, x_605.x, x_606.z, x_605.y);
        let x_609 : vec3<f32> = u_xlat25;
        let x_612 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_615 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_609.x, x_609.y, x_609.x, x_609.y) * vec4<f32>(x_612.x, x_612.y, x_612.x, x_612.y)) + vec4<f32>(x_615.x, x_615.y, x_615.z, x_615.y));
        let x_618 : vec3<f32> = u_xlat25;
        let x_621 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_624 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_618.x, x_618.y, x_618.x, x_618.y) * vec4<f32>(x_621.x, x_621.y, x_621.x, x_621.y)) + vec4<f32>(x_624.w, x_624.y, x_624.w, x_624.z));
        let x_627 : vec3<f32> = u_xlat25;
        let x_630 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_633 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_627.x, x_627.y, x_627.x, x_627.y) * vec4<f32>(x_630.x, x_630.y, x_630.x, x_630.y)) + vec4<f32>(x_633.x, x_633.w, x_633.z, x_633.w));
        let x_637 : vec4<f32> = u_xlat6;
        let x_639 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_637.x, x_637.x, x_637.x, x_637.y) * vec4<f32>(x_639.z, x_639.w, x_639.y, x_639.z));
        let x_643 : vec4<f32> = u_xlat6;
        let x_645 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_643.y, x_643.y, x_643.z, x_643.z) * x_645);
        let x_648 : f32 = u_xlat6.z;
        let x_650 : f32 = u_xlat7.y;
        u_xlat25.x = (x_648 * x_650);
        let x_654 : vec4<f32> = u_xlat10;
        let x_655 : vec2<f32> = vec2<f32>(x_654.x, x_654.y);
        let x_657 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_655.x, x_655.y, x_657);
        let x_665 : vec3<f32> = txVec4;
        let x_667 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_665.xy, x_665.z);
        u_xlat45 = x_667;
        let x_669 : vec4<f32> = u_xlat10;
        let x_670 : vec2<f32> = vec2<f32>(x_669.z, x_669.w);
        let x_672 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_670.x, x_670.y, x_672);
        let x_680 : vec3<f32> = txVec5;
        let x_682 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_680.xy, x_680.z);
        u_xlat65 = x_682;
        let x_683 : f32 = u_xlat65;
        let x_685 : f32 = u_xlat13.y;
        u_xlat65 = (x_683 * x_685);
        let x_688 : f32 = u_xlat13.x;
        let x_689 : f32 = u_xlat45;
        let x_691 : f32 = u_xlat65;
        u_xlat45 = ((x_688 * x_689) + x_691);
        let x_694 : vec4<f32> = u_xlat11;
        let x_695 : vec2<f32> = vec2<f32>(x_694.x, x_694.y);
        let x_697 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_695.x, x_695.y, x_697);
        let x_704 : vec3<f32> = txVec6;
        let x_706 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_704.xy, x_704.z);
        u_xlat65 = x_706;
        let x_708 : f32 = u_xlat13.z;
        let x_709 : f32 = u_xlat65;
        let x_711 : f32 = u_xlat45;
        u_xlat45 = ((x_708 * x_709) + x_711);
        let x_714 : vec4<f32> = u_xlat9;
        let x_715 : vec2<f32> = vec2<f32>(x_714.x, x_714.y);
        let x_717 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_715.x, x_715.y, x_717);
        let x_724 : vec3<f32> = txVec7;
        let x_726 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_724.xy, x_724.z);
        u_xlat65 = x_726;
        let x_728 : f32 = u_xlat13.w;
        let x_729 : f32 = u_xlat65;
        let x_731 : f32 = u_xlat45;
        u_xlat45 = ((x_728 * x_729) + x_731);
        let x_734 : vec4<f32> = u_xlat12;
        let x_735 : vec2<f32> = vec2<f32>(x_734.x, x_734.y);
        let x_737 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_735.x, x_735.y, x_737);
        let x_744 : vec3<f32> = txVec8;
        let x_746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_744.xy, x_744.z);
        u_xlat65 = x_746;
        let x_748 : f32 = u_xlat14.x;
        let x_749 : f32 = u_xlat65;
        let x_751 : f32 = u_xlat45;
        u_xlat45 = ((x_748 * x_749) + x_751);
        let x_754 : vec4<f32> = u_xlat12;
        let x_755 : vec2<f32> = vec2<f32>(x_754.z, x_754.w);
        let x_757 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_755.x, x_755.y, x_757);
        let x_764 : vec3<f32> = txVec9;
        let x_766 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_764.xy, x_764.z);
        u_xlat65 = x_766;
        let x_768 : f32 = u_xlat14.y;
        let x_769 : f32 = u_xlat65;
        let x_771 : f32 = u_xlat45;
        u_xlat45 = ((x_768 * x_769) + x_771);
        let x_774 : vec4<f32> = u_xlat9;
        let x_775 : vec2<f32> = vec2<f32>(x_774.z, x_774.w);
        let x_777 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_775.x, x_775.y, x_777);
        let x_784 : vec3<f32> = txVec10;
        let x_786 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_784.xy, x_784.z);
        u_xlat65 = x_786;
        let x_788 : f32 = u_xlat14.z;
        let x_789 : f32 = u_xlat65;
        let x_791 : f32 = u_xlat45;
        u_xlat45 = ((x_788 * x_789) + x_791);
        let x_794 : vec4<f32> = u_xlat8;
        let x_795 : vec2<f32> = vec2<f32>(x_794.x, x_794.y);
        let x_797 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_795.x, x_795.y, x_797);
        let x_804 : vec3<f32> = txVec11;
        let x_806 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_804.xy, x_804.z);
        u_xlat65 = x_806;
        let x_808 : f32 = u_xlat14.w;
        let x_809 : f32 = u_xlat65;
        let x_811 : f32 = u_xlat45;
        u_xlat45 = ((x_808 * x_809) + x_811);
        let x_814 : vec4<f32> = u_xlat8;
        let x_815 : vec2<f32> = vec2<f32>(x_814.z, x_814.w);
        let x_817 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_815.x, x_815.y, x_817);
        let x_824 : vec3<f32> = txVec12;
        let x_826 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_824.xy, x_824.z);
        u_xlat65 = x_826;
        let x_828 : f32 = u_xlat25.x;
        let x_829 : f32 = u_xlat65;
        let x_831 : f32 = u_xlat45;
        u_xlat5.x = ((x_828 * x_829) + x_831);
      } else {
        let x_835 : vec4<f32> = vs_TEXCOORD8;
        let x_838 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_841 : vec2<f32> = ((vec2<f32>(x_835.x, x_835.y) * vec2<f32>(x_838.z, x_838.w)) + vec2<f32>(0.5f, 0.5f));
        let x_842 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_841.x, x_841.y, x_842.z);
        let x_844 : vec3<f32> = u_xlat25;
        let x_846 : vec2<f32> = floor(vec2<f32>(x_844.x, x_844.y));
        let x_847 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_846.x, x_846.y, x_847.z);
        let x_849 : vec4<f32> = vs_TEXCOORD8;
        let x_852 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_855 : vec3<f32> = u_xlat25;
        let x_858 : vec2<f32> = ((vec2<f32>(x_849.x, x_849.y) * vec2<f32>(x_852.z, x_852.w)) + -(vec2<f32>(x_855.x, x_855.y)));
        let x_859 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_858.x, x_858.y, x_859.z, x_859.w);
        let x_861 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_861.x, x_861.x, x_861.y, x_861.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_864 : vec4<f32> = u_xlat7;
        let x_866 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_864.x, x_864.x, x_864.z, x_864.z) * vec4<f32>(x_866.x, x_866.x, x_866.z, x_866.z));
        let x_869 : vec4<f32> = u_xlat8;
        let x_873 : vec2<f32> = (vec2<f32>(x_869.y, x_869.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_874 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_874.x, x_873.x, x_874.z, x_873.y);
        let x_876 : vec4<f32> = u_xlat8;
        let x_879 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_876.x, x_876.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_879.x, x_879.y)));
        let x_883 : vec4<f32> = u_xlat6;
        let x_886 : vec2<f32> = (-(vec2<f32>(x_883.x, x_883.y)) + vec2<f32>(1.0f, 1.0f));
        let x_887 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_886.x, x_887.y, x_886.y, x_887.w);
        let x_889 : vec4<f32> = u_xlat6;
        let x_891 : vec2<f32> = min(vec2<f32>(x_889.x, x_889.y), vec2<f32>(0.0f, 0.0f));
        let x_892 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_891.x, x_891.y, x_892.z, x_892.w);
        let x_894 : vec4<f32> = u_xlat8;
        let x_897 : vec4<f32> = u_xlat8;
        let x_900 : vec4<f32> = u_xlat7;
        let x_902 : vec2<f32> = ((-(vec2<f32>(x_894.x, x_894.y)) * vec2<f32>(x_897.x, x_897.y)) + vec2<f32>(x_900.x, x_900.z));
        let x_903 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_902.x, x_903.y, x_902.y, x_903.w);
        let x_905 : vec4<f32> = u_xlat6;
        let x_907 : vec2<f32> = max(vec2<f32>(x_905.x, x_905.y), vec2<f32>(0.0f, 0.0f));
        let x_908 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_907.x, x_907.y, x_908.z, x_908.w);
        let x_910 : vec4<f32> = u_xlat8;
        let x_913 : vec4<f32> = u_xlat8;
        let x_916 : vec4<f32> = u_xlat7;
        let x_918 : vec2<f32> = ((-(vec2<f32>(x_910.x, x_910.y)) * vec2<f32>(x_913.x, x_913.y)) + vec2<f32>(x_916.y, x_916.w));
        let x_919 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_919.x, x_918.x, x_919.z, x_918.y);
        let x_921 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_921 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_925 : f32 = u_xlat7.y;
        u_xlat8.z = (x_925 * 0.081632003f);
        let x_929 : vec2<f32> = u_xlat46;
        let x_932 : vec2<f32> = (vec2<f32>(x_929.y, x_929.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_933 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_932.x, x_932.y, x_933.z, x_933.w);
        let x_935 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_935.x, x_935.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_939 : f32 = u_xlat7.w;
        u_xlat10.z = (x_939 * 0.081632003f);
        let x_943 : f32 = u_xlat10.y;
        u_xlat8.x = x_943;
        let x_945 : vec4<f32> = u_xlat6;
        let x_952 : vec2<f32> = ((vec2<f32>(x_945.x, x_945.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_953 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_953.x, x_952.x, x_953.z, x_952.y);
        let x_955 : vec4<f32> = u_xlat6;
        let x_959 : vec2<f32> = ((vec2<f32>(x_955.x, x_955.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_960 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_959.x, x_960.y, x_959.y, x_960.w);
        let x_963 : f32 = u_xlat46.x;
        u_xlat7.y = x_963;
        let x_966 : f32 = u_xlat9.y;
        u_xlat7.w = x_966;
        let x_968 : vec4<f32> = u_xlat7;
        let x_969 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_968 + x_969);
        let x_971 : vec4<f32> = u_xlat6;
        let x_974 : vec2<f32> = ((vec2<f32>(x_971.y, x_971.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_975 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_975.x, x_974.x, x_975.z, x_974.y);
        let x_977 : vec4<f32> = u_xlat6;
        let x_980 : vec2<f32> = ((vec2<f32>(x_977.y, x_977.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_981 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_980.x, x_981.y, x_980.y, x_981.w);
        let x_984 : f32 = u_xlat46.y;
        u_xlat9.y = x_984;
        let x_986 : vec4<f32> = u_xlat9;
        let x_987 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_986 + x_987);
        let x_989 : vec4<f32> = u_xlat7;
        let x_990 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_989 / x_990);
        let x_992 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_992 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_998 : vec4<f32> = u_xlat9;
        let x_999 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_998 / x_999);
        let x_1001 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1001 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1003 : vec4<f32> = u_xlat7;
        let x_1006 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1003.w, x_1003.x, x_1003.y, x_1003.z) * vec4<f32>(x_1006.x, x_1006.x, x_1006.x, x_1006.x));
        let x_1009 : vec4<f32> = u_xlat9;
        let x_1012 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1009.x, x_1009.w, x_1009.y, x_1009.z) * vec4<f32>(x_1012.y, x_1012.y, x_1012.y, x_1012.y));
        let x_1015 : vec4<f32> = u_xlat7;
        let x_1016 : vec3<f32> = vec3<f32>(x_1015.y, x_1015.z, x_1015.w);
        let x_1017 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1016.x, x_1017.y, x_1016.y, x_1016.z);
        let x_1020 : f32 = u_xlat9.x;
        u_xlat10.y = x_1020;
        let x_1022 : vec3<f32> = u_xlat25;
        let x_1025 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1028 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1022.x, x_1022.y, x_1022.x, x_1022.y) * vec4<f32>(x_1025.x, x_1025.y, x_1025.x, x_1025.y)) + vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1028.y));
        let x_1031 : vec3<f32> = u_xlat25;
        let x_1034 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1037 : vec4<f32> = u_xlat10;
        let x_1039 : vec2<f32> = ((vec2<f32>(x_1031.x, x_1031.y) * vec2<f32>(x_1034.x, x_1034.y)) + vec2<f32>(x_1037.w, x_1037.y));
        let x_1040 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1039.x, x_1039.y, x_1040.z, x_1040.w);
        let x_1043 : f32 = u_xlat10.y;
        u_xlat7.y = x_1043;
        let x_1046 : f32 = u_xlat9.z;
        u_xlat10.y = x_1046;
        let x_1048 : vec3<f32> = u_xlat25;
        let x_1051 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y) * vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y)) + vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1054.y));
        let x_1058 : vec3<f32> = u_xlat25;
        let x_1061 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1064 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1058.x, x_1058.y) * vec2<f32>(x_1061.x, x_1061.y)) + vec2<f32>(x_1064.w, x_1064.y));
        let x_1068 : f32 = u_xlat10.y;
        u_xlat7.z = x_1068;
        let x_1070 : vec3<f32> = u_xlat25;
        let x_1073 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1076 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1070.x, x_1070.y, x_1070.x, x_1070.y) * vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y)) + vec4<f32>(x_1076.x, x_1076.y, x_1076.x, x_1076.z));
        let x_1080 : f32 = u_xlat9.w;
        u_xlat10.y = x_1080;
        let x_1083 : vec3<f32> = u_xlat25;
        let x_1086 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1089 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y) * vec4<f32>(x_1086.x, x_1086.y, x_1086.x, x_1086.y)) + vec4<f32>(x_1089.x, x_1089.y, x_1089.z, x_1089.y));
        let x_1093 : vec3<f32> = u_xlat25;
        let x_1096 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1099 : vec4<f32> = u_xlat10;
        u_xlat27 = ((vec2<f32>(x_1093.x, x_1093.y) * vec2<f32>(x_1096.x, x_1096.y)) + vec2<f32>(x_1099.w, x_1099.y));
        let x_1103 : f32 = u_xlat10.y;
        u_xlat7.w = x_1103;
        let x_1106 : vec3<f32> = u_xlat25;
        let x_1109 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat7;
        u_xlat16 = ((vec2<f32>(x_1106.x, x_1106.y) * vec2<f32>(x_1109.x, x_1109.y)) + vec2<f32>(x_1112.x, x_1112.w));
        let x_1115 : vec4<f32> = u_xlat10;
        let x_1116 : vec3<f32> = vec3<f32>(x_1115.x, x_1115.z, x_1115.w);
        let x_1117 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1116.x, x_1117.y, x_1116.y, x_1116.z);
        let x_1119 : vec3<f32> = u_xlat25;
        let x_1122 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1125 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.y) * vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.y)) + vec4<f32>(x_1125.x, x_1125.y, x_1125.z, x_1125.y));
        let x_1129 : vec3<f32> = u_xlat25;
        let x_1132 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1129.x, x_1129.y) * vec2<f32>(x_1132.x, x_1132.y)) + vec2<f32>(x_1135.w, x_1135.y));
        let x_1139 : f32 = u_xlat7.x;
        u_xlat9.x = x_1139;
        let x_1141 : vec3<f32> = u_xlat25;
        let x_1144 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1147 : vec4<f32> = u_xlat9;
        let x_1149 : vec2<f32> = ((vec2<f32>(x_1141.x, x_1141.y) * vec2<f32>(x_1144.x, x_1144.y)) + vec2<f32>(x_1147.x, x_1147.y));
        let x_1150 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1149.x, x_1149.y, x_1150.z);
        let x_1153 : vec4<f32> = u_xlat6;
        let x_1155 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1153.x, x_1153.x, x_1153.x, x_1153.x) * x_1155);
        let x_1158 : vec4<f32> = u_xlat6;
        let x_1160 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1158.y, x_1158.y, x_1158.y, x_1158.y) * x_1160);
        let x_1163 : vec4<f32> = u_xlat6;
        let x_1165 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1163.z, x_1163.z, x_1163.z, x_1163.z) * x_1165);
        let x_1167 : vec4<f32> = u_xlat6;
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1167.w, x_1167.w, x_1167.w, x_1167.w) * x_1169);
        let x_1172 : vec4<f32> = u_xlat11;
        let x_1173 : vec2<f32> = vec2<f32>(x_1172.x, x_1172.y);
        let x_1175 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1173.x, x_1173.y, x_1175);
        let x_1182 : vec3<f32> = txVec13;
        let x_1184 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1182.xy, x_1182.z);
        u_xlat65 = x_1184;
        let x_1186 : vec4<f32> = u_xlat11;
        let x_1187 : vec2<f32> = vec2<f32>(x_1186.z, x_1186.w);
        let x_1189 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1187.x, x_1187.y, x_1189);
        let x_1196 : vec3<f32> = txVec14;
        let x_1198 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1196.xy, x_1196.z);
        u_xlat7.x = x_1198;
        let x_1201 : f32 = u_xlat7.x;
        let x_1203 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1201 * x_1203);
        let x_1207 : f32 = u_xlat17.x;
        let x_1208 : f32 = u_xlat65;
        let x_1211 : f32 = u_xlat7.x;
        u_xlat65 = ((x_1207 * x_1208) + x_1211);
        let x_1214 : vec4<f32> = u_xlat12;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
        let x_1217 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec15;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1224.xy, x_1224.z);
        u_xlat7.x = x_1226;
        let x_1229 : f32 = u_xlat17.z;
        let x_1231 : f32 = u_xlat7.x;
        let x_1233 : f32 = u_xlat65;
        u_xlat65 = ((x_1229 * x_1231) + x_1233);
        let x_1236 : vec4<f32> = u_xlat14;
        let x_1237 : vec2<f32> = vec2<f32>(x_1236.x, x_1236.y);
        let x_1239 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1237.x, x_1237.y, x_1239);
        let x_1246 : vec3<f32> = txVec16;
        let x_1248 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1246.xy, x_1246.z);
        u_xlat7.x = x_1248;
        let x_1251 : f32 = u_xlat17.w;
        let x_1253 : f32 = u_xlat7.x;
        let x_1255 : f32 = u_xlat65;
        u_xlat65 = ((x_1251 * x_1253) + x_1255);
        let x_1258 : vec4<f32> = u_xlat13;
        let x_1259 : vec2<f32> = vec2<f32>(x_1258.x, x_1258.y);
        let x_1261 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
        let x_1268 : vec3<f32> = txVec17;
        let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1268.xy, x_1268.z);
        u_xlat7.x = x_1270;
        let x_1273 : f32 = u_xlat18.x;
        let x_1275 : f32 = u_xlat7.x;
        let x_1277 : f32 = u_xlat65;
        u_xlat65 = ((x_1273 * x_1275) + x_1277);
        let x_1280 : vec4<f32> = u_xlat13;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.z, x_1280.w);
        let x_1283 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec18;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1290.xy, x_1290.z);
        u_xlat7.x = x_1292;
        let x_1295 : f32 = u_xlat18.y;
        let x_1297 : f32 = u_xlat7.x;
        let x_1299 : f32 = u_xlat65;
        u_xlat65 = ((x_1295 * x_1297) + x_1299);
        let x_1302 : vec2<f32> = u_xlat52;
        let x_1304 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1302.x, x_1302.y, x_1304);
        let x_1311 : vec3<f32> = txVec19;
        let x_1313 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1311.xy, x_1311.z);
        u_xlat7.x = x_1313;
        let x_1316 : f32 = u_xlat18.z;
        let x_1318 : f32 = u_xlat7.x;
        let x_1320 : f32 = u_xlat65;
        u_xlat65 = ((x_1316 * x_1318) + x_1320);
        let x_1323 : vec4<f32> = u_xlat14;
        let x_1324 : vec2<f32> = vec2<f32>(x_1323.z, x_1323.w);
        let x_1326 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1324.x, x_1324.y, x_1326);
        let x_1333 : vec3<f32> = txVec20;
        let x_1335 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1333.xy, x_1333.z);
        u_xlat7.x = x_1335;
        let x_1338 : f32 = u_xlat18.w;
        let x_1340 : f32 = u_xlat7.x;
        let x_1342 : f32 = u_xlat65;
        u_xlat65 = ((x_1338 * x_1340) + x_1342);
        let x_1345 : vec4<f32> = u_xlat15;
        let x_1346 : vec2<f32> = vec2<f32>(x_1345.x, x_1345.y);
        let x_1348 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec21;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1355.xy, x_1355.z);
        u_xlat7.x = x_1357;
        let x_1360 : f32 = u_xlat19.x;
        let x_1362 : f32 = u_xlat7.x;
        let x_1364 : f32 = u_xlat65;
        u_xlat65 = ((x_1360 * x_1362) + x_1364);
        let x_1367 : vec4<f32> = u_xlat15;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.z, x_1367.w);
        let x_1370 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1377 : vec3<f32> = txVec22;
        let x_1379 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1377.xy, x_1377.z);
        u_xlat7.x = x_1379;
        let x_1382 : f32 = u_xlat19.y;
        let x_1384 : f32 = u_xlat7.x;
        let x_1386 : f32 = u_xlat65;
        u_xlat65 = ((x_1382 * x_1384) + x_1386);
        let x_1389 : vec2<f32> = u_xlat27;
        let x_1391 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1389.x, x_1389.y, x_1391);
        let x_1398 : vec3<f32> = txVec23;
        let x_1400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1398.xy, x_1398.z);
        u_xlat7.x = x_1400;
        let x_1403 : f32 = u_xlat19.z;
        let x_1405 : f32 = u_xlat7.x;
        let x_1407 : f32 = u_xlat65;
        u_xlat65 = ((x_1403 * x_1405) + x_1407);
        let x_1410 : vec2<f32> = u_xlat16;
        let x_1412 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec24;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1419.xy, x_1419.z);
        u_xlat7.x = x_1421;
        let x_1424 : f32 = u_xlat19.w;
        let x_1426 : f32 = u_xlat7.x;
        let x_1428 : f32 = u_xlat65;
        u_xlat65 = ((x_1424 * x_1426) + x_1428);
        let x_1431 : vec4<f32> = u_xlat10;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec25;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1441.xy, x_1441.z);
        u_xlat7.x = x_1443;
        let x_1446 : f32 = u_xlat6.x;
        let x_1448 : f32 = u_xlat7.x;
        let x_1450 : f32 = u_xlat65;
        u_xlat65 = ((x_1446 * x_1448) + x_1450);
        let x_1453 : vec4<f32> = u_xlat10;
        let x_1454 : vec2<f32> = vec2<f32>(x_1453.z, x_1453.w);
        let x_1456 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1454.x, x_1454.y, x_1456);
        let x_1463 : vec3<f32> = txVec26;
        let x_1465 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1463.xy, x_1463.z);
        u_xlat6.x = x_1465;
        let x_1468 : f32 = u_xlat6.y;
        let x_1470 : f32 = u_xlat6.x;
        let x_1472 : f32 = u_xlat65;
        u_xlat65 = ((x_1468 * x_1470) + x_1472);
        let x_1475 : vec2<f32> = u_xlat49;
        let x_1477 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1475.x, x_1475.y, x_1477);
        let x_1484 : vec3<f32> = txVec27;
        let x_1486 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1484.xy, x_1484.z);
        u_xlat6.x = x_1486;
        let x_1489 : f32 = u_xlat6.z;
        let x_1491 : f32 = u_xlat6.x;
        let x_1493 : f32 = u_xlat65;
        u_xlat65 = ((x_1489 * x_1491) + x_1493);
        let x_1496 : vec3<f32> = u_xlat25;
        let x_1497 : vec2<f32> = vec2<f32>(x_1496.x, x_1496.y);
        let x_1499 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1497.x, x_1497.y, x_1499);
        let x_1506 : vec3<f32> = txVec28;
        let x_1508 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1506.xy, x_1506.z);
        u_xlat25.x = x_1508;
        let x_1511 : f32 = u_xlat6.w;
        let x_1513 : f32 = u_xlat25.x;
        let x_1515 : f32 = u_xlat65;
        u_xlat5.x = ((x_1511 * x_1513) + x_1515);
      }
    }
  } else {
    let x_1520 : vec4<f32> = vs_TEXCOORD8;
    let x_1521 : vec2<f32> = vec2<f32>(x_1520.x, x_1520.y);
    let x_1523 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1521.x, x_1521.y, x_1523);
    let x_1530 : vec3<f32> = txVec29;
    let x_1532 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1530.xy, x_1530.z);
    u_xlat5.x = x_1532;
  }
  let x_1535 : f32 = x_267.x_MainLightShadowParams.x;
  u_xlat25.x = (-(x_1535) + 1.0f);
  let x_1540 : f32 = u_xlat5.x;
  let x_1542 : f32 = x_267.x_MainLightShadowParams.x;
  let x_1545 : f32 = u_xlat25.x;
  u_xlat5.x = ((x_1540 * x_1542) + x_1545);
  let x_1549 : f32 = vs_TEXCOORD8.z;
  u_xlatb25 = (0.0f >= x_1549);
  let x_1553 : f32 = vs_TEXCOORD8.z;
  u_xlatb45 = (x_1553 >= 1.0f);
  let x_1555 : bool = u_xlatb45;
  let x_1556 : bool = u_xlatb25;
  u_xlatb25 = (x_1555 | x_1556);
  let x_1558 : bool = u_xlatb25;
  if (x_1558) {
    x_1559 = 1.0f;
  } else {
    let x_1564 : f32 = u_xlat5.x;
    x_1559 = x_1564;
  }
  let x_1565 : f32 = x_1559;
  u_xlat5.x = x_1565;
  let x_1567 : vec3<f32> = vs_TEXCOORD7;
  let x_1570 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat25 = (x_1567 + -(x_1570));
  let x_1573 : vec3<f32> = u_xlat25;
  let x_1574 : vec3<f32> = u_xlat25;
  u_xlat25.x = dot(x_1573, x_1574);
  let x_1578 : f32 = u_xlat25.x;
  let x_1580 : f32 = x_267.x_MainLightShadowParams.z;
  let x_1583 : f32 = x_267.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_1578 * x_1580) + x_1583);
  let x_1587 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1587, 0.0f, 1.0f);
  let x_1591 : f32 = u_xlat5.x;
  u_xlat45 = (-(x_1591) + 1.0f);
  let x_1595 : f32 = u_xlat25.x;
  let x_1596 : f32 = u_xlat45;
  let x_1599 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1595 * x_1596) + x_1599);
  let x_1602 : f32 = u_xlat43;
  let x_1605 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat25 = (vec3<f32>(x_1602, x_1602, x_1602) * vec3<f32>(x_1605.x, x_1605.y, x_1605.z));
  let x_1609 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1609;
  let x_1613 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1613;
  let x_1617 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1617;
  let x_1620 : vec4<f32> = u_xlat6;
  let x_1623 : vec3<f32> = u_xlat21;
  u_xlat66 = dot(-(vec3<f32>(x_1620.x, x_1620.y, x_1620.z)), x_1623);
  let x_1625 : f32 = u_xlat66;
  let x_1626 : f32 = u_xlat66;
  u_xlat66 = (x_1625 + x_1626);
  let x_1628 : vec3<f32> = u_xlat21;
  let x_1629 : f32 = u_xlat66;
  let x_1633 : vec4<f32> = u_xlat6;
  let x_1636 : vec3<f32> = ((x_1628 * -(vec3<f32>(x_1629, x_1629, x_1629))) + -(vec3<f32>(x_1633.x, x_1633.y, x_1633.z)));
  let x_1637 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1636.x, x_1636.y, x_1636.z, x_1637.w);
  let x_1639 : vec3<f32> = u_xlat21;
  let x_1640 : vec4<f32> = u_xlat6;
  u_xlat66 = dot(x_1639, vec3<f32>(x_1640.x, x_1640.y, x_1640.z));
  let x_1643 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1643, 0.0f, 1.0f);
  let x_1645 : f32 = u_xlat66;
  u_xlat66 = (-(x_1645) + 1.0f);
  let x_1648 : f32 = u_xlat66;
  let x_1649 : f32 = u_xlat66;
  u_xlat66 = (x_1648 * x_1649);
  let x_1651 : f32 = u_xlat66;
  let x_1652 : f32 = u_xlat66;
  u_xlat66 = (x_1651 * x_1652);
  let x_1655 : f32 = u_xlat1;
  u_xlat67 = ((-(x_1655) * 0.699999988f) + 1.700000048f);
  let x_1661 : f32 = u_xlat1;
  let x_1662 : f32 = u_xlat67;
  u_xlat1 = (x_1661 * x_1662);
  let x_1664 : f32 = u_xlat1;
  u_xlat1 = (x_1664 * 6.0f);
  let x_1675 : vec4<f32> = u_xlat7;
  let x_1677 : f32 = u_xlat1;
  let x_1678 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1675.x, x_1675.y, x_1675.z), x_1677);
  u_xlat7 = x_1678;
  let x_1680 : f32 = u_xlat7.w;
  u_xlat1 = (x_1680 + -1.0f);
  let x_1687 : f32 = x_1685.unity_SpecCube0_HDR.w;
  let x_1688 : f32 = u_xlat1;
  u_xlat1 = ((x_1687 * x_1688) + 1.0f);
  let x_1691 : f32 = u_xlat1;
  u_xlat1 = max(x_1691, 0.0f);
  let x_1693 : f32 = u_xlat1;
  u_xlat1 = log2(x_1693);
  let x_1695 : f32 = u_xlat1;
  let x_1697 : f32 = x_1685.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1695 * x_1697);
  let x_1699 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1699);
  let x_1701 : f32 = u_xlat1;
  let x_1703 : f32 = x_1685.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1701 * x_1703);
  let x_1705 : vec4<f32> = u_xlat7;
  let x_1707 : f32 = u_xlat1;
  let x_1709 : vec3<f32> = (vec3<f32>(x_1705.x, x_1705.y, x_1705.z) * vec3<f32>(x_1707, x_1707, x_1707));
  let x_1710 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
  let x_1712 : f32 = u_xlat23;
  let x_1714 : f32 = u_xlat23;
  let x_1718 : vec2<f32> = ((vec2<f32>(x_1712, x_1712) * vec2<f32>(x_1714, x_1714)) + vec2<f32>(-1.0f, 1.0f));
  let x_1719 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1718.x, x_1718.y, x_1719.z, x_1719.w);
  let x_1722 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1722);
  let x_1725 : vec4<f32> = u_xlat0;
  let x_1728 : f32 = u_xlat60;
  u_xlat28 = (-(vec3<f32>(x_1725.x, x_1725.y, x_1725.z)) + vec3<f32>(x_1728, x_1728, x_1728));
  let x_1731 : f32 = u_xlat66;
  let x_1733 : vec3<f32> = u_xlat28;
  let x_1735 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1731, x_1731, x_1731) * x_1733) + vec3<f32>(x_1735.x, x_1735.y, x_1735.z));
  let x_1738 : f32 = u_xlat1;
  let x_1740 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1738, x_1738, x_1738) * x_1740);
  let x_1742 : vec4<f32> = u_xlat7;
  let x_1744 : vec3<f32> = u_xlat28;
  let x_1745 : vec3<f32> = (vec3<f32>(x_1742.x, x_1742.y, x_1742.z) * x_1744);
  let x_1746 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
  let x_1748 : vec3<f32> = u_xlat22;
  let x_1749 : vec3<f32> = u_xlat4;
  let x_1751 : vec4<f32> = u_xlat7;
  u_xlat22 = ((x_1748 * x_1749) + vec3<f32>(x_1751.x, x_1751.y, x_1751.z));
  let x_1755 : f32 = u_xlat5.x;
  let x_1758 : f32 = x_1685.unity_LightData.z;
  u_xlat60 = (x_1755 * x_1758);
  let x_1760 : vec3<f32> = u_xlat21;
  let x_1762 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_1760, vec3<f32>(x_1762.x, x_1762.y, x_1762.z));
  let x_1765 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1765, 0.0f, 1.0f);
  let x_1767 : f32 = u_xlat60;
  let x_1768 : f32 = u_xlat1;
  u_xlat60 = (x_1767 * x_1768);
  let x_1770 : f32 = u_xlat60;
  let x_1772 : vec3<f32> = u_xlat25;
  let x_1773 : vec3<f32> = (vec3<f32>(x_1770, x_1770, x_1770) * x_1772);
  let x_1774 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1773.x, x_1773.y, x_1773.z, x_1774.w);
  let x_1776 : vec4<f32> = u_xlat6;
  let x_1779 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1781 : vec3<f32> = (vec3<f32>(x_1776.x, x_1776.y, x_1776.z) + vec3<f32>(x_1779.x, x_1779.y, x_1779.z));
  let x_1782 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1781.x, x_1781.y, x_1781.z, x_1782.w);
  let x_1784 : vec4<f32> = u_xlat7;
  let x_1786 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1784.x, x_1784.y, x_1784.z), vec3<f32>(x_1786.x, x_1786.y, x_1786.z));
  let x_1789 : f32 = u_xlat60;
  u_xlat60 = max(x_1789, 1.17549435e-37f);
  let x_1792 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1792);
  let x_1794 : f32 = u_xlat60;
  let x_1796 : vec4<f32> = u_xlat7;
  let x_1798 : vec3<f32> = (vec3<f32>(x_1794, x_1794, x_1794) * vec3<f32>(x_1796.x, x_1796.y, x_1796.z));
  let x_1799 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1798.x, x_1798.y, x_1798.z, x_1799.w);
  let x_1801 : vec3<f32> = u_xlat21;
  let x_1802 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_1801, vec3<f32>(x_1802.x, x_1802.y, x_1802.z));
  let x_1805 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1805, 0.0f, 1.0f);
  let x_1808 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1810 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1808.x, x_1808.y, x_1808.z), vec3<f32>(x_1810.x, x_1810.y, x_1810.z));
  let x_1813 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1813, 0.0f, 1.0f);
  let x_1815 : f32 = u_xlat60;
  let x_1816 : f32 = u_xlat60;
  u_xlat60 = (x_1815 * x_1816);
  let x_1818 : f32 = u_xlat60;
  let x_1820 : f32 = u_xlat8.x;
  u_xlat60 = ((x_1818 * x_1820) + 1.000010014f);
  let x_1824 : f32 = u_xlat1;
  let x_1825 : f32 = u_xlat1;
  u_xlat1 = (x_1824 * x_1825);
  let x_1827 : f32 = u_xlat60;
  let x_1828 : f32 = u_xlat60;
  u_xlat60 = (x_1827 * x_1828);
  let x_1830 : f32 = u_xlat1;
  u_xlat1 = max(x_1830, 0.100000001f);
  let x_1833 : f32 = u_xlat60;
  let x_1834 : f32 = u_xlat1;
  u_xlat60 = (x_1833 * x_1834);
  let x_1836 : f32 = u_xlat63;
  let x_1837 : f32 = u_xlat60;
  u_xlat60 = (x_1836 * x_1837);
  let x_1839 : f32 = u_xlat64;
  let x_1840 : f32 = u_xlat60;
  u_xlat60 = (x_1839 / x_1840);
  let x_1842 : vec4<f32> = u_xlat0;
  let x_1844 : f32 = u_xlat60;
  let x_1847 : vec3<f32> = u_xlat4;
  let x_1848 : vec3<f32> = ((vec3<f32>(x_1842.x, x_1842.y, x_1842.z) * vec3<f32>(x_1844, x_1844, x_1844)) + x_1847);
  let x_1849 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1848.x, x_1848.y, x_1848.z, x_1849.w);
  let x_1851 : vec4<f32> = u_xlat5;
  let x_1853 : vec4<f32> = u_xlat7;
  let x_1855 : vec3<f32> = (vec3<f32>(x_1851.x, x_1851.y, x_1851.z) * vec3<f32>(x_1853.x, x_1853.y, x_1853.z));
  let x_1856 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1855.x, x_1855.y, x_1855.z, x_1856.w);
  let x_1859 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1861 : f32 = x_1685.unity_LightData.y;
  u_xlat60 = min(x_1859, x_1861);
  let x_1865 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_1865));
  u_xlat7.x = 0.0f;
  u_xlat7.y = 0.0f;
  u_xlat7.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1877 : u32 = u_xlatu_loop_1;
    let x_1878 : u32 = u_xlatu60;
    if ((x_1877 < x_1878)) {
    } else {
      break;
    }
    let x_1881 : u32 = u_xlatu_loop_1;
    u_xlatu23 = (x_1881 >> 2u);
    let x_1885 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_1885 & 3u));
    let x_1888 : u32 = u_xlatu23;
    let x_1891 : vec4<f32> = x_1685.unity_LightIndices[bitcast<i32>(x_1888)];
    let x_1901 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1906 : vec4<u32> = indexable[x_1901];
    u_xlat23 = dot(x_1891, bitcast<vec4<f32>>(x_1906));
    let x_1910 : f32 = u_xlat23;
    u_xlati23 = i32(x_1910);
    let x_1912 : vec3<f32> = vs_TEXCOORD7;
    let x_1924 : i32 = u_xlati23;
    let x_1926 : vec4<f32> = x_1923.x_AdditionalLightsPosition[x_1924];
    let x_1929 : i32 = u_xlati23;
    let x_1931 : vec4<f32> = x_1923.x_AdditionalLightsPosition[x_1929];
    u_xlat28 = ((-(x_1912) * vec3<f32>(x_1926.w, x_1926.w, x_1926.w)) + vec3<f32>(x_1931.x, x_1931.y, x_1931.z));
    let x_1934 : vec3<f32> = u_xlat28;
    let x_1935 : vec3<f32> = u_xlat28;
    u_xlat65 = dot(x_1934, x_1935);
    let x_1937 : f32 = u_xlat65;
    u_xlat65 = max(x_1937, 6.10351562e-05f);
    let x_1940 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_1940);
    let x_1942 : f32 = u_xlat66;
    let x_1944 : vec3<f32> = u_xlat28;
    let x_1945 : vec3<f32> = (vec3<f32>(x_1942, x_1942, x_1942) * x_1944);
    let x_1946 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_1945.x, x_1945.y, x_1945.z, x_1946.w);
    let x_1948 : f32 = u_xlat65;
    u_xlat67 = (1.0f / x_1948);
    let x_1950 : f32 = u_xlat65;
    let x_1951 : i32 = u_xlati23;
    let x_1953 : f32 = x_1923.x_AdditionalLightsAttenuation[x_1951].x;
    u_xlat65 = (x_1950 * x_1953);
    let x_1955 : f32 = u_xlat65;
    let x_1957 : f32 = u_xlat65;
    u_xlat65 = ((-(x_1955) * x_1957) + 1.0f);
    let x_1960 : f32 = u_xlat65;
    u_xlat65 = max(x_1960, 0.0f);
    let x_1962 : f32 = u_xlat65;
    let x_1963 : f32 = u_xlat65;
    u_xlat65 = (x_1962 * x_1963);
    let x_1965 : f32 = u_xlat65;
    let x_1966 : f32 = u_xlat67;
    u_xlat65 = (x_1965 * x_1966);
    let x_1968 : i32 = u_xlati23;
    let x_1970 : vec4<f32> = x_1923.x_AdditionalLightsSpotDir[x_1968];
    let x_1972 : vec4<f32> = u_xlat9;
    u_xlat67 = dot(vec3<f32>(x_1970.x, x_1970.y, x_1970.z), vec3<f32>(x_1972.x, x_1972.y, x_1972.z));
    let x_1975 : f32 = u_xlat67;
    let x_1976 : i32 = u_xlati23;
    let x_1978 : f32 = x_1923.x_AdditionalLightsAttenuation[x_1976].z;
    let x_1980 : i32 = u_xlati23;
    let x_1982 : f32 = x_1923.x_AdditionalLightsAttenuation[x_1980].w;
    u_xlat67 = ((x_1975 * x_1978) + x_1982);
    let x_1984 : f32 = u_xlat67;
    u_xlat67 = clamp(x_1984, 0.0f, 1.0f);
    let x_1986 : f32 = u_xlat67;
    let x_1987 : f32 = u_xlat67;
    u_xlat67 = (x_1986 * x_1987);
    let x_1989 : f32 = u_xlat65;
    let x_1990 : f32 = u_xlat67;
    u_xlat65 = (x_1989 * x_1990);
    let x_1992 : f32 = u_xlat43;
    let x_1994 : i32 = u_xlati23;
    let x_1996 : vec4<f32> = x_1923.x_AdditionalLightsColor[x_1994];
    let x_1998 : vec3<f32> = (vec3<f32>(x_1992, x_1992, x_1992) * vec3<f32>(x_1996.x, x_1996.y, x_1996.z));
    let x_1999 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_1998.x, x_1998.y, x_1998.z, x_1999.w);
    let x_2001 : vec3<f32> = u_xlat21;
    let x_2002 : vec4<f32> = u_xlat9;
    u_xlat23 = dot(x_2001, vec3<f32>(x_2002.x, x_2002.y, x_2002.z));
    let x_2005 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2005, 0.0f, 1.0f);
    let x_2007 : f32 = u_xlat23;
    let x_2008 : f32 = u_xlat65;
    u_xlat23 = (x_2007 * x_2008);
    let x_2010 : f32 = u_xlat23;
    let x_2012 : vec4<f32> = u_xlat10;
    let x_2014 : vec3<f32> = (vec3<f32>(x_2010, x_2010, x_2010) * vec3<f32>(x_2012.x, x_2012.y, x_2012.z));
    let x_2015 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2014.x, x_2014.y, x_2014.z, x_2015.w);
    let x_2017 : vec3<f32> = u_xlat28;
    let x_2018 : f32 = u_xlat66;
    let x_2021 : vec4<f32> = u_xlat6;
    u_xlat28 = ((x_2017 * vec3<f32>(x_2018, x_2018, x_2018)) + vec3<f32>(x_2021.x, x_2021.y, x_2021.z));
    let x_2024 : vec3<f32> = u_xlat28;
    let x_2025 : vec3<f32> = u_xlat28;
    u_xlat23 = dot(x_2024, x_2025);
    let x_2027 : f32 = u_xlat23;
    u_xlat23 = max(x_2027, 1.17549435e-37f);
    let x_2029 : f32 = u_xlat23;
    u_xlat23 = inverseSqrt(x_2029);
    let x_2031 : f32 = u_xlat23;
    let x_2033 : vec3<f32> = u_xlat28;
    u_xlat28 = (vec3<f32>(x_2031, x_2031, x_2031) * x_2033);
    let x_2035 : vec3<f32> = u_xlat21;
    let x_2036 : vec3<f32> = u_xlat28;
    u_xlat23 = dot(x_2035, x_2036);
    let x_2038 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2038, 0.0f, 1.0f);
    let x_2040 : vec4<f32> = u_xlat9;
    let x_2042 : vec3<f32> = u_xlat28;
    u_xlat65 = dot(vec3<f32>(x_2040.x, x_2040.y, x_2040.z), x_2042);
    let x_2044 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2044, 0.0f, 1.0f);
    let x_2046 : f32 = u_xlat23;
    let x_2047 : f32 = u_xlat23;
    u_xlat23 = (x_2046 * x_2047);
    let x_2049 : f32 = u_xlat23;
    let x_2051 : f32 = u_xlat8.x;
    u_xlat23 = ((x_2049 * x_2051) + 1.000010014f);
    let x_2054 : f32 = u_xlat65;
    let x_2055 : f32 = u_xlat65;
    u_xlat65 = (x_2054 * x_2055);
    let x_2057 : f32 = u_xlat23;
    let x_2058 : f32 = u_xlat23;
    u_xlat23 = (x_2057 * x_2058);
    let x_2060 : f32 = u_xlat65;
    u_xlat65 = max(x_2060, 0.100000001f);
    let x_2062 : f32 = u_xlat23;
    let x_2063 : f32 = u_xlat65;
    u_xlat23 = (x_2062 * x_2063);
    let x_2065 : f32 = u_xlat63;
    let x_2066 : f32 = u_xlat23;
    u_xlat23 = (x_2065 * x_2066);
    let x_2068 : f32 = u_xlat64;
    let x_2069 : f32 = u_xlat23;
    u_xlat23 = (x_2068 / x_2069);
    let x_2071 : vec4<f32> = u_xlat0;
    let x_2073 : f32 = u_xlat23;
    let x_2076 : vec3<f32> = u_xlat4;
    u_xlat28 = ((vec3<f32>(x_2071.x, x_2071.y, x_2071.z) * vec3<f32>(x_2073, x_2073, x_2073)) + x_2076);
    let x_2078 : vec3<f32> = u_xlat28;
    let x_2079 : vec4<f32> = u_xlat10;
    let x_2082 : vec4<f32> = u_xlat7;
    let x_2084 : vec3<f32> = ((x_2078 * vec3<f32>(x_2079.x, x_2079.y, x_2079.z)) + vec3<f32>(x_2082.x, x_2082.y, x_2082.z));
    let x_2085 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2084.x, x_2084.y, x_2084.z, x_2085.w);

    continuing {
      let x_2087 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2087 + bitcast<u32>(1i));
    }
  }
  let x_2089 : vec3<f32> = u_xlat22;
  let x_2090 : vec3<f32> = u_xlat3;
  let x_2093 : vec4<f32> = u_xlat5;
  let x_2095 : vec3<f32> = ((x_2089 * vec3<f32>(x_2090.x, x_2090.x, x_2090.x)) + vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
  let x_2096 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2095.x, x_2095.y, x_2095.z, x_2096.w);
  let x_2098 : vec4<f32> = u_xlat7;
  let x_2100 : vec4<f32> = u_xlat0;
  let x_2102 : vec3<f32> = (vec3<f32>(x_2098.x, x_2098.y, x_2098.z) + vec3<f32>(x_2100.x, x_2100.y, x_2100.z));
  let x_2103 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2102.x, x_2102.y, x_2102.z, x_2103.w);
  let x_2105 : f32 = u_xlat2;
  let x_2106 : f32 = u_xlat2;
  u_xlat60 = (x_2105 * -(x_2106));
  let x_2109 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2109);
  let x_2111 : vec4<f32> = u_xlat0;
  let x_2115 : vec4<f32> = x_44.unity_FogColor;
  let x_2118 : vec3<f32> = (vec3<f32>(x_2111.x, x_2111.y, x_2111.z) + -(vec3<f32>(x_2115.x, x_2115.y, x_2115.z)));
  let x_2119 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2118.x, x_2118.y, x_2118.z, x_2119.w);
  let x_2123 : f32 = u_xlat60;
  let x_2125 : vec4<f32> = u_xlat0;
  let x_2129 : vec4<f32> = x_44.unity_FogColor;
  let x_2131 : vec3<f32> = ((vec3<f32>(x_2123, x_2123, x_2123) * vec3<f32>(x_2125.x, x_2125.y, x_2125.z)) + vec3<f32>(x_2129.x, x_2129.y, x_2129.z));
  let x_2132 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2131.x, x_2131.y, x_2131.z, x_2132.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(5) vs_TEXCOORD8_param : vec4<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

