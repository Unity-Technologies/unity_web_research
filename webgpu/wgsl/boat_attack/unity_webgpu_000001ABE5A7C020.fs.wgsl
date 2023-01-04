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

@group(0) @binding(7) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

@group(0) @binding(5) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(6) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_262 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(9) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1710 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb19 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
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
  var x_1553 : f32;
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
  var x_1860 : f32;
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
  let x_63 : vec4<f32> = hlslcc_FragCoord;
  let x_67 : f32 = x_43.x_DitheringTextureInvSize;
  let x_69 : vec2<f32> = (vec2<f32>(x_63.x, x_63.y) * vec2<f32>(x_67, x_67));
  let x_70 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_69.x, x_69.y, x_70.z);
  let x_77 : vec3<f32> = u_xlat1;
  let x_80 : f32 = x_43.x_GlobalMipBias.x;
  let x_81 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_77.x, x_77.y), x_80);
  u_xlat1.x = x_81.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb19 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb19;
  if (x_99) {
    let x_104 : f32 = u_xlat1.x;
    x_100 = abs(x_104);
  } else {
    let x_108 : f32 = u_xlat1.x;
    x_100 = -(abs(x_108));
  }
  let x_111 : f32 = x_100;
  u_xlat1.x = x_111;
  let x_114 : f32 = u_xlat1.x;
  let x_117 : f32 = x_93.unity_LODFade.x;
  u_xlat1.x = (-(x_114) + x_117);
  let x_122 : f32 = u_xlat1.x;
  u_xlatb1 = (x_122 < 0.0f);
  let x_124 : bool = u_xlatb1;
  if (((select(0i, 1i, x_124) * -1i) != 0i)) {
    discard;
  }
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_136 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1.x = dot(x_135, x_136);
  let x_140 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_140);
  let x_143 : vec3<f32> = u_xlat1;
  let x_145 : vec3<f32> = vs_TEXCOORD2;
  u_xlat1 = (vec3<f32>(x_143.x, x_143.x, x_143.x) * x_145);
  let x_154 : vec2<f32> = vs_TEXCOORD7;
  let x_156 : f32 = x_43.x_GlobalMipBias.x;
  let x_157 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_154, x_156);
  u_xlat2 = x_157;
  let x_163 : vec2<f32> = vs_TEXCOORD7;
  let x_165 : f32 = x_43.x_GlobalMipBias.x;
  let x_166 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_163, x_165);
  let x_167 : vec3<f32> = vec3<f32>(x_166.x, x_166.y, x_166.z);
  let x_168 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_170 : vec4<f32> = u_xlat2;
  let x_174 : vec3<f32> = (vec3<f32>(x_170.x, x_170.y, x_170.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_175 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_178 : vec3<f32> = u_xlat1;
  let x_179 : vec4<f32> = u_xlat2;
  u_xlat55 = dot(x_178, vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : f32 = u_xlat55;
  u_xlat55 = (x_182 + 0.5f);
  let x_185 : f32 = u_xlat55;
  let x_187 : vec4<f32> = u_xlat3;
  let x_189 : vec3<f32> = (vec3<f32>(x_185, x_185, x_185) * vec3<f32>(x_187.x, x_187.y, x_187.z));
  let x_190 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  let x_193 : f32 = u_xlat2.w;
  u_xlat55 = max(x_193, 0.0001f);
  let x_196 : vec4<f32> = u_xlat2;
  let x_198 : f32 = u_xlat55;
  let x_200 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) / vec3<f32>(x_198, x_198, x_198));
  let x_201 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
  let x_205 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_206 : vec2<f32> = vec2<f32>(x_205.x, x_205.y);
  let x_210 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_206.x, x_206.y));
  let x_211 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_210.x, x_210.y, x_211.z, x_211.w);
  let x_213 : vec4<f32> = u_xlat3;
  let x_215 : vec4<f32> = hlslcc_FragCoord;
  let x_217 : vec2<f32> = (vec2<f32>(x_213.x, x_213.y) * vec2<f32>(x_215.x, x_215.y));
  let x_218 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_218.w);
  let x_222 : f32 = u_xlat3.y;
  let x_225 : f32 = x_43.x_ScaleBiasRt.x;
  let x_228 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat55 = ((x_222 * x_225) + x_228);
  let x_230 : f32 = u_xlat55;
  u_xlat3.z = (-(x_230) + 1.0f);
  let x_239 : vec4<f32> = u_xlat3;
  let x_242 : f32 = x_43.x_GlobalMipBias.x;
  let x_243 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_239.x, x_239.z), x_242);
  u_xlat55 = x_243.x;
  let x_246 : f32 = u_xlat55;
  u_xlat56 = (x_246 + -1.0f);
  let x_251 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_252 : f32 = u_xlat56;
  u_xlat56 = ((x_251 * x_252) + 1.0f);
  let x_255 : f32 = u_xlat55;
  u_xlat55 = min(x_255, 1.0f);
  let x_264 : f32 = x_262.x_MainLightShadowParams.y;
  u_xlatb3 = (0.0f < x_264);
  let x_266 : bool = u_xlatb3;
  if (x_266) {
    let x_270 : f32 = x_262.x_MainLightShadowParams.y;
    u_xlatb3 = (x_270 == 1.0f);
    let x_272 : bool = u_xlatb3;
    if (x_272) {
      let x_276 : vec4<f32> = vs_TEXCOORD6;
      let x_280 : vec4<f32> = x_262.x_MainLightShadowOffset0;
      u_xlat3 = (vec4<f32>(x_276.x, x_276.y, x_276.x, x_276.y) + x_280);
      let x_283 : vec4<f32> = u_xlat3;
      let x_284 : vec2<f32> = vec2<f32>(x_283.x, x_283.y);
      let x_286 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_284.x, x_284.y, x_286);
      let x_299 : vec3<f32> = txVec0;
      let x_301 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_299.xy, x_299.z);
      u_xlat4.x = x_301;
      let x_304 : vec4<f32> = u_xlat3;
      let x_305 : vec2<f32> = vec2<f32>(x_304.z, x_304.w);
      let x_307 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_305.x, x_305.y, x_307);
      let x_314 : vec3<f32> = txVec1;
      let x_316 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_314.xy, x_314.z);
      u_xlat4.y = x_316;
      let x_318 : vec4<f32> = vs_TEXCOORD6;
      let x_321 : vec4<f32> = x_262.x_MainLightShadowOffset1;
      u_xlat3 = (vec4<f32>(x_318.x, x_318.y, x_318.x, x_318.y) + x_321);
      let x_324 : vec4<f32> = u_xlat3;
      let x_325 : vec2<f32> = vec2<f32>(x_324.x, x_324.y);
      let x_327 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_325.x, x_325.y, x_327);
      let x_334 : vec3<f32> = txVec2;
      let x_336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_334.xy, x_334.z);
      u_xlat4.z = x_336;
      let x_339 : vec4<f32> = u_xlat3;
      let x_340 : vec2<f32> = vec2<f32>(x_339.z, x_339.w);
      let x_342 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_340.x, x_340.y, x_342);
      let x_349 : vec3<f32> = txVec3;
      let x_351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_349.xy, x_349.z);
      u_xlat4.w = x_351;
      let x_353 : vec4<f32> = u_xlat4;
      u_xlat3.x = dot(x_353, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_361 : f32 = x_262.x_MainLightShadowParams.y;
      u_xlatb21 = (x_361 == 2.0f);
      let x_364 : bool = u_xlatb21;
      if (x_364) {
        let x_368 : vec4<f32> = vs_TEXCOORD6;
        let x_372 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_376 : vec2<f32> = ((vec2<f32>(x_368.x, x_368.y) * vec2<f32>(x_372.z, x_372.w)) + vec2<f32>(0.5f, 0.5f));
        let x_377 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_376.x, x_376.y, x_377.z);
        let x_379 : vec3<f32> = u_xlat21;
        let x_381 : vec2<f32> = floor(vec2<f32>(x_379.x, x_379.y));
        let x_382 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_381.x, x_381.y, x_382.z);
        let x_384 : vec4<f32> = vs_TEXCOORD6;
        let x_387 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_390 : vec3<f32> = u_xlat21;
        let x_393 : vec2<f32> = ((vec2<f32>(x_384.x, x_384.y) * vec2<f32>(x_387.z, x_387.w)) + -(vec2<f32>(x_390.x, x_390.y)));
        let x_394 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_393.x, x_393.y, x_394.z, x_394.w);
        let x_397 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_397.x, x_397.x, x_397.y, x_397.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_402 : vec4<f32> = u_xlat5;
        let x_404 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_402.x, x_402.x, x_402.z, x_402.z) * vec4<f32>(x_404.x, x_404.x, x_404.z, x_404.z));
        let x_409 : vec4<f32> = u_xlat6;
        u_xlat40 = (vec2<f32>(x_409.y, x_409.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_414 : vec4<f32> = u_xlat6;
        let x_417 : vec4<f32> = u_xlat4;
        let x_420 : vec2<f32> = ((vec2<f32>(x_414.x, x_414.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_417.x, x_417.y)));
        let x_421 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_420.x, x_421.y, x_420.y, x_421.w);
        let x_423 : vec4<f32> = u_xlat4;
        let x_426 : vec2<f32> = (-(vec2<f32>(x_423.x, x_423.y)) + vec2<f32>(1.0f, 1.0f));
        let x_427 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_426.x, x_426.y, x_427.z, x_427.w);
        let x_430 : vec4<f32> = u_xlat4;
        u_xlat42 = min(vec2<f32>(x_430.x, x_430.y), vec2<f32>(0.0f, 0.0f));
        let x_434 : vec2<f32> = u_xlat42;
        let x_436 : vec2<f32> = u_xlat42;
        let x_438 : vec4<f32> = u_xlat6;
        u_xlat42 = ((-(x_434) * x_436) + vec2<f32>(x_438.x, x_438.y));
        let x_441 : vec4<f32> = u_xlat4;
        let x_443 : vec2<f32> = max(vec2<f32>(x_441.x, x_441.y), vec2<f32>(0.0f, 0.0f));
        let x_444 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_443.x, x_443.y, x_444.z, x_444.w);
        let x_446 : vec4<f32> = u_xlat4;
        let x_449 : vec4<f32> = u_xlat4;
        let x_452 : vec4<f32> = u_xlat5;
        let x_454 : vec2<f32> = ((-(vec2<f32>(x_446.x, x_446.y)) * vec2<f32>(x_449.x, x_449.y)) + vec2<f32>(x_452.y, x_452.w));
        let x_455 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_454.x, x_454.y, x_455.z, x_455.w);
        let x_457 : vec2<f32> = u_xlat42;
        u_xlat42 = (x_457 + vec2<f32>(1.0f, 1.0f));
        let x_459 : vec4<f32> = u_xlat4;
        let x_461 : vec2<f32> = (vec2<f32>(x_459.x, x_459.y) + vec2<f32>(1.0f, 1.0f));
        let x_462 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_461.x, x_461.y, x_462.z, x_462.w);
        let x_465 : vec4<f32> = u_xlat5;
        let x_469 : vec2<f32> = (vec2<f32>(x_465.x, x_465.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_470 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_473 : vec4<f32> = u_xlat6;
        let x_475 : vec2<f32> = (vec2<f32>(x_473.x, x_473.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_476 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
        let x_478 : vec2<f32> = u_xlat42;
        let x_479 : vec2<f32> = (x_478 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_480 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_483 : vec4<f32> = u_xlat4;
        let x_485 : vec2<f32> = (vec2<f32>(x_483.x, x_483.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_486 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_485.x, x_485.y, x_486.z, x_486.w);
        let x_488 : vec4<f32> = u_xlat5;
        let x_490 : vec2<f32> = (vec2<f32>(x_488.y, x_488.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_491 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_490.x, x_490.y, x_491.z, x_491.w);
        let x_494 : f32 = u_xlat6.x;
        u_xlat7.z = x_494;
        let x_497 : f32 = u_xlat4.x;
        u_xlat7.w = x_497;
        let x_500 : f32 = u_xlat9.x;
        u_xlat8.z = x_500;
        let x_503 : f32 = u_xlat40.x;
        u_xlat8.w = x_503;
        let x_505 : vec4<f32> = u_xlat7;
        let x_507 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_505.z, x_505.w, x_505.x, x_505.z) + vec4<f32>(x_507.z, x_507.w, x_507.x, x_507.z));
        let x_511 : f32 = u_xlat7.y;
        u_xlat6.z = x_511;
        let x_514 : f32 = u_xlat4.y;
        u_xlat6.w = x_514;
        let x_517 : f32 = u_xlat8.y;
        u_xlat9.z = x_517;
        let x_520 : f32 = u_xlat40.y;
        u_xlat9.w = x_520;
        let x_522 : vec4<f32> = u_xlat6;
        let x_524 : vec4<f32> = u_xlat9;
        let x_526 : vec3<f32> = (vec3<f32>(x_522.z, x_522.y, x_522.w) + vec3<f32>(x_524.z, x_524.y, x_524.w));
        let x_527 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_526.x, x_526.y, x_526.z, x_527.w);
        let x_529 : vec4<f32> = u_xlat8;
        let x_531 : vec4<f32> = u_xlat5;
        let x_533 : vec3<f32> = (vec3<f32>(x_529.x, x_529.z, x_529.w) / vec3<f32>(x_531.z, x_531.w, x_531.y));
        let x_534 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_533.x, x_533.y, x_533.z, x_534.w);
        let x_536 : vec4<f32> = u_xlat6;
        let x_541 : vec3<f32> = (vec3<f32>(x_536.x, x_536.y, x_536.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_542 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
        let x_544 : vec4<f32> = u_xlat9;
        let x_546 : vec4<f32> = u_xlat4;
        let x_548 : vec3<f32> = (vec3<f32>(x_544.z, x_544.y, x_544.w) / vec3<f32>(x_546.x, x_546.y, x_546.z));
        let x_549 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_548.x, x_548.y, x_548.z, x_549.w);
        let x_551 : vec4<f32> = u_xlat7;
        let x_553 : vec3<f32> = (vec3<f32>(x_551.x, x_551.y, x_551.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_554 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_553.x, x_553.y, x_553.z, x_554.w);
        let x_556 : vec4<f32> = u_xlat6;
        let x_559 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_561 : vec3<f32> = (vec3<f32>(x_556.y, x_556.x, x_556.z) * vec3<f32>(x_559.x, x_559.x, x_559.x));
        let x_562 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_561.x, x_561.y, x_561.z, x_562.w);
        let x_564 : vec4<f32> = u_xlat7;
        let x_567 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_569 : vec3<f32> = (vec3<f32>(x_564.x, x_564.y, x_564.z) * vec3<f32>(x_567.y, x_567.y, x_567.y));
        let x_570 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
        let x_573 : f32 = u_xlat7.x;
        u_xlat6.w = x_573;
        let x_575 : vec3<f32> = u_xlat21;
        let x_578 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_581 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_575.x, x_575.y, x_575.x, x_575.y) * vec4<f32>(x_578.x, x_578.y, x_578.x, x_578.y)) + vec4<f32>(x_581.y, x_581.w, x_581.x, x_581.w));
        let x_584 : vec3<f32> = u_xlat21;
        let x_587 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_590 : vec4<f32> = u_xlat6;
        let x_592 : vec2<f32> = ((vec2<f32>(x_584.x, x_584.y) * vec2<f32>(x_587.x, x_587.y)) + vec2<f32>(x_590.z, x_590.w));
        let x_593 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_592.x, x_592.y, x_593.z, x_593.w);
        let x_596 : f32 = u_xlat6.y;
        u_xlat7.w = x_596;
        let x_598 : vec4<f32> = u_xlat7;
        let x_599 : vec2<f32> = vec2<f32>(x_598.y, x_598.z);
        let x_600 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_600.x, x_599.x, x_600.z, x_599.y);
        let x_603 : vec3<f32> = u_xlat21;
        let x_606 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_609 : vec4<f32> = u_xlat6;
        u_xlat10 = ((vec4<f32>(x_603.x, x_603.y, x_603.x, x_603.y) * vec4<f32>(x_606.x, x_606.y, x_606.x, x_606.y)) + vec4<f32>(x_609.x, x_609.y, x_609.z, x_609.y));
        let x_612 : vec3<f32> = u_xlat21;
        let x_615 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_618 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_612.x, x_612.y, x_612.x, x_612.y) * vec4<f32>(x_615.x, x_615.y, x_615.x, x_615.y)) + vec4<f32>(x_618.w, x_618.y, x_618.w, x_618.z));
        let x_621 : vec3<f32> = u_xlat21;
        let x_624 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_627 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_621.x, x_621.y, x_621.x, x_621.y) * vec4<f32>(x_624.x, x_624.y, x_624.x, x_624.y)) + vec4<f32>(x_627.x, x_627.w, x_627.z, x_627.w));
        let x_631 : vec4<f32> = u_xlat4;
        let x_633 : vec4<f32> = u_xlat5;
        u_xlat11 = (vec4<f32>(x_631.x, x_631.x, x_631.x, x_631.y) * vec4<f32>(x_633.z, x_633.w, x_633.y, x_633.z));
        let x_637 : vec4<f32> = u_xlat4;
        let x_639 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_637.y, x_637.y, x_637.z, x_637.z) * x_639);
        let x_642 : f32 = u_xlat4.z;
        let x_644 : f32 = u_xlat5.y;
        u_xlat21.x = (x_642 * x_644);
        let x_648 : vec4<f32> = u_xlat8;
        let x_649 : vec2<f32> = vec2<f32>(x_648.x, x_648.y);
        let x_651 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_649.x, x_649.y, x_651);
        let x_659 : vec3<f32> = txVec4;
        let x_661 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_659.xy, x_659.z);
        u_xlat39 = x_661;
        let x_663 : vec4<f32> = u_xlat8;
        let x_664 : vec2<f32> = vec2<f32>(x_663.z, x_663.w);
        let x_666 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_664.x, x_664.y, x_666);
        let x_674 : vec3<f32> = txVec5;
        let x_676 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_674.xy, x_674.z);
        u_xlat57 = x_676;
        let x_677 : f32 = u_xlat57;
        let x_679 : f32 = u_xlat11.y;
        u_xlat57 = (x_677 * x_679);
        let x_682 : f32 = u_xlat11.x;
        let x_683 : f32 = u_xlat39;
        let x_685 : f32 = u_xlat57;
        u_xlat39 = ((x_682 * x_683) + x_685);
        let x_688 : vec4<f32> = u_xlat9;
        let x_689 : vec2<f32> = vec2<f32>(x_688.x, x_688.y);
        let x_691 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_689.x, x_689.y, x_691);
        let x_698 : vec3<f32> = txVec6;
        let x_700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_698.xy, x_698.z);
        u_xlat57 = x_700;
        let x_702 : f32 = u_xlat11.z;
        let x_703 : f32 = u_xlat57;
        let x_705 : f32 = u_xlat39;
        u_xlat39 = ((x_702 * x_703) + x_705);
        let x_708 : vec4<f32> = u_xlat7;
        let x_709 : vec2<f32> = vec2<f32>(x_708.x, x_708.y);
        let x_711 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_709.x, x_709.y, x_711);
        let x_718 : vec3<f32> = txVec7;
        let x_720 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_718.xy, x_718.z);
        u_xlat57 = x_720;
        let x_722 : f32 = u_xlat11.w;
        let x_723 : f32 = u_xlat57;
        let x_725 : f32 = u_xlat39;
        u_xlat39 = ((x_722 * x_723) + x_725);
        let x_728 : vec4<f32> = u_xlat10;
        let x_729 : vec2<f32> = vec2<f32>(x_728.x, x_728.y);
        let x_731 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_729.x, x_729.y, x_731);
        let x_738 : vec3<f32> = txVec8;
        let x_740 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_738.xy, x_738.z);
        u_xlat57 = x_740;
        let x_742 : f32 = u_xlat12.x;
        let x_743 : f32 = u_xlat57;
        let x_745 : f32 = u_xlat39;
        u_xlat39 = ((x_742 * x_743) + x_745);
        let x_748 : vec4<f32> = u_xlat10;
        let x_749 : vec2<f32> = vec2<f32>(x_748.z, x_748.w);
        let x_751 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_749.x, x_749.y, x_751);
        let x_758 : vec3<f32> = txVec9;
        let x_760 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_758.xy, x_758.z);
        u_xlat57 = x_760;
        let x_762 : f32 = u_xlat12.y;
        let x_763 : f32 = u_xlat57;
        let x_765 : f32 = u_xlat39;
        u_xlat39 = ((x_762 * x_763) + x_765);
        let x_768 : vec4<f32> = u_xlat7;
        let x_769 : vec2<f32> = vec2<f32>(x_768.z, x_768.w);
        let x_771 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_769.x, x_769.y, x_771);
        let x_778 : vec3<f32> = txVec10;
        let x_780 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_778.xy, x_778.z);
        u_xlat57 = x_780;
        let x_782 : f32 = u_xlat12.z;
        let x_783 : f32 = u_xlat57;
        let x_785 : f32 = u_xlat39;
        u_xlat39 = ((x_782 * x_783) + x_785);
        let x_788 : vec4<f32> = u_xlat6;
        let x_789 : vec2<f32> = vec2<f32>(x_788.x, x_788.y);
        let x_791 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_789.x, x_789.y, x_791);
        let x_798 : vec3<f32> = txVec11;
        let x_800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_798.xy, x_798.z);
        u_xlat57 = x_800;
        let x_802 : f32 = u_xlat12.w;
        let x_803 : f32 = u_xlat57;
        let x_805 : f32 = u_xlat39;
        u_xlat39 = ((x_802 * x_803) + x_805);
        let x_808 : vec4<f32> = u_xlat6;
        let x_809 : vec2<f32> = vec2<f32>(x_808.z, x_808.w);
        let x_811 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_809.x, x_809.y, x_811);
        let x_818 : vec3<f32> = txVec12;
        let x_820 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_818.xy, x_818.z);
        u_xlat57 = x_820;
        let x_822 : f32 = u_xlat21.x;
        let x_823 : f32 = u_xlat57;
        let x_825 : f32 = u_xlat39;
        u_xlat3.x = ((x_822 * x_823) + x_825);
      } else {
        let x_829 : vec4<f32> = vs_TEXCOORD6;
        let x_832 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_835 : vec2<f32> = ((vec2<f32>(x_829.x, x_829.y) * vec2<f32>(x_832.z, x_832.w)) + vec2<f32>(0.5f, 0.5f));
        let x_836 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_835.x, x_835.y, x_836.z);
        let x_838 : vec3<f32> = u_xlat21;
        let x_840 : vec2<f32> = floor(vec2<f32>(x_838.x, x_838.y));
        let x_841 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_840.x, x_840.y, x_841.z);
        let x_843 : vec4<f32> = vs_TEXCOORD6;
        let x_846 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_849 : vec3<f32> = u_xlat21;
        let x_852 : vec2<f32> = ((vec2<f32>(x_843.x, x_843.y) * vec2<f32>(x_846.z, x_846.w)) + -(vec2<f32>(x_849.x, x_849.y)));
        let x_853 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_852.x, x_852.y, x_853.z, x_853.w);
        let x_855 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_855.x, x_855.x, x_855.y, x_855.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_858 : vec4<f32> = u_xlat5;
        let x_860 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_858.x, x_858.x, x_858.z, x_858.z) * vec4<f32>(x_860.x, x_860.x, x_860.z, x_860.z));
        let x_863 : vec4<f32> = u_xlat6;
        let x_867 : vec2<f32> = (vec2<f32>(x_863.y, x_863.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_868 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_868.x, x_867.x, x_868.z, x_867.y);
        let x_870 : vec4<f32> = u_xlat6;
        let x_873 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_870.x, x_870.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_873.x, x_873.y)));
        let x_877 : vec4<f32> = u_xlat4;
        let x_880 : vec2<f32> = (-(vec2<f32>(x_877.x, x_877.y)) + vec2<f32>(1.0f, 1.0f));
        let x_881 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_880.x, x_881.y, x_880.y, x_881.w);
        let x_883 : vec4<f32> = u_xlat4;
        let x_885 : vec2<f32> = min(vec2<f32>(x_883.x, x_883.y), vec2<f32>(0.0f, 0.0f));
        let x_886 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_885.x, x_885.y, x_886.z, x_886.w);
        let x_888 : vec4<f32> = u_xlat6;
        let x_891 : vec4<f32> = u_xlat6;
        let x_894 : vec4<f32> = u_xlat5;
        let x_896 : vec2<f32> = ((-(vec2<f32>(x_888.x, x_888.y)) * vec2<f32>(x_891.x, x_891.y)) + vec2<f32>(x_894.x, x_894.z));
        let x_897 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_896.x, x_897.y, x_896.y, x_897.w);
        let x_899 : vec4<f32> = u_xlat4;
        let x_901 : vec2<f32> = max(vec2<f32>(x_899.x, x_899.y), vec2<f32>(0.0f, 0.0f));
        let x_902 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_901.x, x_901.y, x_902.z, x_902.w);
        let x_904 : vec4<f32> = u_xlat6;
        let x_907 : vec4<f32> = u_xlat6;
        let x_910 : vec4<f32> = u_xlat5;
        let x_912 : vec2<f32> = ((-(vec2<f32>(x_904.x, x_904.y)) * vec2<f32>(x_907.x, x_907.y)) + vec2<f32>(x_910.y, x_910.w));
        let x_913 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_913.x, x_912.x, x_913.z, x_912.y);
        let x_915 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_915 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_919 : f32 = u_xlat5.y;
        u_xlat6.z = (x_919 * 0.081632003f);
        let x_923 : vec2<f32> = u_xlat40;
        let x_926 : vec2<f32> = (vec2<f32>(x_923.y, x_923.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_927 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_926.x, x_926.y, x_927.z, x_927.w);
        let x_929 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_929.x, x_929.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_933 : f32 = u_xlat5.w;
        u_xlat8.z = (x_933 * 0.081632003f);
        let x_937 : f32 = u_xlat8.y;
        u_xlat6.x = x_937;
        let x_939 : vec4<f32> = u_xlat4;
        let x_946 : vec2<f32> = ((vec2<f32>(x_939.x, x_939.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_947 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_947.x, x_946.x, x_947.z, x_946.y);
        let x_949 : vec4<f32> = u_xlat4;
        let x_953 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_954 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_953.x, x_954.y, x_953.y, x_954.w);
        let x_957 : f32 = u_xlat40.x;
        u_xlat5.y = x_957;
        let x_960 : f32 = u_xlat7.y;
        u_xlat5.w = x_960;
        let x_962 : vec4<f32> = u_xlat5;
        let x_963 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_962 + x_963);
        let x_965 : vec4<f32> = u_xlat4;
        let x_968 : vec2<f32> = ((vec2<f32>(x_965.y, x_965.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_969 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_969.x, x_968.x, x_969.z, x_968.y);
        let x_971 : vec4<f32> = u_xlat4;
        let x_974 : vec2<f32> = ((vec2<f32>(x_971.y, x_971.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_975 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_974.x, x_975.y, x_974.y, x_975.w);
        let x_978 : f32 = u_xlat40.y;
        u_xlat7.y = x_978;
        let x_980 : vec4<f32> = u_xlat7;
        let x_981 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_980 + x_981);
        let x_983 : vec4<f32> = u_xlat5;
        let x_984 : vec4<f32> = u_xlat6;
        u_xlat5 = (x_983 / x_984);
        let x_986 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_986 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_992 : vec4<f32> = u_xlat7;
        let x_993 : vec4<f32> = u_xlat4;
        u_xlat7 = (x_992 / x_993);
        let x_995 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_995 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_997 : vec4<f32> = u_xlat5;
        let x_1000 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_997.w, x_997.x, x_997.y, x_997.z) * vec4<f32>(x_1000.x, x_1000.x, x_1000.x, x_1000.x));
        let x_1003 : vec4<f32> = u_xlat7;
        let x_1006 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1003.x, x_1003.w, x_1003.y, x_1003.z) * vec4<f32>(x_1006.y, x_1006.y, x_1006.y, x_1006.y));
        let x_1009 : vec4<f32> = u_xlat5;
        let x_1010 : vec3<f32> = vec3<f32>(x_1009.y, x_1009.z, x_1009.w);
        let x_1011 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1010.x, x_1011.y, x_1010.y, x_1010.z);
        let x_1014 : f32 = u_xlat7.x;
        u_xlat8.y = x_1014;
        let x_1016 : vec3<f32> = u_xlat21;
        let x_1019 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1022 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1016.x, x_1016.y, x_1016.x, x_1016.y) * vec4<f32>(x_1019.x, x_1019.y, x_1019.x, x_1019.y)) + vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1022.y));
        let x_1025 : vec3<f32> = u_xlat21;
        let x_1028 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1031 : vec4<f32> = u_xlat8;
        let x_1033 : vec2<f32> = ((vec2<f32>(x_1025.x, x_1025.y) * vec2<f32>(x_1028.x, x_1028.y)) + vec2<f32>(x_1031.w, x_1031.y));
        let x_1034 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1033.x, x_1033.y, x_1034.z, x_1034.w);
        let x_1037 : f32 = u_xlat8.y;
        u_xlat5.y = x_1037;
        let x_1040 : f32 = u_xlat7.z;
        u_xlat8.y = x_1040;
        let x_1042 : vec3<f32> = u_xlat21;
        let x_1045 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1048 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1042.x, x_1042.y, x_1042.x, x_1042.y) * vec4<f32>(x_1045.x, x_1045.y, x_1045.x, x_1045.y)) + vec4<f32>(x_1048.x, x_1048.y, x_1048.z, x_1048.y));
        let x_1052 : vec3<f32> = u_xlat21;
        let x_1055 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1058 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_1052.x, x_1052.y) * vec2<f32>(x_1055.x, x_1055.y)) + vec2<f32>(x_1058.w, x_1058.y));
        let x_1062 : f32 = u_xlat8.y;
        u_xlat5.z = x_1062;
        let x_1064 : vec3<f32> = u_xlat21;
        let x_1067 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y) * vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y)) + vec4<f32>(x_1070.x, x_1070.y, x_1070.x, x_1070.z));
        let x_1074 : f32 = u_xlat7.w;
        u_xlat8.y = x_1074;
        let x_1077 : vec3<f32> = u_xlat21;
        let x_1080 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1083 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y) * vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y)) + vec4<f32>(x_1083.x, x_1083.y, x_1083.z, x_1083.y));
        let x_1087 : vec3<f32> = u_xlat21;
        let x_1090 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat8;
        u_xlat23 = ((vec2<f32>(x_1087.x, x_1087.y) * vec2<f32>(x_1090.x, x_1090.y)) + vec2<f32>(x_1093.w, x_1093.y));
        let x_1097 : f32 = u_xlat8.y;
        u_xlat5.w = x_1097;
        let x_1100 : vec3<f32> = u_xlat21;
        let x_1103 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1106 : vec4<f32> = u_xlat5;
        u_xlat14 = ((vec2<f32>(x_1100.x, x_1100.y) * vec2<f32>(x_1103.x, x_1103.y)) + vec2<f32>(x_1106.x, x_1106.w));
        let x_1109 : vec4<f32> = u_xlat8;
        let x_1110 : vec3<f32> = vec3<f32>(x_1109.x, x_1109.z, x_1109.w);
        let x_1111 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1110.x, x_1111.y, x_1110.y, x_1110.z);
        let x_1113 : vec3<f32> = u_xlat21;
        let x_1116 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1119 : vec4<f32> = u_xlat7;
        u_xlat8 = ((vec4<f32>(x_1113.x, x_1113.y, x_1113.x, x_1113.y) * vec4<f32>(x_1116.x, x_1116.y, x_1116.x, x_1116.y)) + vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1119.y));
        let x_1123 : vec3<f32> = u_xlat21;
        let x_1126 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1123.x, x_1123.y) * vec2<f32>(x_1126.x, x_1126.y)) + vec2<f32>(x_1129.w, x_1129.y));
        let x_1133 : f32 = u_xlat5.x;
        u_xlat7.x = x_1133;
        let x_1135 : vec3<f32> = u_xlat21;
        let x_1138 : vec4<f32> = x_262.x_MainLightShadowmapSize;
        let x_1141 : vec4<f32> = u_xlat7;
        let x_1143 : vec2<f32> = ((vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(x_1138.x, x_1138.y)) + vec2<f32>(x_1141.x, x_1141.y));
        let x_1144 : vec3<f32> = u_xlat21;
        u_xlat21 = vec3<f32>(x_1143.x, x_1143.y, x_1144.z);
        let x_1147 : vec4<f32> = u_xlat4;
        let x_1149 : vec4<f32> = u_xlat6;
        u_xlat15 = (vec4<f32>(x_1147.x, x_1147.x, x_1147.x, x_1147.x) * x_1149);
        let x_1152 : vec4<f32> = u_xlat4;
        let x_1154 : vec4<f32> = u_xlat6;
        u_xlat16 = (vec4<f32>(x_1152.y, x_1152.y, x_1152.y, x_1152.y) * x_1154);
        let x_1157 : vec4<f32> = u_xlat4;
        let x_1159 : vec4<f32> = u_xlat6;
        u_xlat17 = (vec4<f32>(x_1157.z, x_1157.z, x_1157.z, x_1157.z) * x_1159);
        let x_1161 : vec4<f32> = u_xlat4;
        let x_1163 : vec4<f32> = u_xlat6;
        u_xlat4 = (vec4<f32>(x_1161.w, x_1161.w, x_1161.w, x_1161.w) * x_1163);
        let x_1166 : vec4<f32> = u_xlat9;
        let x_1167 : vec2<f32> = vec2<f32>(x_1166.x, x_1166.y);
        let x_1169 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1167.x, x_1167.y, x_1169);
        let x_1176 : vec3<f32> = txVec13;
        let x_1178 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1176.xy, x_1176.z);
        u_xlat57 = x_1178;
        let x_1180 : vec4<f32> = u_xlat9;
        let x_1181 : vec2<f32> = vec2<f32>(x_1180.z, x_1180.w);
        let x_1183 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1181.x, x_1181.y, x_1183);
        let x_1190 : vec3<f32> = txVec14;
        let x_1192 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1190.xy, x_1190.z);
        u_xlat5.x = x_1192;
        let x_1195 : f32 = u_xlat5.x;
        let x_1197 : f32 = u_xlat15.y;
        u_xlat5.x = (x_1195 * x_1197);
        let x_1201 : f32 = u_xlat15.x;
        let x_1202 : f32 = u_xlat57;
        let x_1205 : f32 = u_xlat5.x;
        u_xlat57 = ((x_1201 * x_1202) + x_1205);
        let x_1208 : vec4<f32> = u_xlat10;
        let x_1209 : vec2<f32> = vec2<f32>(x_1208.x, x_1208.y);
        let x_1211 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1209.x, x_1209.y, x_1211);
        let x_1218 : vec3<f32> = txVec15;
        let x_1220 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1218.xy, x_1218.z);
        u_xlat5.x = x_1220;
        let x_1223 : f32 = u_xlat15.z;
        let x_1225 : f32 = u_xlat5.x;
        let x_1227 : f32 = u_xlat57;
        u_xlat57 = ((x_1223 * x_1225) + x_1227);
        let x_1230 : vec4<f32> = u_xlat12;
        let x_1231 : vec2<f32> = vec2<f32>(x_1230.x, x_1230.y);
        let x_1233 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1231.x, x_1231.y, x_1233);
        let x_1240 : vec3<f32> = txVec16;
        let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1240.xy, x_1240.z);
        u_xlat5.x = x_1242;
        let x_1245 : f32 = u_xlat15.w;
        let x_1247 : f32 = u_xlat5.x;
        let x_1249 : f32 = u_xlat57;
        u_xlat57 = ((x_1245 * x_1247) + x_1249);
        let x_1252 : vec4<f32> = u_xlat11;
        let x_1253 : vec2<f32> = vec2<f32>(x_1252.x, x_1252.y);
        let x_1255 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1253.x, x_1253.y, x_1255);
        let x_1262 : vec3<f32> = txVec17;
        let x_1264 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1262.xy, x_1262.z);
        u_xlat5.x = x_1264;
        let x_1267 : f32 = u_xlat16.x;
        let x_1269 : f32 = u_xlat5.x;
        let x_1271 : f32 = u_xlat57;
        u_xlat57 = ((x_1267 * x_1269) + x_1271);
        let x_1274 : vec4<f32> = u_xlat11;
        let x_1275 : vec2<f32> = vec2<f32>(x_1274.z, x_1274.w);
        let x_1277 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1275.x, x_1275.y, x_1277);
        let x_1284 : vec3<f32> = txVec18;
        let x_1286 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1284.xy, x_1284.z);
        u_xlat5.x = x_1286;
        let x_1289 : f32 = u_xlat16.y;
        let x_1291 : f32 = u_xlat5.x;
        let x_1293 : f32 = u_xlat57;
        u_xlat57 = ((x_1289 * x_1291) + x_1293);
        let x_1296 : vec2<f32> = u_xlat46;
        let x_1298 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1296.x, x_1296.y, x_1298);
        let x_1305 : vec3<f32> = txVec19;
        let x_1307 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1305.xy, x_1305.z);
        u_xlat5.x = x_1307;
        let x_1310 : f32 = u_xlat16.z;
        let x_1312 : f32 = u_xlat5.x;
        let x_1314 : f32 = u_xlat57;
        u_xlat57 = ((x_1310 * x_1312) + x_1314);
        let x_1317 : vec4<f32> = u_xlat12;
        let x_1318 : vec2<f32> = vec2<f32>(x_1317.z, x_1317.w);
        let x_1320 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1318.x, x_1318.y, x_1320);
        let x_1327 : vec3<f32> = txVec20;
        let x_1329 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1327.xy, x_1327.z);
        u_xlat5.x = x_1329;
        let x_1332 : f32 = u_xlat16.w;
        let x_1334 : f32 = u_xlat5.x;
        let x_1336 : f32 = u_xlat57;
        u_xlat57 = ((x_1332 * x_1334) + x_1336);
        let x_1339 : vec4<f32> = u_xlat13;
        let x_1340 : vec2<f32> = vec2<f32>(x_1339.x, x_1339.y);
        let x_1342 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1340.x, x_1340.y, x_1342);
        let x_1349 : vec3<f32> = txVec21;
        let x_1351 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1349.xy, x_1349.z);
        u_xlat5.x = x_1351;
        let x_1354 : f32 = u_xlat17.x;
        let x_1356 : f32 = u_xlat5.x;
        let x_1358 : f32 = u_xlat57;
        u_xlat57 = ((x_1354 * x_1356) + x_1358);
        let x_1361 : vec4<f32> = u_xlat13;
        let x_1362 : vec2<f32> = vec2<f32>(x_1361.z, x_1361.w);
        let x_1364 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1362.x, x_1362.y, x_1364);
        let x_1371 : vec3<f32> = txVec22;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1371.xy, x_1371.z);
        u_xlat5.x = x_1373;
        let x_1376 : f32 = u_xlat17.y;
        let x_1378 : f32 = u_xlat5.x;
        let x_1380 : f32 = u_xlat57;
        u_xlat57 = ((x_1376 * x_1378) + x_1380);
        let x_1383 : vec2<f32> = u_xlat23;
        let x_1385 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1383.x, x_1383.y, x_1385);
        let x_1392 : vec3<f32> = txVec23;
        let x_1394 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1392.xy, x_1392.z);
        u_xlat5.x = x_1394;
        let x_1397 : f32 = u_xlat17.z;
        let x_1399 : f32 = u_xlat5.x;
        let x_1401 : f32 = u_xlat57;
        u_xlat57 = ((x_1397 * x_1399) + x_1401);
        let x_1404 : vec2<f32> = u_xlat14;
        let x_1406 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1404.x, x_1404.y, x_1406);
        let x_1413 : vec3<f32> = txVec24;
        let x_1415 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1413.xy, x_1413.z);
        u_xlat5.x = x_1415;
        let x_1418 : f32 = u_xlat17.w;
        let x_1420 : f32 = u_xlat5.x;
        let x_1422 : f32 = u_xlat57;
        u_xlat57 = ((x_1418 * x_1420) + x_1422);
        let x_1425 : vec4<f32> = u_xlat8;
        let x_1426 : vec2<f32> = vec2<f32>(x_1425.x, x_1425.y);
        let x_1428 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1435 : vec3<f32> = txVec25;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1435.xy, x_1435.z);
        u_xlat5.x = x_1437;
        let x_1440 : f32 = u_xlat4.x;
        let x_1442 : f32 = u_xlat5.x;
        let x_1444 : f32 = u_xlat57;
        u_xlat57 = ((x_1440 * x_1442) + x_1444);
        let x_1447 : vec4<f32> = u_xlat8;
        let x_1448 : vec2<f32> = vec2<f32>(x_1447.z, x_1447.w);
        let x_1450 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1448.x, x_1448.y, x_1450);
        let x_1457 : vec3<f32> = txVec26;
        let x_1459 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1457.xy, x_1457.z);
        u_xlat4.x = x_1459;
        let x_1462 : f32 = u_xlat4.y;
        let x_1464 : f32 = u_xlat4.x;
        let x_1466 : f32 = u_xlat57;
        u_xlat57 = ((x_1462 * x_1464) + x_1466);
        let x_1469 : vec2<f32> = u_xlat43;
        let x_1471 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1469.x, x_1469.y, x_1471);
        let x_1478 : vec3<f32> = txVec27;
        let x_1480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1478.xy, x_1478.z);
        u_xlat4.x = x_1480;
        let x_1483 : f32 = u_xlat4.z;
        let x_1485 : f32 = u_xlat4.x;
        let x_1487 : f32 = u_xlat57;
        u_xlat57 = ((x_1483 * x_1485) + x_1487);
        let x_1490 : vec3<f32> = u_xlat21;
        let x_1491 : vec2<f32> = vec2<f32>(x_1490.x, x_1490.y);
        let x_1493 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1491.x, x_1491.y, x_1493);
        let x_1500 : vec3<f32> = txVec28;
        let x_1502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1500.xy, x_1500.z);
        u_xlat21.x = x_1502;
        let x_1505 : f32 = u_xlat4.w;
        let x_1507 : f32 = u_xlat21.x;
        let x_1509 : f32 = u_xlat57;
        u_xlat3.x = ((x_1505 * x_1507) + x_1509);
      }
    }
  } else {
    let x_1514 : vec4<f32> = vs_TEXCOORD6;
    let x_1515 : vec2<f32> = vec2<f32>(x_1514.x, x_1514.y);
    let x_1517 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1515.x, x_1515.y, x_1517);
    let x_1524 : vec3<f32> = txVec29;
    let x_1526 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1524.xy, x_1524.z);
    u_xlat3.x = x_1526;
  }
  let x_1529 : f32 = x_262.x_MainLightShadowParams.x;
  u_xlat21.x = (-(x_1529) + 1.0f);
  let x_1534 : f32 = u_xlat3.x;
  let x_1536 : f32 = x_262.x_MainLightShadowParams.x;
  let x_1539 : f32 = u_xlat21.x;
  u_xlat3.x = ((x_1534 * x_1536) + x_1539);
  let x_1543 : f32 = vs_TEXCOORD6.z;
  u_xlatb21 = (0.0f >= x_1543);
  let x_1547 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (x_1547 >= 1.0f);
  let x_1549 : bool = u_xlatb39;
  let x_1550 : bool = u_xlatb21;
  u_xlatb21 = (x_1549 | x_1550);
  let x_1552 : bool = u_xlatb21;
  if (x_1552) {
    x_1553 = 1.0f;
  } else {
    let x_1558 : f32 = u_xlat3.x;
    x_1553 = x_1558;
  }
  let x_1559 : f32 = x_1553;
  u_xlat3.x = x_1559;
  let x_1562 : vec3<f32> = vs_TEXCOORD1;
  let x_1565 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  u_xlat21 = (x_1562 + -(x_1565));
  let x_1568 : vec3<f32> = u_xlat21;
  let x_1569 : vec3<f32> = u_xlat21;
  u_xlat21.x = dot(x_1568, x_1569);
  let x_1573 : f32 = u_xlat21.x;
  let x_1575 : f32 = x_262.x_MainLightShadowParams.z;
  let x_1578 : f32 = x_262.x_MainLightShadowParams.w;
  u_xlat21.x = ((x_1573 * x_1575) + x_1578);
  let x_1582 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_1582, 0.0f, 1.0f);
  let x_1586 : f32 = u_xlat3.x;
  u_xlat39 = (-(x_1586) + 1.0f);
  let x_1590 : f32 = u_xlat21.x;
  let x_1591 : f32 = u_xlat39;
  let x_1594 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1590 * x_1591) + x_1594);
  let x_1597 : f32 = u_xlat56;
  let x_1601 : vec4<f32> = x_43.x_MainLightColor;
  u_xlat21 = (vec3<f32>(x_1597, x_1597, x_1597) * vec3<f32>(x_1601.x, x_1601.y, x_1601.z));
  let x_1604 : f32 = u_xlat55;
  let x_1606 : vec4<f32> = u_xlat2;
  let x_1608 : vec3<f32> = (vec3<f32>(x_1604, x_1604, x_1604) * vec3<f32>(x_1606.x, x_1606.y, x_1606.z));
  let x_1609 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1608.x, x_1608.y, x_1608.z, x_1609.w);
  let x_1612 : f32 = u_xlat3.x;
  let x_1615 : f32 = x_93.unity_LightData.z;
  u_xlat55 = (x_1612 * x_1615);
  let x_1617 : f32 = u_xlat55;
  let x_1619 : vec3<f32> = u_xlat21;
  let x_1620 : vec3<f32> = (vec3<f32>(x_1617, x_1617, x_1617) * x_1619);
  let x_1621 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1620.x, x_1620.y, x_1620.z, x_1621.w);
  let x_1623 : vec3<f32> = u_xlat1;
  let x_1625 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(x_1623, vec3<f32>(x_1625.x, x_1625.y, x_1625.z));
  let x_1628 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1628, 0.0f, 1.0f);
  let x_1630 : f32 = u_xlat55;
  let x_1632 : vec4<f32> = u_xlat3;
  let x_1634 : vec3<f32> = (vec3<f32>(x_1630, x_1630, x_1630) * vec3<f32>(x_1632.x, x_1632.y, x_1632.z));
  let x_1635 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1634.x, x_1634.y, x_1634.z, x_1635.w);
  let x_1637 : vec4<f32> = u_xlat0;
  let x_1639 : vec4<f32> = u_xlat3;
  let x_1641 : vec3<f32> = (vec3<f32>(x_1637.y, x_1637.z, x_1637.w) * vec3<f32>(x_1639.x, x_1639.y, x_1639.z));
  let x_1642 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1641.x, x_1641.y, x_1641.z, x_1642.w);
  let x_1645 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1647 : f32 = x_93.unity_LightData.y;
  u_xlat55 = min(x_1645, x_1647);
  let x_1651 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1651));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1663 : u32 = u_xlatu_loop_1;
    let x_1664 : u32 = u_xlatu55;
    if ((x_1663 < x_1664)) {
    } else {
      break;
    }
    let x_1667 : u32 = u_xlatu_loop_1;
    u_xlatu58 = (x_1667 >> 2u);
    let x_1671 : u32 = u_xlatu_loop_1;
    u_xlati5 = bitcast<i32>((x_1671 & 3u));
    let x_1675 : u32 = u_xlatu58;
    let x_1678 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_1675)];
    let x_1688 : i32 = u_xlati5;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1693 : vec4<u32> = indexable[x_1688];
    u_xlat58 = dot(x_1678, bitcast<vec4<f32>>(x_1693));
    let x_1697 : f32 = u_xlat58;
    u_xlati58 = i32(x_1697);
    let x_1699 : vec3<f32> = vs_TEXCOORD1;
    let x_1711 : i32 = u_xlati58;
    let x_1713 : vec4<f32> = x_1710.x_AdditionalLightsPosition[x_1711];
    let x_1716 : i32 = u_xlati58;
    let x_1718 : vec4<f32> = x_1710.x_AdditionalLightsPosition[x_1716];
    let x_1720 : vec3<f32> = ((-(x_1699) * vec3<f32>(x_1713.w, x_1713.w, x_1713.w)) + vec3<f32>(x_1718.x, x_1718.y, x_1718.z));
    let x_1721 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1721.w);
    let x_1724 : vec4<f32> = u_xlat5;
    let x_1726 : vec4<f32> = u_xlat5;
    u_xlat59 = dot(vec3<f32>(x_1724.x, x_1724.y, x_1724.z), vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
    let x_1729 : f32 = u_xlat59;
    u_xlat59 = max(x_1729, 6.10351562e-05f);
    let x_1732 : f32 = u_xlat59;
    u_xlat6.x = inverseSqrt(x_1732);
    let x_1735 : vec4<f32> = u_xlat5;
    let x_1737 : vec4<f32> = u_xlat6;
    let x_1739 : vec3<f32> = (vec3<f32>(x_1735.x, x_1735.y, x_1735.z) * vec3<f32>(x_1737.x, x_1737.x, x_1737.x));
    let x_1740 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1739.x, x_1739.y, x_1739.z, x_1740.w);
    let x_1742 : f32 = u_xlat59;
    u_xlat6.x = (1.0f / x_1742);
    let x_1745 : f32 = u_xlat59;
    let x_1746 : i32 = u_xlati58;
    let x_1748 : f32 = x_1710.x_AdditionalLightsAttenuation[x_1746].x;
    u_xlat59 = (x_1745 * x_1748);
    let x_1750 : f32 = u_xlat59;
    let x_1752 : f32 = u_xlat59;
    u_xlat59 = ((-(x_1750) * x_1752) + 1.0f);
    let x_1755 : f32 = u_xlat59;
    u_xlat59 = max(x_1755, 0.0f);
    let x_1757 : f32 = u_xlat59;
    let x_1758 : f32 = u_xlat59;
    u_xlat59 = (x_1757 * x_1758);
    let x_1760 : f32 = u_xlat59;
    let x_1762 : f32 = u_xlat6.x;
    u_xlat59 = (x_1760 * x_1762);
    let x_1764 : i32 = u_xlati58;
    let x_1766 : vec4<f32> = x_1710.x_AdditionalLightsSpotDir[x_1764];
    let x_1768 : vec4<f32> = u_xlat5;
    u_xlat6.x = dot(vec3<f32>(x_1766.x, x_1766.y, x_1766.z), vec3<f32>(x_1768.x, x_1768.y, x_1768.z));
    let x_1773 : f32 = u_xlat6.x;
    let x_1774 : i32 = u_xlati58;
    let x_1776 : f32 = x_1710.x_AdditionalLightsAttenuation[x_1774].z;
    let x_1778 : i32 = u_xlati58;
    let x_1780 : f32 = x_1710.x_AdditionalLightsAttenuation[x_1778].w;
    u_xlat6.x = ((x_1773 * x_1776) + x_1780);
    let x_1784 : f32 = u_xlat6.x;
    u_xlat6.x = clamp(x_1784, 0.0f, 1.0f);
    let x_1788 : f32 = u_xlat6.x;
    let x_1790 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1788 * x_1790);
    let x_1793 : f32 = u_xlat59;
    let x_1795 : f32 = u_xlat6.x;
    u_xlat59 = (x_1793 * x_1795);
    let x_1797 : f32 = u_xlat56;
    let x_1799 : i32 = u_xlati58;
    let x_1801 : vec4<f32> = x_1710.x_AdditionalLightsColor[x_1799];
    let x_1803 : vec3<f32> = (vec3<f32>(x_1797, x_1797, x_1797) * vec3<f32>(x_1801.x, x_1801.y, x_1801.z));
    let x_1804 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1803.x, x_1803.y, x_1803.z, x_1804.w);
    let x_1806 : f32 = u_xlat59;
    let x_1808 : vec4<f32> = u_xlat6;
    let x_1810 : vec3<f32> = (vec3<f32>(x_1806, x_1806, x_1806) * vec3<f32>(x_1808.x, x_1808.y, x_1808.z));
    let x_1811 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1810.x, x_1810.y, x_1810.z, x_1811.w);
    let x_1813 : vec3<f32> = u_xlat1;
    let x_1814 : vec4<f32> = u_xlat5;
    u_xlat58 = dot(x_1813, vec3<f32>(x_1814.x, x_1814.y, x_1814.z));
    let x_1817 : f32 = u_xlat58;
    u_xlat58 = clamp(x_1817, 0.0f, 1.0f);
    let x_1819 : f32 = u_xlat58;
    let x_1821 : vec4<f32> = u_xlat6;
    let x_1823 : vec3<f32> = (vec3<f32>(x_1819, x_1819, x_1819) * vec3<f32>(x_1821.x, x_1821.y, x_1821.z));
    let x_1824 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1823.x, x_1823.y, x_1823.z, x_1824.w);
    let x_1826 : vec4<f32> = u_xlat5;
    let x_1828 : vec4<f32> = u_xlat0;
    let x_1831 : vec4<f32> = u_xlat4;
    let x_1833 : vec3<f32> = ((vec3<f32>(x_1826.x, x_1826.y, x_1826.z) * vec3<f32>(x_1828.y, x_1828.z, x_1828.w)) + vec3<f32>(x_1831.x, x_1831.y, x_1831.z));
    let x_1834 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1833.x, x_1833.y, x_1833.z, x_1834.w);

    continuing {
      let x_1836 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1836 + bitcast<u32>(1i));
    }
  }
  let x_1839 : vec4<f32> = u_xlat2;
  let x_1841 : vec4<f32> = u_xlat0;
  let x_1844 : vec4<f32> = u_xlat3;
  u_xlat18 = ((vec3<f32>(x_1839.x, x_1839.y, x_1839.z) * vec3<f32>(x_1841.y, x_1841.z, x_1841.w)) + vec3<f32>(x_1844.x, x_1844.y, x_1844.z));
  let x_1849 : vec4<f32> = u_xlat4;
  let x_1851 : vec3<f32> = u_xlat18;
  let x_1852 : vec3<f32> = (vec3<f32>(x_1849.x, x_1849.y, x_1849.z) + x_1851);
  let x_1853 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1852.x, x_1852.y, x_1852.z, x_1853.w);
  let x_1857 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_1857 == 1.0f);
  let x_1859 : bool = u_xlatb18;
  if (x_1859) {
    let x_1864 : f32 = u_xlat0.x;
    x_1860 = x_1864;
  } else {
    x_1860 = 1.0f;
  }
  let x_1866 : f32 = x_1860;
  SV_Target0.w = x_1866;
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

