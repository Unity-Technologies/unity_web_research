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
  unity_OrthoParams : vec4<f32>,
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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_311 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1830 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb20 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat20 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var x_172 : vec3<f32>;
  var u_xlat58 : f32;
  var u_xlat59 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat60 : f32;
  var u_xlatb23 : bool;
  var u_xlat5 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatb42 : bool;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat43 : vec2<f32>;
  var u_xlat45 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
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
  var u_xlat49 : vec2<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat25 : vec3<f32>;
  var u_xlat15 : vec2<f32>;
  var u_xlat46 : vec2<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat63 : f32;
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
  var u_xlat24 : vec3<f32>;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb61 : bool;
  var x_1613 : f32;
  var u_xlat62 : f32;
  var u_xlatu5 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu25 : u32;
  var u_xlati44 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati25 : i32;
  var u_xlat44 : f32;
  var u_xlat64 : f32;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : bool;
  var x_2046 : f32;
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
  let x_64 : vec4<f32> = hlslcc_FragCoord;
  let x_68 : f32 = x_44.x_DitheringTextureInvSize;
  let x_70 : vec2<f32> = (vec2<f32>(x_64.x, x_64.y) * vec2<f32>(x_68, x_68));
  let x_71 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_78 : vec3<f32> = u_xlat1;
  let x_81 : f32 = x_44.x_GlobalMipBias.x;
  let x_82 : vec4<f32> = textureSampleBias(x_DitheringTexture, sampler_DitheringTexture, vec2<f32>(x_78.x, x_78.y), x_81);
  u_xlat1.x = x_82.w;
  let x_96 : f32 = x_93.unity_LODFade.x;
  u_xlatb20 = (x_96 >= 0.0f);
  let x_99 : bool = u_xlatb20;
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
  let x_135 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_135 == 0.0f);
  let x_140 : vec3<f32> = vs_TEXCOORD1;
  let x_145 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat20 = (-(x_140) + x_145);
  let x_148 : vec3<f32> = u_xlat20;
  let x_149 : vec3<f32> = u_xlat20;
  u_xlat2.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_153);
  let x_156 : vec3<f32> = u_xlat20;
  let x_157 : vec3<f32> = u_xlat2;
  u_xlat20 = (x_156 * vec3<f32>(x_157.x, x_157.x, x_157.x));
  let x_162 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_162;
  let x_165 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_165;
  let x_169 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_169;
  let x_171 : bool = u_xlatb1;
  if (x_171) {
    let x_175 : vec3<f32> = u_xlat20;
    x_172 = x_175;
  } else {
    let x_177 : vec3<f32> = u_xlat2;
    x_172 = x_177;
  }
  let x_178 : vec3<f32> = x_172;
  u_xlat1 = x_178;
  let x_181 : vec3<f32> = vs_TEXCOORD2;
  let x_182 : vec3<f32> = vs_TEXCOORD2;
  u_xlat58 = dot(x_181, x_182);
  let x_184 : f32 = u_xlat58;
  u_xlat58 = inverseSqrt(x_184);
  let x_186 : f32 = u_xlat58;
  let x_188 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_186, x_186, x_186) * x_188);
  let x_190 : vec3<f32> = u_xlat1;
  let x_191 : vec3<f32> = u_xlat1;
  u_xlat58 = dot(x_190, x_191);
  let x_193 : f32 = u_xlat58;
  u_xlat58 = max(x_193, 1.17549435e-37f);
  let x_196 : f32 = u_xlat58;
  u_xlat58 = inverseSqrt(x_196);
  let x_200 : f32 = vs_TEXCOORD1.y;
  let x_202 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat59 = (x_200 * x_202);
  let x_205 : f32 = x_44.unity_MatrixV[0i].z;
  let x_207 : f32 = vs_TEXCOORD1.x;
  let x_209 : f32 = u_xlat59;
  u_xlat59 = ((x_205 * x_207) + x_209);
  let x_212 : f32 = x_44.unity_MatrixV[2i].z;
  let x_214 : f32 = vs_TEXCOORD1.z;
  let x_216 : f32 = u_xlat59;
  u_xlat59 = ((x_212 * x_214) + x_216);
  let x_218 : f32 = u_xlat59;
  let x_221 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat59 = (x_218 + x_221);
  let x_223 : f32 = u_xlat59;
  let x_227 : f32 = x_44.x_ProjectionParams.y;
  u_xlat59 = (-(x_223) + -(x_227));
  let x_230 : f32 = u_xlat59;
  u_xlat59 = max(x_230, 0.0f);
  let x_232 : f32 = u_xlat59;
  let x_235 : f32 = x_44.unity_FogParams.x;
  u_xlat59 = (x_232 * x_235);
  let x_244 : vec2<f32> = vs_TEXCOORD7;
  let x_246 : f32 = x_44.x_GlobalMipBias.x;
  let x_247 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_244, x_246);
  u_xlat3 = vec3<f32>(x_247.x, x_247.y, x_247.z);
  let x_252 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_253 : vec2<f32> = vec2<f32>(x_252.x, x_252.y);
  let x_257 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_253.x, x_253.y));
  let x_258 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_257.x, x_257.y, x_258.z);
  let x_260 : vec3<f32> = u_xlat4;
  let x_262 : vec4<f32> = hlslcc_FragCoord;
  let x_264 : vec2<f32> = (vec2<f32>(x_260.x, x_260.y) * vec2<f32>(x_262.x, x_262.y));
  let x_265 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_264.x, x_264.y, x_265.z);
  let x_269 : f32 = u_xlat4.y;
  let x_272 : f32 = x_44.x_ScaleBiasRt.x;
  let x_275 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat60 = ((x_269 * x_272) + x_275);
  let x_277 : f32 = u_xlat60;
  u_xlat4.z = (-(x_277) + 1.0f);
  let x_286 : vec3<f32> = u_xlat4;
  let x_289 : f32 = x_44.x_GlobalMipBias.x;
  let x_290 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_286.x, x_286.z), x_289);
  u_xlat60 = x_290.x;
  let x_292 : f32 = u_xlat60;
  u_xlat4.x = (x_292 + -1.0f);
  let x_298 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_300 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_298 * x_300) + 1.0f);
  let x_304 : f32 = u_xlat60;
  u_xlat60 = min(x_304, 1.0f);
  let x_313 : f32 = x_311.x_MainLightShadowParams.y;
  u_xlatb23 = (0.0f < x_313);
  let x_315 : bool = u_xlatb23;
  if (x_315) {
    let x_319 : f32 = x_311.x_MainLightShadowParams.y;
    u_xlatb23 = (x_319 == 1.0f);
    let x_321 : bool = u_xlatb23;
    if (x_321) {
      let x_326 : vec4<f32> = vs_TEXCOORD6;
      let x_329 : vec4<f32> = x_311.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_326.x, x_326.y, x_326.x, x_326.y) + x_329);
      let x_332 : vec4<f32> = u_xlat5;
      let x_333 : vec2<f32> = vec2<f32>(x_332.x, x_332.y);
      let x_335 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_333.x, x_333.y, x_335);
      let x_348 : vec3<f32> = txVec0;
      let x_350 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_348.xy, x_348.z);
      u_xlat6.x = x_350;
      let x_353 : vec4<f32> = u_xlat5;
      let x_354 : vec2<f32> = vec2<f32>(x_353.z, x_353.w);
      let x_356 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_354.x, x_354.y, x_356);
      let x_363 : vec3<f32> = txVec1;
      let x_365 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_363.xy, x_363.z);
      u_xlat6.y = x_365;
      let x_367 : vec4<f32> = vs_TEXCOORD6;
      let x_370 : vec4<f32> = x_311.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_367.x, x_367.y, x_367.x, x_367.y) + x_370);
      let x_373 : vec4<f32> = u_xlat5;
      let x_374 : vec2<f32> = vec2<f32>(x_373.x, x_373.y);
      let x_376 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_374.x, x_374.y, x_376);
      let x_383 : vec3<f32> = txVec2;
      let x_385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_383.xy, x_383.z);
      u_xlat6.z = x_385;
      let x_388 : vec4<f32> = u_xlat5;
      let x_389 : vec2<f32> = vec2<f32>(x_388.z, x_388.w);
      let x_391 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_389.x, x_389.y, x_391);
      let x_398 : vec3<f32> = txVec3;
      let x_400 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_398.xy, x_398.z);
      u_xlat6.w = x_400;
      let x_403 : vec4<f32> = u_xlat6;
      u_xlat23.x = dot(x_403, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_411 : f32 = x_311.x_MainLightShadowParams.y;
      u_xlatb42 = (x_411 == 2.0f);
      let x_414 : bool = u_xlatb42;
      if (x_414) {
        let x_419 : vec4<f32> = vs_TEXCOORD6;
        let x_422 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        u_xlat42 = ((vec2<f32>(x_419.x, x_419.y) * vec2<f32>(x_422.z, x_422.w)) + vec2<f32>(0.5f, 0.5f));
        let x_428 : vec2<f32> = u_xlat42;
        u_xlat42 = floor(x_428);
        let x_430 : vec4<f32> = vs_TEXCOORD6;
        let x_433 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_436 : vec2<f32> = u_xlat42;
        let x_438 : vec2<f32> = ((vec2<f32>(x_430.x, x_430.y) * vec2<f32>(x_433.z, x_433.w)) + -(x_436));
        let x_439 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_438.x, x_438.y, x_439.z, x_439.w);
        let x_441 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_441.x, x_441.x, x_441.y, x_441.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_446 : vec4<f32> = u_xlat6;
        let x_448 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_446.x, x_446.x, x_446.z, x_446.z) * vec4<f32>(x_448.x, x_448.x, x_448.z, x_448.z));
        let x_452 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_452.y, x_452.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_457 : vec4<f32> = u_xlat7;
        let x_460 : vec4<f32> = u_xlat5;
        let x_463 : vec2<f32> = ((vec2<f32>(x_457.x, x_457.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_460.x, x_460.y)));
        let x_464 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_463.x, x_464.y, x_463.y, x_464.w);
        let x_466 : vec4<f32> = u_xlat5;
        let x_469 : vec2<f32> = (-(vec2<f32>(x_466.x, x_466.y)) + vec2<f32>(1.0f, 1.0f));
        let x_470 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_469.x, x_469.y, x_470.z, x_470.w);
        let x_473 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_473.x, x_473.y), vec2<f32>(0.0f, 0.0f));
        let x_477 : vec2<f32> = u_xlat45;
        let x_479 : vec2<f32> = u_xlat45;
        let x_481 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_477) * x_479) + vec2<f32>(x_481.x, x_481.y));
        let x_484 : vec4<f32> = u_xlat5;
        let x_486 : vec2<f32> = max(vec2<f32>(x_484.x, x_484.y), vec2<f32>(0.0f, 0.0f));
        let x_487 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_486.x, x_486.y, x_487.z, x_487.w);
        let x_489 : vec4<f32> = u_xlat5;
        let x_492 : vec4<f32> = u_xlat5;
        let x_495 : vec4<f32> = u_xlat6;
        let x_497 : vec2<f32> = ((-(vec2<f32>(x_489.x, x_489.y)) * vec2<f32>(x_492.x, x_492.y)) + vec2<f32>(x_495.y, x_495.w));
        let x_498 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_497.x, x_497.y, x_498.z, x_498.w);
        let x_500 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_500 + vec2<f32>(1.0f, 1.0f));
        let x_502 : vec4<f32> = u_xlat5;
        let x_504 : vec2<f32> = (vec2<f32>(x_502.x, x_502.y) + vec2<f32>(1.0f, 1.0f));
        let x_505 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_504.x, x_504.y, x_505.z, x_505.w);
        let x_508 : vec4<f32> = u_xlat6;
        let x_512 : vec2<f32> = (vec2<f32>(x_508.x, x_508.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_513 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_512.x, x_512.y, x_513.z, x_513.w);
        let x_516 : vec4<f32> = u_xlat7;
        let x_518 : vec2<f32> = (vec2<f32>(x_516.x, x_516.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_519 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_518.x, x_518.y, x_519.z, x_519.w);
        let x_521 : vec2<f32> = u_xlat45;
        let x_522 : vec2<f32> = (x_521 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_523 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
        let x_526 : vec4<f32> = u_xlat5;
        let x_528 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_529 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_531 : vec4<f32> = u_xlat6;
        let x_533 : vec2<f32> = (vec2<f32>(x_531.y, x_531.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_534 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_533.x, x_533.y, x_534.z, x_534.w);
        let x_537 : f32 = u_xlat7.x;
        u_xlat8.z = x_537;
        let x_540 : f32 = u_xlat5.x;
        u_xlat8.w = x_540;
        let x_543 : f32 = u_xlat10.x;
        u_xlat9.z = x_543;
        let x_546 : f32 = u_xlat43.x;
        u_xlat9.w = x_546;
        let x_548 : vec4<f32> = u_xlat8;
        let x_550 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_548.z, x_548.w, x_548.x, x_548.z) + vec4<f32>(x_550.z, x_550.w, x_550.x, x_550.z));
        let x_554 : f32 = u_xlat8.y;
        u_xlat7.z = x_554;
        let x_557 : f32 = u_xlat5.y;
        u_xlat7.w = x_557;
        let x_560 : f32 = u_xlat9.y;
        u_xlat10.z = x_560;
        let x_563 : f32 = u_xlat43.y;
        u_xlat10.w = x_563;
        let x_565 : vec4<f32> = u_xlat7;
        let x_567 : vec4<f32> = u_xlat10;
        let x_569 : vec3<f32> = (vec3<f32>(x_565.z, x_565.y, x_565.w) + vec3<f32>(x_567.z, x_567.y, x_567.w));
        let x_570 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
        let x_572 : vec4<f32> = u_xlat9;
        let x_574 : vec4<f32> = u_xlat6;
        let x_576 : vec3<f32> = (vec3<f32>(x_572.x, x_572.z, x_572.w) / vec3<f32>(x_574.z, x_574.w, x_574.y));
        let x_577 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
        let x_579 : vec4<f32> = u_xlat7;
        let x_585 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_586 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_585.x, x_585.y, x_585.z, x_586.w);
        let x_588 : vec4<f32> = u_xlat10;
        let x_590 : vec4<f32> = u_xlat5;
        let x_592 : vec3<f32> = (vec3<f32>(x_588.z, x_588.y, x_588.w) / vec3<f32>(x_590.x, x_590.y, x_590.z));
        let x_593 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
        let x_595 : vec4<f32> = u_xlat8;
        let x_597 : vec3<f32> = (vec3<f32>(x_595.x, x_595.y, x_595.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_598 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_597.x, x_597.y, x_597.z, x_598.w);
        let x_600 : vec4<f32> = u_xlat7;
        let x_603 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_605 : vec3<f32> = (vec3<f32>(x_600.y, x_600.x, x_600.z) * vec3<f32>(x_603.x, x_603.x, x_603.x));
        let x_606 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_605.x, x_605.y, x_605.z, x_606.w);
        let x_608 : vec4<f32> = u_xlat8;
        let x_611 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_613 : vec3<f32> = (vec3<f32>(x_608.x, x_608.y, x_608.z) * vec3<f32>(x_611.y, x_611.y, x_611.y));
        let x_614 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_613.x, x_613.y, x_613.z, x_614.w);
        let x_617 : f32 = u_xlat8.x;
        u_xlat7.w = x_617;
        let x_619 : vec2<f32> = u_xlat42;
        let x_622 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_625 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_619.x, x_619.y, x_619.x, x_619.y) * vec4<f32>(x_622.x, x_622.y, x_622.x, x_622.y)) + vec4<f32>(x_625.y, x_625.w, x_625.x, x_625.w));
        let x_628 : vec2<f32> = u_xlat42;
        let x_630 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_633 : vec4<f32> = u_xlat7;
        let x_635 : vec2<f32> = ((x_628 * vec2<f32>(x_630.x, x_630.y)) + vec2<f32>(x_633.z, x_633.w));
        let x_636 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_635.x, x_635.y, x_636.z, x_636.w);
        let x_639 : f32 = u_xlat7.y;
        u_xlat8.w = x_639;
        let x_641 : vec4<f32> = u_xlat8;
        let x_642 : vec2<f32> = vec2<f32>(x_641.y, x_641.z);
        let x_643 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_643.x, x_642.x, x_643.z, x_642.y);
        let x_646 : vec2<f32> = u_xlat42;
        let x_649 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_652 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y) * vec4<f32>(x_649.x, x_649.y, x_649.x, x_649.y)) + vec4<f32>(x_652.x, x_652.y, x_652.z, x_652.y));
        let x_655 : vec2<f32> = u_xlat42;
        let x_658 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_661 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_655.x, x_655.y, x_655.x, x_655.y) * vec4<f32>(x_658.x, x_658.y, x_658.x, x_658.y)) + vec4<f32>(x_661.w, x_661.y, x_661.w, x_661.z));
        let x_664 : vec2<f32> = u_xlat42;
        let x_667 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_670 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_664.x, x_664.y, x_664.x, x_664.y) * vec4<f32>(x_667.x, x_667.y, x_667.x, x_667.y)) + vec4<f32>(x_670.x, x_670.w, x_670.z, x_670.w));
        let x_674 : vec4<f32> = u_xlat5;
        let x_676 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_674.x, x_674.x, x_674.x, x_674.y) * vec4<f32>(x_676.z, x_676.w, x_676.y, x_676.z));
        let x_680 : vec4<f32> = u_xlat5;
        let x_682 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_680.y, x_680.y, x_680.z, x_680.z) * x_682);
        let x_685 : f32 = u_xlat5.z;
        let x_687 : f32 = u_xlat6.y;
        u_xlat42.x = (x_685 * x_687);
        let x_691 : vec4<f32> = u_xlat9;
        let x_692 : vec2<f32> = vec2<f32>(x_691.x, x_691.y);
        let x_694 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_692.x, x_692.y, x_694);
        let x_702 : vec3<f32> = txVec4;
        let x_704 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_702.xy, x_702.z);
        u_xlat61 = x_704;
        let x_706 : vec4<f32> = u_xlat9;
        let x_707 : vec2<f32> = vec2<f32>(x_706.z, x_706.w);
        let x_709 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_707.x, x_707.y, x_709);
        let x_716 : vec3<f32> = txVec5;
        let x_718 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_716.xy, x_716.z);
        u_xlat5.x = x_718;
        let x_721 : f32 = u_xlat5.x;
        let x_723 : f32 = u_xlat12.y;
        u_xlat5.x = (x_721 * x_723);
        let x_727 : f32 = u_xlat12.x;
        let x_728 : f32 = u_xlat61;
        let x_731 : f32 = u_xlat5.x;
        u_xlat61 = ((x_727 * x_728) + x_731);
        let x_734 : vec4<f32> = u_xlat10;
        let x_735 : vec2<f32> = vec2<f32>(x_734.x, x_734.y);
        let x_737 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_735.x, x_735.y, x_737);
        let x_744 : vec3<f32> = txVec6;
        let x_746 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_744.xy, x_744.z);
        u_xlat5.x = x_746;
        let x_749 : f32 = u_xlat12.z;
        let x_751 : f32 = u_xlat5.x;
        let x_753 : f32 = u_xlat61;
        u_xlat61 = ((x_749 * x_751) + x_753);
        let x_756 : vec4<f32> = u_xlat8;
        let x_757 : vec2<f32> = vec2<f32>(x_756.x, x_756.y);
        let x_759 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_757.x, x_757.y, x_759);
        let x_766 : vec3<f32> = txVec7;
        let x_768 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_766.xy, x_766.z);
        u_xlat5.x = x_768;
        let x_771 : f32 = u_xlat12.w;
        let x_773 : f32 = u_xlat5.x;
        let x_775 : f32 = u_xlat61;
        u_xlat61 = ((x_771 * x_773) + x_775);
        let x_778 : vec4<f32> = u_xlat11;
        let x_779 : vec2<f32> = vec2<f32>(x_778.x, x_778.y);
        let x_781 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_779.x, x_779.y, x_781);
        let x_788 : vec3<f32> = txVec8;
        let x_790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_788.xy, x_788.z);
        u_xlat5.x = x_790;
        let x_793 : f32 = u_xlat13.x;
        let x_795 : f32 = u_xlat5.x;
        let x_797 : f32 = u_xlat61;
        u_xlat61 = ((x_793 * x_795) + x_797);
        let x_800 : vec4<f32> = u_xlat11;
        let x_801 : vec2<f32> = vec2<f32>(x_800.z, x_800.w);
        let x_803 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_801.x, x_801.y, x_803);
        let x_810 : vec3<f32> = txVec9;
        let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_810.xy, x_810.z);
        u_xlat5.x = x_812;
        let x_815 : f32 = u_xlat13.y;
        let x_817 : f32 = u_xlat5.x;
        let x_819 : f32 = u_xlat61;
        u_xlat61 = ((x_815 * x_817) + x_819);
        let x_822 : vec4<f32> = u_xlat8;
        let x_823 : vec2<f32> = vec2<f32>(x_822.z, x_822.w);
        let x_825 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_823.x, x_823.y, x_825);
        let x_832 : vec3<f32> = txVec10;
        let x_834 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_832.xy, x_832.z);
        u_xlat5.x = x_834;
        let x_837 : f32 = u_xlat13.z;
        let x_839 : f32 = u_xlat5.x;
        let x_841 : f32 = u_xlat61;
        u_xlat61 = ((x_837 * x_839) + x_841);
        let x_844 : vec4<f32> = u_xlat7;
        let x_845 : vec2<f32> = vec2<f32>(x_844.x, x_844.y);
        let x_847 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_845.x, x_845.y, x_847);
        let x_854 : vec3<f32> = txVec11;
        let x_856 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_854.xy, x_854.z);
        u_xlat5.x = x_856;
        let x_859 : f32 = u_xlat13.w;
        let x_861 : f32 = u_xlat5.x;
        let x_863 : f32 = u_xlat61;
        u_xlat61 = ((x_859 * x_861) + x_863);
        let x_866 : vec4<f32> = u_xlat7;
        let x_867 : vec2<f32> = vec2<f32>(x_866.z, x_866.w);
        let x_869 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_867.x, x_867.y, x_869);
        let x_876 : vec3<f32> = txVec12;
        let x_878 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_876.xy, x_876.z);
        u_xlat5.x = x_878;
        let x_881 : f32 = u_xlat42.x;
        let x_883 : f32 = u_xlat5.x;
        let x_885 : f32 = u_xlat61;
        u_xlat23.x = ((x_881 * x_883) + x_885);
      } else {
        let x_889 : vec4<f32> = vs_TEXCOORD6;
        let x_892 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        u_xlat42 = ((vec2<f32>(x_889.x, x_889.y) * vec2<f32>(x_892.z, x_892.w)) + vec2<f32>(0.5f, 0.5f));
        let x_896 : vec2<f32> = u_xlat42;
        u_xlat42 = floor(x_896);
        let x_898 : vec4<f32> = vs_TEXCOORD6;
        let x_901 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_904 : vec2<f32> = u_xlat42;
        let x_906 : vec2<f32> = ((vec2<f32>(x_898.x, x_898.y) * vec2<f32>(x_901.z, x_901.w)) + -(x_904));
        let x_907 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_906.x, x_906.y, x_907.z, x_907.w);
        let x_909 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_909.x, x_909.x, x_909.y, x_909.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_912 : vec4<f32> = u_xlat6;
        let x_914 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_912.x, x_912.x, x_912.z, x_912.z) * vec4<f32>(x_914.x, x_914.x, x_914.z, x_914.z));
        let x_917 : vec4<f32> = u_xlat7;
        let x_921 : vec2<f32> = (vec2<f32>(x_917.y, x_917.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_922 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_922.x, x_921.x, x_922.z, x_921.y);
        let x_924 : vec4<f32> = u_xlat7;
        let x_927 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_924.x, x_924.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_927.x, x_927.y)));
        let x_931 : vec4<f32> = u_xlat5;
        let x_934 : vec2<f32> = (-(vec2<f32>(x_931.x, x_931.y)) + vec2<f32>(1.0f, 1.0f));
        let x_935 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_934.x, x_935.y, x_934.y, x_935.w);
        let x_937 : vec4<f32> = u_xlat5;
        let x_939 : vec2<f32> = min(vec2<f32>(x_937.x, x_937.y), vec2<f32>(0.0f, 0.0f));
        let x_940 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_939.x, x_939.y, x_940.z, x_940.w);
        let x_942 : vec4<f32> = u_xlat7;
        let x_945 : vec4<f32> = u_xlat7;
        let x_948 : vec4<f32> = u_xlat6;
        let x_950 : vec2<f32> = ((-(vec2<f32>(x_942.x, x_942.y)) * vec2<f32>(x_945.x, x_945.y)) + vec2<f32>(x_948.x, x_948.z));
        let x_951 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_950.x, x_951.y, x_950.y, x_951.w);
        let x_953 : vec4<f32> = u_xlat5;
        let x_955 : vec2<f32> = max(vec2<f32>(x_953.x, x_953.y), vec2<f32>(0.0f, 0.0f));
        let x_956 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_955.x, x_955.y, x_956.z, x_956.w);
        let x_958 : vec4<f32> = u_xlat7;
        let x_961 : vec4<f32> = u_xlat7;
        let x_964 : vec4<f32> = u_xlat6;
        let x_966 : vec2<f32> = ((-(vec2<f32>(x_958.x, x_958.y)) * vec2<f32>(x_961.x, x_961.y)) + vec2<f32>(x_964.y, x_964.w));
        let x_967 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_967.x, x_966.x, x_967.z, x_966.y);
        let x_969 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_969 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_973 : f32 = u_xlat6.y;
        u_xlat7.z = (x_973 * 0.081632003f);
        let x_977 : vec2<f32> = u_xlat43;
        let x_980 : vec2<f32> = (vec2<f32>(x_977.y, x_977.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_981 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_980.x, x_980.y, x_981.z, x_981.w);
        let x_983 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_983.x, x_983.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_987 : f32 = u_xlat6.w;
        u_xlat9.z = (x_987 * 0.081632003f);
        let x_991 : f32 = u_xlat9.y;
        u_xlat7.x = x_991;
        let x_993 : vec4<f32> = u_xlat5;
        let x_1000 : vec2<f32> = ((vec2<f32>(x_993.x, x_993.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1001 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1001.x, x_1000.x, x_1001.z, x_1000.y);
        let x_1003 : vec4<f32> = u_xlat5;
        let x_1007 : vec2<f32> = ((vec2<f32>(x_1003.x, x_1003.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1008 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1007.x, x_1008.y, x_1007.y, x_1008.w);
        let x_1011 : f32 = u_xlat43.x;
        u_xlat6.y = x_1011;
        let x_1014 : f32 = u_xlat8.y;
        u_xlat6.w = x_1014;
        let x_1016 : vec4<f32> = u_xlat6;
        let x_1017 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1016 + x_1017);
        let x_1019 : vec4<f32> = u_xlat5;
        let x_1022 : vec2<f32> = ((vec2<f32>(x_1019.y, x_1019.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1023 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1023.x, x_1022.x, x_1023.z, x_1022.y);
        let x_1025 : vec4<f32> = u_xlat5;
        let x_1028 : vec2<f32> = ((vec2<f32>(x_1025.y, x_1025.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1029 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1028.x, x_1029.y, x_1028.y, x_1029.w);
        let x_1032 : f32 = u_xlat43.y;
        u_xlat8.y = x_1032;
        let x_1034 : vec4<f32> = u_xlat8;
        let x_1035 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1034 + x_1035);
        let x_1037 : vec4<f32> = u_xlat6;
        let x_1038 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1037 / x_1038);
        let x_1040 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1040 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1046 : vec4<f32> = u_xlat8;
        let x_1047 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1046 / x_1047);
        let x_1049 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1049 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1051 : vec4<f32> = u_xlat6;
        let x_1054 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1051.w, x_1051.x, x_1051.y, x_1051.z) * vec4<f32>(x_1054.x, x_1054.x, x_1054.x, x_1054.x));
        let x_1057 : vec4<f32> = u_xlat8;
        let x_1060 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1057.x, x_1057.w, x_1057.y, x_1057.z) * vec4<f32>(x_1060.y, x_1060.y, x_1060.y, x_1060.y));
        let x_1063 : vec4<f32> = u_xlat6;
        let x_1064 : vec3<f32> = vec3<f32>(x_1063.y, x_1063.z, x_1063.w);
        let x_1065 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1064.x, x_1065.y, x_1064.y, x_1064.z);
        let x_1068 : f32 = u_xlat8.x;
        u_xlat9.y = x_1068;
        let x_1070 : vec2<f32> = u_xlat42;
        let x_1073 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1070.x, x_1070.y, x_1070.x, x_1070.y) * vec4<f32>(x_1073.x, x_1073.y, x_1073.x, x_1073.y)) + vec4<f32>(x_1076.x, x_1076.y, x_1076.z, x_1076.y));
        let x_1079 : vec2<f32> = u_xlat42;
        let x_1081 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1084 : vec4<f32> = u_xlat9;
        let x_1086 : vec2<f32> = ((x_1079 * vec2<f32>(x_1081.x, x_1081.y)) + vec2<f32>(x_1084.w, x_1084.y));
        let x_1087 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1086.x, x_1086.y, x_1087.z, x_1087.w);
        let x_1090 : f32 = u_xlat9.y;
        u_xlat6.y = x_1090;
        let x_1093 : f32 = u_xlat8.z;
        u_xlat9.y = x_1093;
        let x_1095 : vec2<f32> = u_xlat42;
        let x_1098 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1101 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1095.x, x_1095.y, x_1095.x, x_1095.y) * vec4<f32>(x_1098.x, x_1098.y, x_1098.x, x_1098.y)) + vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1101.y));
        let x_1105 : vec2<f32> = u_xlat42;
        let x_1107 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1110 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1105 * vec2<f32>(x_1107.x, x_1107.y)) + vec2<f32>(x_1110.w, x_1110.y));
        let x_1114 : f32 = u_xlat9.y;
        u_xlat6.z = x_1114;
        let x_1116 : vec2<f32> = u_xlat42;
        let x_1119 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1122 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1116.x, x_1116.y, x_1116.x, x_1116.y) * vec4<f32>(x_1119.x, x_1119.y, x_1119.x, x_1119.y)) + vec4<f32>(x_1122.x, x_1122.y, x_1122.x, x_1122.z));
        let x_1126 : f32 = u_xlat8.w;
        u_xlat9.y = x_1126;
        let x_1129 : vec2<f32> = u_xlat42;
        let x_1132 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1135 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y) * vec4<f32>(x_1132.x, x_1132.y, x_1132.x, x_1132.y)) + vec4<f32>(x_1135.x, x_1135.y, x_1135.z, x_1135.y));
        let x_1139 : vec2<f32> = u_xlat42;
        let x_1141 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat9;
        let x_1146 : vec2<f32> = ((x_1139 * vec2<f32>(x_1141.x, x_1141.y)) + vec2<f32>(x_1144.w, x_1144.y));
        let x_1147 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1146.x, x_1146.y, x_1147.z);
        let x_1150 : f32 = u_xlat9.y;
        u_xlat6.w = x_1150;
        let x_1153 : vec2<f32> = u_xlat42;
        let x_1155 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1158 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1153 * vec2<f32>(x_1155.x, x_1155.y)) + vec2<f32>(x_1158.x, x_1158.w));
        let x_1161 : vec4<f32> = u_xlat9;
        let x_1162 : vec3<f32> = vec3<f32>(x_1161.x, x_1161.z, x_1161.w);
        let x_1163 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1162.x, x_1163.y, x_1162.y, x_1162.z);
        let x_1165 : vec2<f32> = u_xlat42;
        let x_1168 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1171 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1165.x, x_1165.y, x_1165.x, x_1165.y) * vec4<f32>(x_1168.x, x_1168.y, x_1168.x, x_1168.y)) + vec4<f32>(x_1171.x, x_1171.y, x_1171.z, x_1171.y));
        let x_1175 : vec2<f32> = u_xlat42;
        let x_1177 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1180 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1175 * vec2<f32>(x_1177.x, x_1177.y)) + vec2<f32>(x_1180.w, x_1180.y));
        let x_1184 : f32 = u_xlat6.x;
        u_xlat8.x = x_1184;
        let x_1186 : vec2<f32> = u_xlat42;
        let x_1188 : vec4<f32> = x_311.x_MainLightShadowmapSize;
        let x_1191 : vec4<f32> = u_xlat8;
        u_xlat42 = ((x_1186 * vec2<f32>(x_1188.x, x_1188.y)) + vec2<f32>(x_1191.x, x_1191.y));
        let x_1195 : vec4<f32> = u_xlat5;
        let x_1197 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1195.x, x_1195.x, x_1195.x, x_1195.x) * x_1197);
        let x_1200 : vec4<f32> = u_xlat5;
        let x_1202 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1200.y, x_1200.y, x_1200.y, x_1200.y) * x_1202);
        let x_1205 : vec4<f32> = u_xlat5;
        let x_1207 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1205.z, x_1205.z, x_1205.z, x_1205.z) * x_1207);
        let x_1209 : vec4<f32> = u_xlat5;
        let x_1211 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1209.w, x_1209.w, x_1209.w, x_1209.w) * x_1211);
        let x_1214 : vec4<f32> = u_xlat10;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
        let x_1217 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec13;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1224.xy, x_1224.z);
        u_xlat6.x = x_1226;
        let x_1229 : vec4<f32> = u_xlat10;
        let x_1230 : vec2<f32> = vec2<f32>(x_1229.z, x_1229.w);
        let x_1232 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1230.x, x_1230.y, x_1232);
        let x_1240 : vec3<f32> = txVec14;
        let x_1242 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1240.xy, x_1240.z);
        u_xlat63 = x_1242;
        let x_1243 : f32 = u_xlat63;
        let x_1245 : f32 = u_xlat16.y;
        u_xlat63 = (x_1243 * x_1245);
        let x_1248 : f32 = u_xlat16.x;
        let x_1250 : f32 = u_xlat6.x;
        let x_1252 : f32 = u_xlat63;
        u_xlat6.x = ((x_1248 * x_1250) + x_1252);
        let x_1256 : vec4<f32> = u_xlat11;
        let x_1257 : vec2<f32> = vec2<f32>(x_1256.x, x_1256.y);
        let x_1259 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1257.x, x_1257.y, x_1259);
        let x_1266 : vec3<f32> = txVec15;
        let x_1268 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1266.xy, x_1266.z);
        u_xlat63 = x_1268;
        let x_1270 : f32 = u_xlat16.z;
        let x_1271 : f32 = u_xlat63;
        let x_1274 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1270 * x_1271) + x_1274);
        let x_1278 : vec4<f32> = u_xlat13;
        let x_1279 : vec2<f32> = vec2<f32>(x_1278.x, x_1278.y);
        let x_1281 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1279.x, x_1279.y, x_1281);
        let x_1288 : vec3<f32> = txVec16;
        let x_1290 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1288.xy, x_1288.z);
        u_xlat63 = x_1290;
        let x_1292 : f32 = u_xlat16.w;
        let x_1293 : f32 = u_xlat63;
        let x_1296 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1292 * x_1293) + x_1296);
        let x_1300 : vec4<f32> = u_xlat12;
        let x_1301 : vec2<f32> = vec2<f32>(x_1300.x, x_1300.y);
        let x_1303 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1301.x, x_1301.y, x_1303);
        let x_1310 : vec3<f32> = txVec17;
        let x_1312 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1310.xy, x_1310.z);
        u_xlat63 = x_1312;
        let x_1314 : f32 = u_xlat17.x;
        let x_1315 : f32 = u_xlat63;
        let x_1318 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1314 * x_1315) + x_1318);
        let x_1322 : vec4<f32> = u_xlat12;
        let x_1323 : vec2<f32> = vec2<f32>(x_1322.z, x_1322.w);
        let x_1325 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1323.x, x_1323.y, x_1325);
        let x_1332 : vec3<f32> = txVec18;
        let x_1334 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1332.xy, x_1332.z);
        u_xlat63 = x_1334;
        let x_1336 : f32 = u_xlat17.y;
        let x_1337 : f32 = u_xlat63;
        let x_1340 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1336 * x_1337) + x_1340);
        let x_1344 : vec2<f32> = u_xlat49;
        let x_1346 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1344.x, x_1344.y, x_1346);
        let x_1353 : vec3<f32> = txVec19;
        let x_1355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1353.xy, x_1353.z);
        u_xlat63 = x_1355;
        let x_1357 : f32 = u_xlat17.z;
        let x_1358 : f32 = u_xlat63;
        let x_1361 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1357 * x_1358) + x_1361);
        let x_1365 : vec4<f32> = u_xlat13;
        let x_1366 : vec2<f32> = vec2<f32>(x_1365.z, x_1365.w);
        let x_1368 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec20;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1375.xy, x_1375.z);
        u_xlat63 = x_1377;
        let x_1379 : f32 = u_xlat17.w;
        let x_1380 : f32 = u_xlat63;
        let x_1383 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1379 * x_1380) + x_1383);
        let x_1387 : vec4<f32> = u_xlat14;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.x, x_1387.y);
        let x_1390 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec21;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1397.xy, x_1397.z);
        u_xlat63 = x_1399;
        let x_1401 : f32 = u_xlat18.x;
        let x_1402 : f32 = u_xlat63;
        let x_1405 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1401 * x_1402) + x_1405);
        let x_1409 : vec4<f32> = u_xlat14;
        let x_1410 : vec2<f32> = vec2<f32>(x_1409.z, x_1409.w);
        let x_1412 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec22;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1419.xy, x_1419.z);
        u_xlat63 = x_1421;
        let x_1423 : f32 = u_xlat18.y;
        let x_1424 : f32 = u_xlat63;
        let x_1427 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1423 * x_1424) + x_1427);
        let x_1431 : vec3<f32> = u_xlat25;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec23;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1441.xy, x_1441.z);
        u_xlat25.x = x_1443;
        let x_1446 : f32 = u_xlat18.z;
        let x_1448 : f32 = u_xlat25.x;
        let x_1451 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1446 * x_1448) + x_1451);
        let x_1455 : vec2<f32> = u_xlat15;
        let x_1457 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1455.x, x_1455.y, x_1457);
        let x_1464 : vec3<f32> = txVec24;
        let x_1466 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1464.xy, x_1464.z);
        u_xlat25.x = x_1466;
        let x_1469 : f32 = u_xlat18.w;
        let x_1471 : f32 = u_xlat25.x;
        let x_1474 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1469 * x_1471) + x_1474);
        let x_1478 : vec4<f32> = u_xlat9;
        let x_1479 : vec2<f32> = vec2<f32>(x_1478.x, x_1478.y);
        let x_1481 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec25;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
        u_xlat25.x = x_1490;
        let x_1493 : f32 = u_xlat5.x;
        let x_1495 : f32 = u_xlat25.x;
        let x_1498 : f32 = u_xlat6.x;
        u_xlat5.x = ((x_1493 * x_1495) + x_1498);
        let x_1502 : vec4<f32> = u_xlat9;
        let x_1503 : vec2<f32> = vec2<f32>(x_1502.z, x_1502.w);
        let x_1505 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1503.x, x_1503.y, x_1505);
        let x_1512 : vec3<f32> = txVec26;
        let x_1514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1512.xy, x_1512.z);
        u_xlat6.x = x_1514;
        let x_1517 : f32 = u_xlat5.y;
        let x_1519 : f32 = u_xlat6.x;
        let x_1522 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1517 * x_1519) + x_1522);
        let x_1526 : vec2<f32> = u_xlat46;
        let x_1528 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
        let x_1536 : vec3<f32> = txVec27;
        let x_1538 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1536.xy, x_1536.z);
        u_xlat24.x = x_1538;
        let x_1541 : f32 = u_xlat5.z;
        let x_1543 : f32 = u_xlat24.x;
        let x_1546 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1541 * x_1543) + x_1546);
        let x_1550 : vec2<f32> = u_xlat42;
        let x_1552 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1550.x, x_1550.y, x_1552);
        let x_1559 : vec3<f32> = txVec28;
        let x_1561 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1559.xy, x_1559.z);
        u_xlat42.x = x_1561;
        let x_1564 : f32 = u_xlat5.w;
        let x_1566 : f32 = u_xlat42.x;
        let x_1569 : f32 = u_xlat5.x;
        u_xlat23.x = ((x_1564 * x_1566) + x_1569);
      }
    }
  } else {
    let x_1574 : vec4<f32> = vs_TEXCOORD6;
    let x_1575 : vec2<f32> = vec2<f32>(x_1574.x, x_1574.y);
    let x_1577 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
    let x_1584 : vec3<f32> = txVec29;
    let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1584.xy, x_1584.z);
    u_xlat23.x = x_1586;
  }
  let x_1589 : f32 = x_311.x_MainLightShadowParams.x;
  u_xlat42.x = (-(x_1589) + 1.0f);
  let x_1594 : f32 = u_xlat23.x;
  let x_1596 : f32 = x_311.x_MainLightShadowParams.x;
  let x_1599 : f32 = u_xlat42.x;
  u_xlat23.x = ((x_1594 * x_1596) + x_1599);
  let x_1603 : f32 = vs_TEXCOORD6.z;
  u_xlatb42 = (0.0f >= x_1603);
  let x_1607 : f32 = vs_TEXCOORD6.z;
  u_xlatb61 = (x_1607 >= 1.0f);
  let x_1609 : bool = u_xlatb61;
  let x_1610 : bool = u_xlatb42;
  u_xlatb42 = (x_1609 | x_1610);
  let x_1612 : bool = u_xlatb42;
  if (x_1612) {
    x_1613 = 1.0f;
  } else {
    let x_1618 : f32 = u_xlat23.x;
    x_1613 = x_1618;
  }
  let x_1619 : f32 = x_1613;
  u_xlat23.x = x_1619;
  let x_1621 : vec3<f32> = vs_TEXCOORD1;
  let x_1623 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1625 : vec3<f32> = (x_1621 + -(x_1623));
  let x_1626 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1625.x, x_1625.y, x_1625.z, x_1626.w);
  let x_1628 : vec4<f32> = u_xlat5;
  let x_1630 : vec4<f32> = u_xlat5;
  u_xlat42.x = dot(vec3<f32>(x_1628.x, x_1628.y, x_1628.z), vec3<f32>(x_1630.x, x_1630.y, x_1630.z));
  let x_1635 : f32 = u_xlat42.x;
  let x_1637 : f32 = x_311.x_MainLightShadowParams.z;
  let x_1640 : f32 = x_311.x_MainLightShadowParams.w;
  u_xlat42.x = ((x_1635 * x_1637) + x_1640);
  let x_1644 : f32 = u_xlat42.x;
  u_xlat42.x = clamp(x_1644, 0.0f, 1.0f);
  let x_1648 : f32 = u_xlat23.x;
  u_xlat61 = (-(x_1648) + 1.0f);
  let x_1652 : f32 = u_xlat42.x;
  let x_1653 : f32 = u_xlat61;
  let x_1656 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1652 * x_1653) + x_1656);
  let x_1659 : vec3<f32> = u_xlat4;
  let x_1662 : vec4<f32> = x_44.x_MainLightColor;
  let x_1664 : vec3<f32> = (vec3<f32>(x_1659.x, x_1659.x, x_1659.x) * vec3<f32>(x_1662.x, x_1662.y, x_1662.z));
  let x_1665 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1664.x, x_1664.y, x_1664.z, x_1665.w);
  let x_1667 : f32 = u_xlat60;
  let x_1669 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_1667, x_1667, x_1667) * x_1669);
  let x_1672 : f32 = u_xlat23.x;
  let x_1675 : f32 = x_93.unity_LightData.z;
  u_xlat60 = (x_1672 * x_1675);
  let x_1677 : f32 = u_xlat60;
  let x_1679 : vec4<f32> = u_xlat5;
  u_xlat23 = (vec3<f32>(x_1677, x_1677, x_1677) * vec3<f32>(x_1679.x, x_1679.y, x_1679.z));
  let x_1682 : vec3<f32> = u_xlat2;
  let x_1684 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat60 = dot(x_1682, vec3<f32>(x_1684.x, x_1684.y, x_1684.z));
  let x_1687 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1687, 0.0f, 1.0f);
  let x_1689 : f32 = u_xlat60;
  let x_1691 : vec3<f32> = u_xlat23;
  let x_1692 : vec3<f32> = (vec3<f32>(x_1689, x_1689, x_1689) * x_1691);
  let x_1693 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1692.x, x_1692.y, x_1692.z, x_1693.w);
  let x_1696 : f32 = u_xlat0.x;
  u_xlat60 = ((x_1696 * 10.0f) + 1.0f);
  let x_1700 : f32 = u_xlat60;
  u_xlat60 = exp2(x_1700);
  let x_1702 : vec3<f32> = u_xlat1;
  let x_1703 : f32 = u_xlat58;
  let x_1707 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1709 : vec3<f32> = ((x_1702 * vec3<f32>(x_1703, x_1703, x_1703)) + vec3<f32>(x_1707.x, x_1707.y, x_1707.z));
  let x_1710 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1709.x, x_1709.y, x_1709.z, x_1710.w);
  let x_1713 : vec4<f32> = u_xlat6;
  let x_1715 : vec4<f32> = u_xlat6;
  u_xlat62 = dot(vec3<f32>(x_1713.x, x_1713.y, x_1713.z), vec3<f32>(x_1715.x, x_1715.y, x_1715.z));
  let x_1718 : f32 = u_xlat62;
  u_xlat62 = max(x_1718, 1.17549435e-37f);
  let x_1720 : f32 = u_xlat62;
  u_xlat62 = inverseSqrt(x_1720);
  let x_1722 : f32 = u_xlat62;
  let x_1724 : vec4<f32> = u_xlat6;
  let x_1726 : vec3<f32> = (vec3<f32>(x_1722, x_1722, x_1722) * vec3<f32>(x_1724.x, x_1724.y, x_1724.z));
  let x_1727 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1726.x, x_1726.y, x_1726.z, x_1727.w);
  let x_1729 : vec3<f32> = u_xlat2;
  let x_1730 : vec4<f32> = u_xlat6;
  u_xlat62 = dot(x_1729, vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
  let x_1733 : f32 = u_xlat62;
  u_xlat62 = clamp(x_1733, 0.0f, 1.0f);
  let x_1735 : f32 = u_xlat62;
  u_xlat62 = log2(x_1735);
  let x_1737 : f32 = u_xlat60;
  let x_1738 : f32 = u_xlat62;
  u_xlat62 = (x_1737 * x_1738);
  let x_1740 : f32 = u_xlat62;
  u_xlat62 = exp2(x_1740);
  let x_1742 : f32 = u_xlat62;
  let x_1745 : vec4<f32> = x_56.x_SpecColor;
  let x_1747 : vec3<f32> = (vec3<f32>(x_1742, x_1742, x_1742) * vec3<f32>(x_1745.x, x_1745.y, x_1745.z));
  let x_1748 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1747.x, x_1747.y, x_1747.z, x_1748.w);
  let x_1750 : vec3<f32> = u_xlat23;
  let x_1751 : vec4<f32> = u_xlat6;
  u_xlat23 = (x_1750 * vec3<f32>(x_1751.x, x_1751.y, x_1751.z));
  let x_1754 : vec4<f32> = u_xlat5;
  let x_1756 : vec4<f32> = u_xlat0;
  let x_1759 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_1754.x, x_1754.y, x_1754.z) * vec3<f32>(x_1756.y, x_1756.z, x_1756.w)) + x_1759);
  let x_1762 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1764 : f32 = x_93.unity_LightData.y;
  u_xlat5.x = min(x_1762, x_1764);
  let x_1770 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_1770));
  u_xlat24.x = 0.0f;
  u_xlat24.y = 0.0f;
  u_xlat24.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1782 : u32 = u_xlatu_loop_1;
    let x_1783 : u32 = u_xlatu5;
    if ((x_1782 < x_1783)) {
    } else {
      break;
    }
    let x_1786 : u32 = u_xlatu_loop_1;
    u_xlatu25 = (x_1786 >> 2u);
    let x_1790 : u32 = u_xlatu_loop_1;
    u_xlati44 = bitcast<i32>((x_1790 & 3u));
    let x_1793 : u32 = u_xlatu25;
    let x_1796 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_1793)];
    let x_1806 : i32 = u_xlati44;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1811 : vec4<u32> = indexable[x_1806];
    u_xlat25.x = dot(x_1796, bitcast<vec4<f32>>(x_1811));
    let x_1817 : f32 = u_xlat25.x;
    u_xlati25 = i32(x_1817);
    let x_1819 : vec3<f32> = vs_TEXCOORD1;
    let x_1831 : i32 = u_xlati25;
    let x_1833 : vec4<f32> = x_1830.x_AdditionalLightsPosition[x_1831];
    let x_1836 : i32 = u_xlati25;
    let x_1838 : vec4<f32> = x_1830.x_AdditionalLightsPosition[x_1836];
    let x_1840 : vec3<f32> = ((-(x_1819) * vec3<f32>(x_1833.w, x_1833.w, x_1833.w)) + vec3<f32>(x_1838.x, x_1838.y, x_1838.z));
    let x_1841 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1840.x, x_1840.y, x_1840.z, x_1841.w);
    let x_1844 : vec4<f32> = u_xlat7;
    let x_1846 : vec4<f32> = u_xlat7;
    u_xlat44 = dot(vec3<f32>(x_1844.x, x_1844.y, x_1844.z), vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
    let x_1849 : f32 = u_xlat44;
    u_xlat44 = max(x_1849, 6.10351562e-05f);
    let x_1852 : f32 = u_xlat44;
    u_xlat63 = inverseSqrt(x_1852);
    let x_1854 : f32 = u_xlat63;
    let x_1856 : vec4<f32> = u_xlat7;
    let x_1858 : vec3<f32> = (vec3<f32>(x_1854, x_1854, x_1854) * vec3<f32>(x_1856.x, x_1856.y, x_1856.z));
    let x_1859 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);
    let x_1861 : f32 = u_xlat44;
    u_xlat63 = (1.0f / x_1861);
    let x_1863 : f32 = u_xlat44;
    let x_1864 : i32 = u_xlati25;
    let x_1866 : f32 = x_1830.x_AdditionalLightsAttenuation[x_1864].x;
    u_xlat44 = (x_1863 * x_1866);
    let x_1868 : f32 = u_xlat44;
    let x_1870 : f32 = u_xlat44;
    u_xlat44 = ((-(x_1868) * x_1870) + 1.0f);
    let x_1873 : f32 = u_xlat44;
    u_xlat44 = max(x_1873, 0.0f);
    let x_1875 : f32 = u_xlat44;
    let x_1876 : f32 = u_xlat44;
    u_xlat44 = (x_1875 * x_1876);
    let x_1878 : f32 = u_xlat44;
    let x_1879 : f32 = u_xlat63;
    u_xlat44 = (x_1878 * x_1879);
    let x_1881 : i32 = u_xlati25;
    let x_1883 : vec4<f32> = x_1830.x_AdditionalLightsSpotDir[x_1881];
    let x_1885 : vec4<f32> = u_xlat7;
    u_xlat63 = dot(vec3<f32>(x_1883.x, x_1883.y, x_1883.z), vec3<f32>(x_1885.x, x_1885.y, x_1885.z));
    let x_1888 : f32 = u_xlat63;
    let x_1889 : i32 = u_xlati25;
    let x_1891 : f32 = x_1830.x_AdditionalLightsAttenuation[x_1889].z;
    let x_1893 : i32 = u_xlati25;
    let x_1895 : f32 = x_1830.x_AdditionalLightsAttenuation[x_1893].w;
    u_xlat63 = ((x_1888 * x_1891) + x_1895);
    let x_1897 : f32 = u_xlat63;
    u_xlat63 = clamp(x_1897, 0.0f, 1.0f);
    let x_1899 : f32 = u_xlat63;
    let x_1900 : f32 = u_xlat63;
    u_xlat63 = (x_1899 * x_1900);
    let x_1902 : f32 = u_xlat63;
    let x_1903 : f32 = u_xlat44;
    u_xlat44 = (x_1902 * x_1903);
    let x_1905 : vec3<f32> = u_xlat4;
    let x_1907 : i32 = u_xlati25;
    let x_1909 : vec4<f32> = x_1830.x_AdditionalLightsColor[x_1907];
    let x_1911 : vec3<f32> = (vec3<f32>(x_1905.x, x_1905.x, x_1905.x) * vec3<f32>(x_1909.x, x_1909.y, x_1909.z));
    let x_1912 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1911.x, x_1911.y, x_1911.z, x_1912.w);
    let x_1914 : f32 = u_xlat44;
    let x_1916 : vec4<f32> = u_xlat8;
    u_xlat25 = (vec3<f32>(x_1914, x_1914, x_1914) * vec3<f32>(x_1916.x, x_1916.y, x_1916.z));
    let x_1920 : vec3<f32> = u_xlat2;
    let x_1921 : vec4<f32> = u_xlat7;
    u_xlat64 = dot(x_1920, vec3<f32>(x_1921.x, x_1921.y, x_1921.z));
    let x_1924 : f32 = u_xlat64;
    u_xlat64 = clamp(x_1924, 0.0f, 1.0f);
    let x_1926 : vec3<f32> = u_xlat25;
    let x_1927 : f32 = u_xlat64;
    let x_1929 : vec3<f32> = (x_1926 * vec3<f32>(x_1927, x_1927, x_1927));
    let x_1930 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1929.x, x_1929.y, x_1929.z, x_1930.w);
    let x_1932 : vec3<f32> = u_xlat1;
    let x_1933 : f32 = u_xlat58;
    let x_1936 : vec4<f32> = u_xlat7;
    let x_1938 : vec3<f32> = ((x_1932 * vec3<f32>(x_1933, x_1933, x_1933)) + vec3<f32>(x_1936.x, x_1936.y, x_1936.z));
    let x_1939 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1938.x, x_1938.y, x_1938.z, x_1939.w);
    let x_1941 : vec4<f32> = u_xlat7;
    let x_1943 : vec4<f32> = u_xlat7;
    u_xlat64 = dot(vec3<f32>(x_1941.x, x_1941.y, x_1941.z), vec3<f32>(x_1943.x, x_1943.y, x_1943.z));
    let x_1946 : f32 = u_xlat64;
    u_xlat64 = max(x_1946, 1.17549435e-37f);
    let x_1948 : f32 = u_xlat64;
    u_xlat64 = inverseSqrt(x_1948);
    let x_1950 : f32 = u_xlat64;
    let x_1952 : vec4<f32> = u_xlat7;
    let x_1954 : vec3<f32> = (vec3<f32>(x_1950, x_1950, x_1950) * vec3<f32>(x_1952.x, x_1952.y, x_1952.z));
    let x_1955 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1954.x, x_1954.y, x_1954.z, x_1955.w);
    let x_1957 : vec3<f32> = u_xlat2;
    let x_1958 : vec4<f32> = u_xlat7;
    u_xlat7.x = dot(x_1957, vec3<f32>(x_1958.x, x_1958.y, x_1958.z));
    let x_1963 : f32 = u_xlat7.x;
    u_xlat7.x = clamp(x_1963, 0.0f, 1.0f);
    let x_1967 : f32 = u_xlat7.x;
    u_xlat7.x = log2(x_1967);
    let x_1970 : f32 = u_xlat60;
    let x_1972 : f32 = u_xlat7.x;
    u_xlat7.x = (x_1970 * x_1972);
    let x_1976 : f32 = u_xlat7.x;
    u_xlat7.x = exp2(x_1976);
    let x_1979 : vec4<f32> = u_xlat7;
    let x_1982 : vec4<f32> = x_56.x_SpecColor;
    let x_1984 : vec3<f32> = (vec3<f32>(x_1979.x, x_1979.x, x_1979.x) * vec3<f32>(x_1982.x, x_1982.y, x_1982.z));
    let x_1985 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1984.x, x_1984.y, x_1984.z, x_1985.w);
    let x_1987 : vec3<f32> = u_xlat25;
    let x_1988 : vec4<f32> = u_xlat7;
    u_xlat25 = (x_1987 * vec3<f32>(x_1988.x, x_1988.y, x_1988.z));
    let x_1991 : vec4<f32> = u_xlat8;
    let x_1993 : vec4<f32> = u_xlat0;
    let x_1996 : vec3<f32> = u_xlat25;
    u_xlat25 = ((vec3<f32>(x_1991.x, x_1991.y, x_1991.z) * vec3<f32>(x_1993.y, x_1993.z, x_1993.w)) + x_1996);
    let x_1998 : vec3<f32> = u_xlat24;
    let x_1999 : vec3<f32> = u_xlat25;
    u_xlat24 = (x_1998 + x_1999);

    continuing {
      let x_2001 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2001 + bitcast<u32>(1i));
    }
  }
  let x_2004 : vec3<f32> = u_xlat3;
  let x_2005 : vec4<f32> = u_xlat0;
  let x_2008 : vec3<f32> = u_xlat23;
  u_xlat19 = ((x_2004 * vec3<f32>(x_2005.y, x_2005.z, x_2005.w)) + x_2008);
  let x_2010 : vec3<f32> = u_xlat24;
  let x_2011 : vec3<f32> = u_xlat19;
  u_xlat19 = (x_2010 + x_2011);
  let x_2013 : f32 = u_xlat59;
  let x_2014 : f32 = u_xlat59;
  u_xlat1.x = (x_2013 * -(x_2014));
  let x_2019 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2019);
  let x_2022 : vec3<f32> = u_xlat19;
  let x_2025 : vec4<f32> = x_44.unity_FogColor;
  u_xlat19 = (x_2022 + -(vec3<f32>(x_2025.x, x_2025.y, x_2025.z)));
  let x_2031 : vec3<f32> = u_xlat1;
  let x_2033 : vec3<f32> = u_xlat19;
  let x_2036 : vec4<f32> = x_44.unity_FogColor;
  let x_2038 : vec3<f32> = ((vec3<f32>(x_2031.x, x_2031.x, x_2031.x) * x_2033) + vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
  let x_2039 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2038.x, x_2038.y, x_2038.z, x_2039.w);
  let x_2043 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2043 == 1.0f);
  let x_2045 : bool = u_xlatb19;
  if (x_2045) {
    let x_2050 : f32 = u_xlat0.x;
    x_2046 = x_2050;
  } else {
    x_2046 = 1.0f;
  }
  let x_2052 : f32 = x_2046;
  SV_Target0.w = x_2052;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

