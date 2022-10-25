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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

@group(0) @binding(4) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_263 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_1716 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlatb19 : bool;
  var x_100 : f32;
  var u_xlatb1 : bool;
  var u_xlat55 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat56 : f32;
  var u_xlatb21 : bool;
  var u_xlat4 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
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
  var x_1564 : f32;
  var u_xlatu56 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu5 : u32;
  var u_xlati23 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati5 : i32;
  var u_xlat24 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_1898 : f32;
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
  let x_151 : f32 = vs_TEXCOORD1.y;
  let x_154 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat55 = (x_151 * x_154);
  let x_157 : f32 = x_44.unity_MatrixV[0i].z;
  let x_159 : f32 = vs_TEXCOORD1.x;
  let x_161 : f32 = u_xlat55;
  u_xlat55 = ((x_157 * x_159) + x_161);
  let x_164 : f32 = x_44.unity_MatrixV[2i].z;
  let x_166 : f32 = vs_TEXCOORD1.z;
  let x_168 : f32 = u_xlat55;
  u_xlat55 = ((x_164 * x_166) + x_168);
  let x_170 : f32 = u_xlat55;
  let x_173 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat55 = (x_170 + x_173);
  let x_175 : f32 = u_xlat55;
  let x_179 : f32 = x_44.x_ProjectionParams.y;
  u_xlat55 = (-(x_175) + -(x_179));
  let x_182 : f32 = u_xlat55;
  u_xlat55 = max(x_182, 0.0f);
  let x_184 : f32 = u_xlat55;
  let x_187 : f32 = x_44.unity_FogParams.x;
  u_xlat55 = (x_184 * x_187);
  let x_196 : vec2<f32> = vs_TEXCOORD7;
  let x_198 : f32 = x_44.x_GlobalMipBias.x;
  let x_199 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_196, x_198);
  u_xlat2 = vec3<f32>(x_199.x, x_199.y, x_199.z);
  let x_204 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_205 : vec2<f32> = vec2<f32>(x_204.x, x_204.y);
  let x_209 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_205.x, x_205.y));
  let x_210 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_209.x, x_209.y, x_210.z);
  let x_212 : vec3<f32> = u_xlat3;
  let x_214 : vec4<f32> = hlslcc_FragCoord;
  let x_216 : vec2<f32> = (vec2<f32>(x_212.x, x_212.y) * vec2<f32>(x_214.x, x_214.y));
  let x_217 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_216.x, x_216.y, x_217.z);
  let x_221 : f32 = u_xlat3.y;
  let x_224 : f32 = x_44.x_ScaleBiasRt.x;
  let x_227 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat56 = ((x_221 * x_224) + x_227);
  let x_229 : f32 = u_xlat56;
  u_xlat3.z = (-(x_229) + 1.0f);
  let x_238 : vec3<f32> = u_xlat3;
  let x_241 : f32 = x_44.x_GlobalMipBias.x;
  let x_242 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_238.x, x_238.z), x_241);
  u_xlat56 = x_242.x;
  let x_244 : f32 = u_xlat56;
  u_xlat3.x = (x_244 + -1.0f);
  let x_250 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_252 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_250 * x_252) + 1.0f);
  let x_256 : f32 = u_xlat56;
  u_xlat56 = min(x_256, 1.0f);
  let x_265 : f32 = x_263.x_MainLightShadowParams.y;
  u_xlatb21 = (0.0f < x_265);
  let x_267 : bool = u_xlatb21;
  if (x_267) {
    let x_271 : f32 = x_263.x_MainLightShadowParams.y;
    u_xlatb21 = (x_271 == 1.0f);
    let x_273 : bool = u_xlatb21;
    if (x_273) {
      let x_278 : vec4<f32> = vs_TEXCOORD6;
      let x_282 : vec4<f32> = x_263.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_278.x, x_278.y, x_278.x, x_278.y) + x_282);
      let x_285 : vec4<f32> = u_xlat4;
      let x_286 : vec2<f32> = vec2<f32>(x_285.x, x_285.y);
      let x_288 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_286.x, x_286.y, x_288);
      let x_301 : vec3<f32> = txVec0;
      let x_303 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_301.xy, x_301.z);
      u_xlat5.x = x_303;
      let x_306 : vec4<f32> = u_xlat4;
      let x_307 : vec2<f32> = vec2<f32>(x_306.z, x_306.w);
      let x_309 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_307.x, x_307.y, x_309);
      let x_316 : vec3<f32> = txVec1;
      let x_318 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_316.xy, x_316.z);
      u_xlat5.y = x_318;
      let x_320 : vec4<f32> = vs_TEXCOORD6;
      let x_323 : vec4<f32> = x_263.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_320.x, x_320.y, x_320.x, x_320.y) + x_323);
      let x_326 : vec4<f32> = u_xlat4;
      let x_327 : vec2<f32> = vec2<f32>(x_326.x, x_326.y);
      let x_329 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_327.x, x_327.y, x_329);
      let x_336 : vec3<f32> = txVec2;
      let x_338 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_336.xy, x_336.z);
      u_xlat5.z = x_338;
      let x_341 : vec4<f32> = u_xlat4;
      let x_342 : vec2<f32> = vec2<f32>(x_341.z, x_341.w);
      let x_344 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_342.x, x_342.y, x_344);
      let x_351 : vec3<f32> = txVec3;
      let x_353 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_351.xy, x_351.z);
      u_xlat5.w = x_353;
      let x_356 : vec4<f32> = u_xlat5;
      u_xlat21.x = dot(x_356, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_364 : f32 = x_263.x_MainLightShadowParams.y;
      u_xlatb39 = (x_364 == 2.0f);
      let x_367 : bool = u_xlatb39;
      if (x_367) {
        let x_372 : vec4<f32> = vs_TEXCOORD6;
        let x_375 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        u_xlat39 = ((vec2<f32>(x_372.x, x_372.y) * vec2<f32>(x_375.z, x_375.w)) + vec2<f32>(0.5f, 0.5f));
        let x_381 : vec2<f32> = u_xlat39;
        u_xlat39 = floor(x_381);
        let x_383 : vec4<f32> = vs_TEXCOORD6;
        let x_386 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_389 : vec2<f32> = u_xlat39;
        let x_391 : vec2<f32> = ((vec2<f32>(x_383.x, x_383.y) * vec2<f32>(x_386.z, x_386.w)) + -(x_389));
        let x_392 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_391.x, x_391.y, x_392.z, x_392.w);
        let x_394 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_394.x, x_394.x, x_394.y, x_394.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_399 : vec4<f32> = u_xlat5;
        let x_401 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_399.x, x_399.x, x_399.z, x_399.z) * vec4<f32>(x_401.x, x_401.x, x_401.z, x_401.z));
        let x_405 : vec4<f32> = u_xlat6;
        u_xlat40 = (vec2<f32>(x_405.y, x_405.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_410 : vec4<f32> = u_xlat6;
        let x_413 : vec4<f32> = u_xlat4;
        let x_416 : vec2<f32> = ((vec2<f32>(x_410.x, x_410.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_413.x, x_413.y)));
        let x_417 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_416.x, x_417.y, x_416.y, x_417.w);
        let x_419 : vec4<f32> = u_xlat4;
        let x_422 : vec2<f32> = (-(vec2<f32>(x_419.x, x_419.y)) + vec2<f32>(1.0f, 1.0f));
        let x_423 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_422.x, x_422.y, x_423.z, x_423.w);
        let x_426 : vec4<f32> = u_xlat4;
        u_xlat42 = min(vec2<f32>(x_426.x, x_426.y), vec2<f32>(0.0f, 0.0f));
        let x_430 : vec2<f32> = u_xlat42;
        let x_432 : vec2<f32> = u_xlat42;
        let x_434 : vec4<f32> = u_xlat6;
        u_xlat42 = ((-(x_430) * x_432) + vec2<f32>(x_434.x, x_434.y));
        let x_437 : vec4<f32> = u_xlat4;
        let x_439 : vec2<f32> = max(vec2<f32>(x_437.x, x_437.y), vec2<f32>(0.0f, 0.0f));
        let x_440 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_439.x, x_439.y, x_440.z, x_440.w);
        let x_442 : vec4<f32> = u_xlat4;
        let x_445 : vec4<f32> = u_xlat4;
        let x_448 : vec4<f32> = u_xlat5;
        let x_450 : vec2<f32> = ((-(vec2<f32>(x_442.x, x_442.y)) * vec2<f32>(x_445.x, x_445.y)) + vec2<f32>(x_448.y, x_448.w));
        let x_451 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_450.x, x_450.y, x_451.z, x_451.w);
        let x_453 : vec2<f32> = u_xlat42;
        u_xlat42 = (x_453 + vec2<f32>(1.0f, 1.0f));
        let x_455 : vec4<f32> = u_xlat4;
        let x_457 : vec2<f32> = (vec2<f32>(x_455.x, x_455.y) + vec2<f32>(1.0f, 1.0f));
        let x_458 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_457.x, x_457.y, x_458.z, x_458.w);
        let x_461 : vec4<f32> = u_xlat5;
        let x_465 : vec2<f32> = (vec2<f32>(x_461.x, x_461.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_466 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_466.w);
        let x_469 : vec4<f32> = u_xlat6;
        let x_471 : vec2<f32> = (vec2<f32>(x_469.x, x_469.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_472 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
        let x_474 : vec2<f32> = u_xlat42;
        let x_475 : vec2<f32> = (x_474 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_476 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_475.x, x_475.y, x_476.z, x_476.w);
        let x_479 : vec4<f32> = u_xlat4;
        let x_481 : vec2<f32> = (vec2<f32>(x_479.x, x_479.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_482 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_484 : vec4<f32> = u_xlat5;
        let x_486 : vec2<f32> = (vec2<f32>(x_484.y, x_484.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_487 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_486.x, x_486.y, x_487.z, x_487.w);
        let x_490 : f32 = u_xlat6.x;
        u_xlat7.z = x_490;
        let x_493 : f32 = u_xlat4.x;
        u_xlat7.w = x_493;
        let x_496 : f32 = u_xlat9.x;
        u_xlat8.z = x_496;
        let x_499 : f32 = u_xlat40.x;
        u_xlat8.w = x_499;
        let x_501 : vec4<f32> = u_xlat7;
        let x_503 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_501.z, x_501.w, x_501.x, x_501.z) + vec4<f32>(x_503.z, x_503.w, x_503.x, x_503.z));
        let x_507 : f32 = u_xlat7.y;
        u_xlat6.z = x_507;
        let x_510 : f32 = u_xlat4.y;
        u_xlat6.w = x_510;
        let x_513 : f32 = u_xlat8.y;
        u_xlat9.z = x_513;
        let x_516 : f32 = u_xlat40.y;
        u_xlat9.w = x_516;
        let x_518 : vec4<f32> = u_xlat6;
        let x_520 : vec4<f32> = u_xlat9;
        let x_522 : vec3<f32> = (vec3<f32>(x_518.z, x_518.y, x_518.w) + vec3<f32>(x_520.z, x_520.y, x_520.w));
        let x_523 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_522.x, x_522.y, x_522.z, x_523.w);
        let x_525 : vec4<f32> = u_xlat8;
        let x_527 : vec4<f32> = u_xlat5;
        let x_529 : vec3<f32> = (vec3<f32>(x_525.x, x_525.z, x_525.w) / vec3<f32>(x_527.z, x_527.w, x_527.y));
        let x_530 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat6;
        let x_538 : vec3<f32> = (vec3<f32>(x_532.x, x_532.y, x_532.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_539 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
        let x_541 : vec4<f32> = u_xlat9;
        let x_543 : vec4<f32> = u_xlat4;
        let x_545 : vec3<f32> = (vec3<f32>(x_541.z, x_541.y, x_541.w) / vec3<f32>(x_543.x, x_543.y, x_543.z));
        let x_546 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_545.x, x_545.y, x_545.z, x_546.w);
        let x_548 : vec4<f32> = u_xlat7;
        let x_550 : vec3<f32> = (vec3<f32>(x_548.x, x_548.y, x_548.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_551 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_550.x, x_550.y, x_550.z, x_551.w);
        let x_553 : vec4<f32> = u_xlat6;
        let x_556 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_558 : vec3<f32> = (vec3<f32>(x_553.y, x_553.x, x_553.z) * vec3<f32>(x_556.x, x_556.x, x_556.x));
        let x_559 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
        let x_561 : vec4<f32> = u_xlat7;
        let x_564 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_566 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) * vec3<f32>(x_564.y, x_564.y, x_564.y));
        let x_567 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_566.x, x_566.y, x_566.z, x_567.w);
        let x_570 : f32 = u_xlat7.x;
        u_xlat6.w = x_570;
        let x_572 : vec2<f32> = u_xlat39;
        let x_575 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_578 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_572.x, x_572.y, x_572.x, x_572.y) * vec4<f32>(x_575.x, x_575.y, x_575.x, x_575.y)) + vec4<f32>(x_578.y, x_578.w, x_578.x, x_578.w));
        let x_581 : vec2<f32> = u_xlat39;
        let x_583 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_586 : vec4<f32> = u_xlat6;
        let x_588 : vec2<f32> = ((x_581 * vec2<f32>(x_583.x, x_583.y)) + vec2<f32>(x_586.z, x_586.w));
        let x_589 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_588.x, x_588.y, x_589.z, x_589.w);
        let x_592 : f32 = u_xlat6.y;
        u_xlat7.w = x_592;
        let x_594 : vec4<f32> = u_xlat7;
        let x_595 : vec2<f32> = vec2<f32>(x_594.y, x_594.z);
        let x_596 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_596.x, x_595.x, x_596.z, x_595.y);
        let x_599 : vec2<f32> = u_xlat39;
        let x_602 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_605 : vec4<f32> = u_xlat6;
        u_xlat10 = ((vec4<f32>(x_599.x, x_599.y, x_599.x, x_599.y) * vec4<f32>(x_602.x, x_602.y, x_602.x, x_602.y)) + vec4<f32>(x_605.x, x_605.y, x_605.z, x_605.y));
        let x_608 : vec2<f32> = u_xlat39;
        let x_611 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_614 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_608.x, x_608.y, x_608.x, x_608.y) * vec4<f32>(x_611.x, x_611.y, x_611.x, x_611.y)) + vec4<f32>(x_614.w, x_614.y, x_614.w, x_614.z));
        let x_617 : vec2<f32> = u_xlat39;
        let x_620 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_623 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_617.x, x_617.y, x_617.x, x_617.y) * vec4<f32>(x_620.x, x_620.y, x_620.x, x_620.y)) + vec4<f32>(x_623.x, x_623.w, x_623.z, x_623.w));
        let x_627 : vec4<f32> = u_xlat4;
        let x_629 : vec4<f32> = u_xlat5;
        u_xlat11 = (vec4<f32>(x_627.x, x_627.x, x_627.x, x_627.y) * vec4<f32>(x_629.z, x_629.w, x_629.y, x_629.z));
        let x_633 : vec4<f32> = u_xlat4;
        let x_635 : vec4<f32> = u_xlat5;
        u_xlat12 = (vec4<f32>(x_633.y, x_633.y, x_633.z, x_633.z) * x_635);
        let x_638 : f32 = u_xlat4.z;
        let x_640 : f32 = u_xlat5.y;
        u_xlat39.x = (x_638 * x_640);
        let x_644 : vec4<f32> = u_xlat8;
        let x_645 : vec2<f32> = vec2<f32>(x_644.x, x_644.y);
        let x_647 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_645.x, x_645.y, x_647);
        let x_655 : vec3<f32> = txVec4;
        let x_657 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_655.xy, x_655.z);
        u_xlat57 = x_657;
        let x_659 : vec4<f32> = u_xlat8;
        let x_660 : vec2<f32> = vec2<f32>(x_659.z, x_659.w);
        let x_662 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_660.x, x_660.y, x_662);
        let x_669 : vec3<f32> = txVec5;
        let x_671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_669.xy, x_669.z);
        u_xlat4.x = x_671;
        let x_674 : f32 = u_xlat4.x;
        let x_676 : f32 = u_xlat11.y;
        u_xlat4.x = (x_674 * x_676);
        let x_680 : f32 = u_xlat11.x;
        let x_681 : f32 = u_xlat57;
        let x_684 : f32 = u_xlat4.x;
        u_xlat57 = ((x_680 * x_681) + x_684);
        let x_687 : vec4<f32> = u_xlat9;
        let x_688 : vec2<f32> = vec2<f32>(x_687.x, x_687.y);
        let x_690 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_688.x, x_688.y, x_690);
        let x_697 : vec3<f32> = txVec6;
        let x_699 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_697.xy, x_697.z);
        u_xlat4.x = x_699;
        let x_702 : f32 = u_xlat11.z;
        let x_704 : f32 = u_xlat4.x;
        let x_706 : f32 = u_xlat57;
        u_xlat57 = ((x_702 * x_704) + x_706);
        let x_709 : vec4<f32> = u_xlat7;
        let x_710 : vec2<f32> = vec2<f32>(x_709.x, x_709.y);
        let x_712 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_710.x, x_710.y, x_712);
        let x_719 : vec3<f32> = txVec7;
        let x_721 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_719.xy, x_719.z);
        u_xlat4.x = x_721;
        let x_724 : f32 = u_xlat11.w;
        let x_726 : f32 = u_xlat4.x;
        let x_728 : f32 = u_xlat57;
        u_xlat57 = ((x_724 * x_726) + x_728);
        let x_731 : vec4<f32> = u_xlat10;
        let x_732 : vec2<f32> = vec2<f32>(x_731.x, x_731.y);
        let x_734 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_732.x, x_732.y, x_734);
        let x_741 : vec3<f32> = txVec8;
        let x_743 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_741.xy, x_741.z);
        u_xlat4.x = x_743;
        let x_746 : f32 = u_xlat12.x;
        let x_748 : f32 = u_xlat4.x;
        let x_750 : f32 = u_xlat57;
        u_xlat57 = ((x_746 * x_748) + x_750);
        let x_753 : vec4<f32> = u_xlat10;
        let x_754 : vec2<f32> = vec2<f32>(x_753.z, x_753.w);
        let x_756 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_754.x, x_754.y, x_756);
        let x_763 : vec3<f32> = txVec9;
        let x_765 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_763.xy, x_763.z);
        u_xlat4.x = x_765;
        let x_768 : f32 = u_xlat12.y;
        let x_770 : f32 = u_xlat4.x;
        let x_772 : f32 = u_xlat57;
        u_xlat57 = ((x_768 * x_770) + x_772);
        let x_775 : vec4<f32> = u_xlat7;
        let x_776 : vec2<f32> = vec2<f32>(x_775.z, x_775.w);
        let x_778 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_776.x, x_776.y, x_778);
        let x_785 : vec3<f32> = txVec10;
        let x_787 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_785.xy, x_785.z);
        u_xlat4.x = x_787;
        let x_790 : f32 = u_xlat12.z;
        let x_792 : f32 = u_xlat4.x;
        let x_794 : f32 = u_xlat57;
        u_xlat57 = ((x_790 * x_792) + x_794);
        let x_797 : vec4<f32> = u_xlat6;
        let x_798 : vec2<f32> = vec2<f32>(x_797.x, x_797.y);
        let x_800 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_798.x, x_798.y, x_800);
        let x_807 : vec3<f32> = txVec11;
        let x_809 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_807.xy, x_807.z);
        u_xlat4.x = x_809;
        let x_812 : f32 = u_xlat12.w;
        let x_814 : f32 = u_xlat4.x;
        let x_816 : f32 = u_xlat57;
        u_xlat57 = ((x_812 * x_814) + x_816);
        let x_819 : vec4<f32> = u_xlat6;
        let x_820 : vec2<f32> = vec2<f32>(x_819.z, x_819.w);
        let x_822 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_820.x, x_820.y, x_822);
        let x_829 : vec3<f32> = txVec12;
        let x_831 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_829.xy, x_829.z);
        u_xlat4.x = x_831;
        let x_834 : f32 = u_xlat39.x;
        let x_836 : f32 = u_xlat4.x;
        let x_838 : f32 = u_xlat57;
        u_xlat21.x = ((x_834 * x_836) + x_838);
      } else {
        let x_842 : vec4<f32> = vs_TEXCOORD6;
        let x_845 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        u_xlat39 = ((vec2<f32>(x_842.x, x_842.y) * vec2<f32>(x_845.z, x_845.w)) + vec2<f32>(0.5f, 0.5f));
        let x_849 : vec2<f32> = u_xlat39;
        u_xlat39 = floor(x_849);
        let x_851 : vec4<f32> = vs_TEXCOORD6;
        let x_854 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_857 : vec2<f32> = u_xlat39;
        let x_859 : vec2<f32> = ((vec2<f32>(x_851.x, x_851.y) * vec2<f32>(x_854.z, x_854.w)) + -(x_857));
        let x_860 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_859.x, x_859.y, x_860.z, x_860.w);
        let x_862 : vec4<f32> = u_xlat4;
        u_xlat5 = (vec4<f32>(x_862.x, x_862.x, x_862.y, x_862.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_865 : vec4<f32> = u_xlat5;
        let x_867 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_865.x, x_865.x, x_865.z, x_865.z) * vec4<f32>(x_867.x, x_867.x, x_867.z, x_867.z));
        let x_870 : vec4<f32> = u_xlat6;
        let x_874 : vec2<f32> = (vec2<f32>(x_870.y, x_870.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_875 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_875.x, x_874.x, x_875.z, x_874.y);
        let x_877 : vec4<f32> = u_xlat6;
        let x_880 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_877.x, x_877.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_880.x, x_880.y)));
        let x_884 : vec4<f32> = u_xlat4;
        let x_887 : vec2<f32> = (-(vec2<f32>(x_884.x, x_884.y)) + vec2<f32>(1.0f, 1.0f));
        let x_888 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_887.x, x_888.y, x_887.y, x_888.w);
        let x_890 : vec4<f32> = u_xlat4;
        let x_892 : vec2<f32> = min(vec2<f32>(x_890.x, x_890.y), vec2<f32>(0.0f, 0.0f));
        let x_893 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
        let x_895 : vec4<f32> = u_xlat6;
        let x_898 : vec4<f32> = u_xlat6;
        let x_901 : vec4<f32> = u_xlat5;
        let x_903 : vec2<f32> = ((-(vec2<f32>(x_895.x, x_895.y)) * vec2<f32>(x_898.x, x_898.y)) + vec2<f32>(x_901.x, x_901.z));
        let x_904 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_903.x, x_904.y, x_903.y, x_904.w);
        let x_906 : vec4<f32> = u_xlat4;
        let x_908 : vec2<f32> = max(vec2<f32>(x_906.x, x_906.y), vec2<f32>(0.0f, 0.0f));
        let x_909 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_908.x, x_908.y, x_909.z, x_909.w);
        let x_911 : vec4<f32> = u_xlat6;
        let x_914 : vec4<f32> = u_xlat6;
        let x_917 : vec4<f32> = u_xlat5;
        let x_919 : vec2<f32> = ((-(vec2<f32>(x_911.x, x_911.y)) * vec2<f32>(x_914.x, x_914.y)) + vec2<f32>(x_917.y, x_917.w));
        let x_920 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_920.x, x_919.x, x_920.z, x_919.y);
        let x_922 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_922 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_926 : f32 = u_xlat5.y;
        u_xlat6.z = (x_926 * 0.081632003f);
        let x_930 : vec2<f32> = u_xlat40;
        let x_933 : vec2<f32> = (vec2<f32>(x_930.y, x_930.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_934 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_933.x, x_933.y, x_934.z, x_934.w);
        let x_936 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_936.x, x_936.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_940 : f32 = u_xlat5.w;
        u_xlat8.z = (x_940 * 0.081632003f);
        let x_944 : f32 = u_xlat8.y;
        u_xlat6.x = x_944;
        let x_946 : vec4<f32> = u_xlat4;
        let x_953 : vec2<f32> = ((vec2<f32>(x_946.x, x_946.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_954 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_954.x, x_953.x, x_954.z, x_953.y);
        let x_956 : vec4<f32> = u_xlat4;
        let x_960 : vec2<f32> = ((vec2<f32>(x_956.x, x_956.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_961 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_960.x, x_961.y, x_960.y, x_961.w);
        let x_964 : f32 = u_xlat40.x;
        u_xlat5.y = x_964;
        let x_967 : f32 = u_xlat7.y;
        u_xlat5.w = x_967;
        let x_969 : vec4<f32> = u_xlat5;
        let x_970 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_969 + x_970);
        let x_972 : vec4<f32> = u_xlat4;
        let x_975 : vec2<f32> = ((vec2<f32>(x_972.y, x_972.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_976 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_976.x, x_975.x, x_976.z, x_975.y);
        let x_978 : vec4<f32> = u_xlat4;
        let x_981 : vec2<f32> = ((vec2<f32>(x_978.y, x_978.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_982 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_981.x, x_982.y, x_981.y, x_982.w);
        let x_985 : f32 = u_xlat40.y;
        u_xlat7.y = x_985;
        let x_987 : vec4<f32> = u_xlat7;
        let x_988 : vec4<f32> = u_xlat8;
        u_xlat4 = (x_987 + x_988);
        let x_990 : vec4<f32> = u_xlat5;
        let x_991 : vec4<f32> = u_xlat6;
        u_xlat5 = (x_990 / x_991);
        let x_993 : vec4<f32> = u_xlat5;
        u_xlat5 = (x_993 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_999 : vec4<f32> = u_xlat7;
        let x_1000 : vec4<f32> = u_xlat4;
        u_xlat7 = (x_999 / x_1000);
        let x_1002 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1002 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1004 : vec4<f32> = u_xlat5;
        let x_1007 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        u_xlat5 = (vec4<f32>(x_1004.w, x_1004.x, x_1004.y, x_1004.z) * vec4<f32>(x_1007.x, x_1007.x, x_1007.x, x_1007.x));
        let x_1010 : vec4<f32> = u_xlat7;
        let x_1013 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1010.x, x_1010.w, x_1010.y, x_1010.z) * vec4<f32>(x_1013.y, x_1013.y, x_1013.y, x_1013.y));
        let x_1016 : vec4<f32> = u_xlat5;
        let x_1017 : vec3<f32> = vec3<f32>(x_1016.y, x_1016.z, x_1016.w);
        let x_1018 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1017.x, x_1018.y, x_1017.y, x_1017.z);
        let x_1021 : f32 = u_xlat7.x;
        u_xlat8.y = x_1021;
        let x_1023 : vec2<f32> = u_xlat39;
        let x_1026 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_1029 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1023.x, x_1023.y, x_1023.x, x_1023.y) * vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y)) + vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1029.y));
        let x_1032 : vec2<f32> = u_xlat39;
        let x_1034 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_1037 : vec4<f32> = u_xlat8;
        let x_1039 : vec2<f32> = ((x_1032 * vec2<f32>(x_1034.x, x_1034.y)) + vec2<f32>(x_1037.w, x_1037.y));
        let x_1040 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1039.x, x_1039.y, x_1040.z, x_1040.w);
        let x_1043 : f32 = u_xlat8.y;
        u_xlat5.y = x_1043;
        let x_1046 : f32 = u_xlat7.z;
        u_xlat8.y = x_1046;
        let x_1048 : vec2<f32> = u_xlat39;
        let x_1051 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_1054 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_1048.x, x_1048.y, x_1048.x, x_1048.y) * vec4<f32>(x_1051.x, x_1051.y, x_1051.x, x_1051.y)) + vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1054.y));
        let x_1058 : vec2<f32> = u_xlat39;
        let x_1060 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_1063 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1058 * vec2<f32>(x_1060.x, x_1060.y)) + vec2<f32>(x_1063.w, x_1063.y));
        let x_1067 : f32 = u_xlat8.y;
        u_xlat5.z = x_1067;
        let x_1069 : vec2<f32> = u_xlat39;
        let x_1072 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_1075 : vec4<f32> = u_xlat5;
        u_xlat12 = ((vec4<f32>(x_1069.x, x_1069.y, x_1069.x, x_1069.y) * vec4<f32>(x_1072.x, x_1072.y, x_1072.x, x_1072.y)) + vec4<f32>(x_1075.x, x_1075.y, x_1075.x, x_1075.z));
        let x_1079 : f32 = u_xlat7.w;
        u_xlat8.y = x_1079;
        let x_1082 : vec2<f32> = u_xlat39;
        let x_1085 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_1088 : vec4<f32> = u_xlat8;
        u_xlat13 = ((vec4<f32>(x_1082.x, x_1082.y, x_1082.x, x_1082.y) * vec4<f32>(x_1085.x, x_1085.y, x_1085.x, x_1085.y)) + vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1088.y));
        let x_1092 : vec2<f32> = u_xlat39;
        let x_1094 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_1097 : vec4<f32> = u_xlat8;
        let x_1099 : vec2<f32> = ((x_1092 * vec2<f32>(x_1094.x, x_1094.y)) + vec2<f32>(x_1097.w, x_1097.y));
        let x_1100 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1099.x, x_1099.y, x_1100.z);
        let x_1103 : f32 = u_xlat8.y;
        u_xlat5.w = x_1103;
        let x_1106 : vec2<f32> = u_xlat39;
        let x_1108 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_1111 : vec4<f32> = u_xlat5;
        u_xlat14 = ((x_1106 * vec2<f32>(x_1108.x, x_1108.y)) + vec2<f32>(x_1111.x, x_1111.w));
        let x_1114 : vec4<f32> = u_xlat8;
        let x_1115 : vec3<f32> = vec3<f32>(x_1114.x, x_1114.z, x_1114.w);
        let x_1116 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1115.x, x_1116.y, x_1115.y, x_1115.z);
        let x_1118 : vec2<f32> = u_xlat39;
        let x_1121 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_1124 : vec4<f32> = u_xlat7;
        u_xlat8 = ((vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y) * vec4<f32>(x_1121.x, x_1121.y, x_1121.x, x_1121.y)) + vec4<f32>(x_1124.x, x_1124.y, x_1124.z, x_1124.y));
        let x_1128 : vec2<f32> = u_xlat39;
        let x_1130 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_1133 : vec4<f32> = u_xlat7;
        u_xlat43 = ((x_1128 * vec2<f32>(x_1130.x, x_1130.y)) + vec2<f32>(x_1133.w, x_1133.y));
        let x_1137 : f32 = u_xlat5.x;
        u_xlat7.x = x_1137;
        let x_1139 : vec2<f32> = u_xlat39;
        let x_1141 : vec4<f32> = x_263.x_MainLightShadowmapSize;
        let x_1144 : vec4<f32> = u_xlat7;
        u_xlat39 = ((x_1139 * vec2<f32>(x_1141.x, x_1141.y)) + vec2<f32>(x_1144.x, x_1144.y));
        let x_1148 : vec4<f32> = u_xlat4;
        let x_1150 : vec4<f32> = u_xlat6;
        u_xlat15 = (vec4<f32>(x_1148.x, x_1148.x, x_1148.x, x_1148.x) * x_1150);
        let x_1153 : vec4<f32> = u_xlat4;
        let x_1155 : vec4<f32> = u_xlat6;
        u_xlat16 = (vec4<f32>(x_1153.y, x_1153.y, x_1153.y, x_1153.y) * x_1155);
        let x_1158 : vec4<f32> = u_xlat4;
        let x_1160 : vec4<f32> = u_xlat6;
        u_xlat17 = (vec4<f32>(x_1158.z, x_1158.z, x_1158.z, x_1158.z) * x_1160);
        let x_1162 : vec4<f32> = u_xlat4;
        let x_1164 : vec4<f32> = u_xlat6;
        u_xlat4 = (vec4<f32>(x_1162.w, x_1162.w, x_1162.w, x_1162.w) * x_1164);
        let x_1167 : vec4<f32> = u_xlat9;
        let x_1168 : vec2<f32> = vec2<f32>(x_1167.x, x_1167.y);
        let x_1170 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1168.x, x_1168.y, x_1170);
        let x_1177 : vec3<f32> = txVec13;
        let x_1179 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1177.xy, x_1177.z);
        u_xlat5.x = x_1179;
        let x_1182 : vec4<f32> = u_xlat9;
        let x_1183 : vec2<f32> = vec2<f32>(x_1182.z, x_1182.w);
        let x_1185 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1183.x, x_1183.y, x_1185);
        let x_1193 : vec3<f32> = txVec14;
        let x_1195 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1193.xy, x_1193.z);
        u_xlat59 = x_1195;
        let x_1196 : f32 = u_xlat59;
        let x_1198 : f32 = u_xlat15.y;
        u_xlat59 = (x_1196 * x_1198);
        let x_1201 : f32 = u_xlat15.x;
        let x_1203 : f32 = u_xlat5.x;
        let x_1205 : f32 = u_xlat59;
        u_xlat5.x = ((x_1201 * x_1203) + x_1205);
        let x_1209 : vec4<f32> = u_xlat10;
        let x_1210 : vec2<f32> = vec2<f32>(x_1209.x, x_1209.y);
        let x_1212 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1210.x, x_1210.y, x_1212);
        let x_1219 : vec3<f32> = txVec15;
        let x_1221 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1219.xy, x_1219.z);
        u_xlat59 = x_1221;
        let x_1223 : f32 = u_xlat15.z;
        let x_1224 : f32 = u_xlat59;
        let x_1227 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1223 * x_1224) + x_1227);
        let x_1231 : vec4<f32> = u_xlat12;
        let x_1232 : vec2<f32> = vec2<f32>(x_1231.x, x_1231.y);
        let x_1234 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1232.x, x_1232.y, x_1234);
        let x_1241 : vec3<f32> = txVec16;
        let x_1243 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1241.xy, x_1241.z);
        u_xlat59 = x_1243;
        let x_1245 : f32 = u_xlat15.w;
        let x_1246 : f32 = u_xlat59;
        let x_1249 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1245 * x_1246) + x_1249);
        let x_1253 : vec4<f32> = u_xlat11;
        let x_1254 : vec2<f32> = vec2<f32>(x_1253.x, x_1253.y);
        let x_1256 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1254.x, x_1254.y, x_1256);
        let x_1263 : vec3<f32> = txVec17;
        let x_1265 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1263.xy, x_1263.z);
        u_xlat59 = x_1265;
        let x_1267 : f32 = u_xlat16.x;
        let x_1268 : f32 = u_xlat59;
        let x_1271 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1267 * x_1268) + x_1271);
        let x_1275 : vec4<f32> = u_xlat11;
        let x_1276 : vec2<f32> = vec2<f32>(x_1275.z, x_1275.w);
        let x_1278 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1276.x, x_1276.y, x_1278);
        let x_1285 : vec3<f32> = txVec18;
        let x_1287 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1285.xy, x_1285.z);
        u_xlat59 = x_1287;
        let x_1289 : f32 = u_xlat16.y;
        let x_1290 : f32 = u_xlat59;
        let x_1293 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1289 * x_1290) + x_1293);
        let x_1297 : vec2<f32> = u_xlat46;
        let x_1299 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1297.x, x_1297.y, x_1299);
        let x_1306 : vec3<f32> = txVec19;
        let x_1308 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1306.xy, x_1306.z);
        u_xlat59 = x_1308;
        let x_1310 : f32 = u_xlat16.z;
        let x_1311 : f32 = u_xlat59;
        let x_1314 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1310 * x_1311) + x_1314);
        let x_1318 : vec4<f32> = u_xlat12;
        let x_1319 : vec2<f32> = vec2<f32>(x_1318.z, x_1318.w);
        let x_1321 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1319.x, x_1319.y, x_1321);
        let x_1328 : vec3<f32> = txVec20;
        let x_1330 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1328.xy, x_1328.z);
        u_xlat59 = x_1330;
        let x_1332 : f32 = u_xlat16.w;
        let x_1333 : f32 = u_xlat59;
        let x_1336 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1332 * x_1333) + x_1336);
        let x_1340 : vec4<f32> = u_xlat13;
        let x_1341 : vec2<f32> = vec2<f32>(x_1340.x, x_1340.y);
        let x_1343 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1341.x, x_1341.y, x_1343);
        let x_1350 : vec3<f32> = txVec21;
        let x_1352 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1350.xy, x_1350.z);
        u_xlat59 = x_1352;
        let x_1354 : f32 = u_xlat17.x;
        let x_1355 : f32 = u_xlat59;
        let x_1358 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1354 * x_1355) + x_1358);
        let x_1362 : vec4<f32> = u_xlat13;
        let x_1363 : vec2<f32> = vec2<f32>(x_1362.z, x_1362.w);
        let x_1365 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1363.x, x_1363.y, x_1365);
        let x_1372 : vec3<f32> = txVec22;
        let x_1374 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1372.xy, x_1372.z);
        u_xlat59 = x_1374;
        let x_1376 : f32 = u_xlat17.y;
        let x_1377 : f32 = u_xlat59;
        let x_1380 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1376 * x_1377) + x_1380);
        let x_1384 : vec3<f32> = u_xlat23;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.x, x_1384.y);
        let x_1387 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec23;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1394.xy, x_1394.z);
        u_xlat23.x = x_1396;
        let x_1399 : f32 = u_xlat17.z;
        let x_1401 : f32 = u_xlat23.x;
        let x_1404 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1399 * x_1401) + x_1404);
        let x_1408 : vec2<f32> = u_xlat14;
        let x_1410 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1408.x, x_1408.y, x_1410);
        let x_1417 : vec3<f32> = txVec24;
        let x_1419 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1417.xy, x_1417.z);
        u_xlat23.x = x_1419;
        let x_1422 : f32 = u_xlat17.w;
        let x_1424 : f32 = u_xlat23.x;
        let x_1427 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1422 * x_1424) + x_1427);
        let x_1431 : vec4<f32> = u_xlat8;
        let x_1432 : vec2<f32> = vec2<f32>(x_1431.x, x_1431.y);
        let x_1434 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1432.x, x_1432.y, x_1434);
        let x_1441 : vec3<f32> = txVec25;
        let x_1443 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1441.xy, x_1441.z);
        u_xlat23.x = x_1443;
        let x_1446 : f32 = u_xlat4.x;
        let x_1448 : f32 = u_xlat23.x;
        let x_1451 : f32 = u_xlat5.x;
        u_xlat4.x = ((x_1446 * x_1448) + x_1451);
        let x_1455 : vec4<f32> = u_xlat8;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.z, x_1455.w);
        let x_1458 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec26;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1465.xy, x_1465.z);
        u_xlat5.x = x_1467;
        let x_1470 : f32 = u_xlat4.y;
        let x_1472 : f32 = u_xlat5.x;
        let x_1475 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_1470 * x_1472) + x_1475);
        let x_1479 : vec2<f32> = u_xlat43;
        let x_1481 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1489 : vec3<f32> = txVec27;
        let x_1491 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1489.xy, x_1489.z);
        u_xlat22 = x_1491;
        let x_1493 : f32 = u_xlat4.z;
        let x_1494 : f32 = u_xlat22;
        let x_1497 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_1493 * x_1494) + x_1497);
        let x_1501 : vec2<f32> = u_xlat39;
        let x_1503 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec28;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1510.xy, x_1510.z);
        u_xlat39.x = x_1512;
        let x_1515 : f32 = u_xlat4.w;
        let x_1517 : f32 = u_xlat39.x;
        let x_1520 : f32 = u_xlat4.x;
        u_xlat21.x = ((x_1515 * x_1517) + x_1520);
      }
    }
  } else {
    let x_1525 : vec4<f32> = vs_TEXCOORD6;
    let x_1526 : vec2<f32> = vec2<f32>(x_1525.x, x_1525.y);
    let x_1528 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1526.x, x_1526.y, x_1528);
    let x_1535 : vec3<f32> = txVec29;
    let x_1537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1535.xy, x_1535.z);
    u_xlat21.x = x_1537;
  }
  let x_1540 : f32 = x_263.x_MainLightShadowParams.x;
  u_xlat39.x = (-(x_1540) + 1.0f);
  let x_1545 : f32 = u_xlat21.x;
  let x_1547 : f32 = x_263.x_MainLightShadowParams.x;
  let x_1550 : f32 = u_xlat39.x;
  u_xlat21.x = ((x_1545 * x_1547) + x_1550);
  let x_1554 : f32 = vs_TEXCOORD6.z;
  u_xlatb39 = (0.0f >= x_1554);
  let x_1558 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (x_1558 >= 1.0f);
  let x_1560 : bool = u_xlatb57;
  let x_1561 : bool = u_xlatb39;
  u_xlatb39 = (x_1560 | x_1561);
  let x_1563 : bool = u_xlatb39;
  if (x_1563) {
    x_1564 = 1.0f;
  } else {
    let x_1569 : f32 = u_xlat21.x;
    x_1564 = x_1569;
  }
  let x_1570 : f32 = x_1564;
  u_xlat21.x = x_1570;
  let x_1572 : vec3<f32> = vs_TEXCOORD1;
  let x_1575 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1577 : vec3<f32> = (x_1572 + -(x_1575));
  let x_1578 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1577.x, x_1577.y, x_1577.z, x_1578.w);
  let x_1580 : vec4<f32> = u_xlat4;
  let x_1582 : vec4<f32> = u_xlat4;
  u_xlat39.x = dot(vec3<f32>(x_1580.x, x_1580.y, x_1580.z), vec3<f32>(x_1582.x, x_1582.y, x_1582.z));
  let x_1587 : f32 = u_xlat39.x;
  let x_1589 : f32 = x_263.x_MainLightShadowParams.z;
  let x_1592 : f32 = x_263.x_MainLightShadowParams.w;
  u_xlat39.x = ((x_1587 * x_1589) + x_1592);
  let x_1596 : f32 = u_xlat39.x;
  u_xlat39.x = clamp(x_1596, 0.0f, 1.0f);
  let x_1600 : f32 = u_xlat21.x;
  u_xlat57 = (-(x_1600) + 1.0f);
  let x_1604 : f32 = u_xlat39.x;
  let x_1605 : f32 = u_xlat57;
  let x_1608 : f32 = u_xlat21.x;
  u_xlat21.x = ((x_1604 * x_1605) + x_1608);
  let x_1611 : vec3<f32> = u_xlat3;
  let x_1614 : vec4<f32> = x_44.x_MainLightColor;
  let x_1616 : vec3<f32> = (vec3<f32>(x_1611.x, x_1611.x, x_1611.x) * vec3<f32>(x_1614.x, x_1614.y, x_1614.z));
  let x_1617 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1616.x, x_1616.y, x_1616.z, x_1617.w);
  let x_1619 : f32 = u_xlat56;
  let x_1621 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_1619, x_1619, x_1619) * x_1621);
  let x_1624 : f32 = u_xlat21.x;
  let x_1627 : f32 = x_93.unity_LightData.z;
  u_xlat56 = (x_1624 * x_1627);
  let x_1629 : f32 = u_xlat56;
  let x_1631 : vec4<f32> = u_xlat4;
  u_xlat21 = (vec3<f32>(x_1629, x_1629, x_1629) * vec3<f32>(x_1631.x, x_1631.y, x_1631.z));
  let x_1634 : vec3<f32> = u_xlat1;
  let x_1636 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat56 = dot(x_1634, vec3<f32>(x_1636.x, x_1636.y, x_1636.z));
  let x_1639 : f32 = u_xlat56;
  u_xlat56 = clamp(x_1639, 0.0f, 1.0f);
  let x_1641 : f32 = u_xlat56;
  let x_1643 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1641, x_1641, x_1641) * x_1643);
  let x_1645 : vec4<f32> = u_xlat0;
  let x_1647 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_1645.y, x_1645.z, x_1645.w) * x_1647);
  let x_1650 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1652 : f32 = x_93.unity_LightData.y;
  u_xlat56 = min(x_1650, x_1652);
  let x_1656 : f32 = u_xlat56;
  u_xlatu56 = bitcast<u32>(i32(x_1656));
  u_xlat4.x = 0.0f;
  u_xlat4.y = 0.0f;
  u_xlat4.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1668 : u32 = u_xlatu_loop_1;
    let x_1669 : u32 = u_xlatu56;
    if ((x_1668 < x_1669)) {
    } else {
      break;
    }
    let x_1672 : u32 = u_xlatu_loop_1;
    u_xlatu5 = (x_1672 >> 2u);
    let x_1676 : u32 = u_xlatu_loop_1;
    u_xlati23 = bitcast<i32>((x_1676 & 3u));
    let x_1679 : u32 = u_xlatu5;
    let x_1682 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_1679)];
    let x_1692 : i32 = u_xlati23;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1697 : vec4<u32> = indexable[x_1692];
    u_xlat5.x = dot(x_1682, bitcast<vec4<f32>>(x_1697));
    let x_1703 : f32 = u_xlat5.x;
    u_xlati5 = i32(x_1703);
    let x_1705 : vec3<f32> = vs_TEXCOORD1;
    let x_1717 : i32 = u_xlati5;
    let x_1719 : vec4<f32> = x_1716.x_AdditionalLightsPosition[x_1717];
    let x_1722 : i32 = u_xlati5;
    let x_1724 : vec4<f32> = x_1716.x_AdditionalLightsPosition[x_1722];
    u_xlat23 = ((-(x_1705) * vec3<f32>(x_1719.w, x_1719.w, x_1719.w)) + vec3<f32>(x_1724.x, x_1724.y, x_1724.z));
    let x_1727 : vec3<f32> = u_xlat23;
    let x_1728 : vec3<f32> = u_xlat23;
    u_xlat6.x = dot(x_1727, x_1728);
    let x_1732 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1732, 6.10351562e-05f);
    let x_1738 : f32 = u_xlat6.x;
    u_xlat24.x = inverseSqrt(x_1738);
    let x_1741 : vec3<f32> = u_xlat23;
    let x_1742 : vec3<f32> = u_xlat24;
    u_xlat23 = (x_1741 * vec3<f32>(x_1742.x, x_1742.x, x_1742.x));
    let x_1746 : f32 = u_xlat6.x;
    u_xlat24.x = (1.0f / x_1746);
    let x_1750 : f32 = u_xlat6.x;
    let x_1751 : i32 = u_xlati5;
    let x_1753 : f32 = x_1716.x_AdditionalLightsAttenuation[x_1751].x;
    u_xlat6.x = (x_1750 * x_1753);
    let x_1757 : f32 = u_xlat6.x;
    let x_1760 : f32 = u_xlat6.x;
    u_xlat6.x = ((-(x_1757) * x_1760) + 1.0f);
    let x_1765 : f32 = u_xlat6.x;
    u_xlat6.x = max(x_1765, 0.0f);
    let x_1769 : f32 = u_xlat6.x;
    let x_1771 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1769 * x_1771);
    let x_1775 : f32 = u_xlat6.x;
    let x_1777 : f32 = u_xlat24.x;
    u_xlat6.x = (x_1775 * x_1777);
    let x_1780 : i32 = u_xlati5;
    let x_1782 : vec4<f32> = x_1716.x_AdditionalLightsSpotDir[x_1780];
    let x_1784 : vec3<f32> = u_xlat23;
    u_xlat24.x = dot(vec3<f32>(x_1782.x, x_1782.y, x_1782.z), x_1784);
    let x_1788 : f32 = u_xlat24.x;
    let x_1789 : i32 = u_xlati5;
    let x_1791 : f32 = x_1716.x_AdditionalLightsAttenuation[x_1789].z;
    let x_1793 : i32 = u_xlati5;
    let x_1795 : f32 = x_1716.x_AdditionalLightsAttenuation[x_1793].w;
    u_xlat24.x = ((x_1788 * x_1791) + x_1795);
    let x_1799 : f32 = u_xlat24.x;
    u_xlat24.x = clamp(x_1799, 0.0f, 1.0f);
    let x_1803 : f32 = u_xlat24.x;
    let x_1805 : f32 = u_xlat24.x;
    u_xlat24.x = (x_1803 * x_1805);
    let x_1809 : f32 = u_xlat24.x;
    let x_1811 : f32 = u_xlat6.x;
    u_xlat6.x = (x_1809 * x_1811);
    let x_1814 : vec3<f32> = u_xlat3;
    let x_1816 : i32 = u_xlati5;
    let x_1818 : vec4<f32> = x_1716.x_AdditionalLightsColor[x_1816];
    u_xlat24 = (vec3<f32>(x_1814.x, x_1814.x, x_1814.x) * vec3<f32>(x_1818.x, x_1818.y, x_1818.z));
    let x_1821 : vec4<f32> = u_xlat6;
    let x_1823 : vec3<f32> = u_xlat24;
    let x_1824 : vec3<f32> = (vec3<f32>(x_1821.x, x_1821.x, x_1821.x) * x_1823);
    let x_1825 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1824.x, x_1824.y, x_1824.z, x_1825.w);
    let x_1827 : vec3<f32> = u_xlat1;
    let x_1828 : vec3<f32> = u_xlat23;
    u_xlat5.x = dot(x_1827, x_1828);
    let x_1832 : f32 = u_xlat5.x;
    u_xlat5.x = clamp(x_1832, 0.0f, 1.0f);
    let x_1835 : vec4<f32> = u_xlat5;
    let x_1837 : vec4<f32> = u_xlat6;
    let x_1839 : vec3<f32> = (vec3<f32>(x_1835.x, x_1835.x, x_1835.x) * vec3<f32>(x_1837.x, x_1837.y, x_1837.z));
    let x_1840 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1839.x, x_1839.y, x_1839.z, x_1840.w);
    let x_1842 : vec4<f32> = u_xlat5;
    let x_1844 : vec4<f32> = u_xlat0;
    let x_1847 : vec4<f32> = u_xlat4;
    let x_1849 : vec3<f32> = ((vec3<f32>(x_1842.x, x_1842.y, x_1842.z) * vec3<f32>(x_1844.y, x_1844.z, x_1844.w)) + vec3<f32>(x_1847.x, x_1847.y, x_1847.z));
    let x_1850 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1849.x, x_1849.y, x_1849.z, x_1850.w);

    continuing {
      let x_1852 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1852 + bitcast<u32>(1i));
    }
  }
  let x_1855 : vec3<f32> = u_xlat2;
  let x_1856 : vec4<f32> = u_xlat0;
  let x_1859 : vec3<f32> = u_xlat21;
  u_xlat18 = ((x_1855 * vec3<f32>(x_1856.y, x_1856.z, x_1856.w)) + x_1859);
  let x_1861 : vec4<f32> = u_xlat4;
  let x_1863 : vec3<f32> = u_xlat18;
  u_xlat18 = (vec3<f32>(x_1861.x, x_1861.y, x_1861.z) + x_1863);
  let x_1865 : f32 = u_xlat55;
  let x_1866 : f32 = u_xlat55;
  u_xlat1.x = (x_1865 * -(x_1866));
  let x_1871 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_1871);
  let x_1874 : vec3<f32> = u_xlat18;
  let x_1877 : vec4<f32> = x_44.unity_FogColor;
  u_xlat18 = (x_1874 + -(vec3<f32>(x_1877.x, x_1877.y, x_1877.z)));
  let x_1883 : vec3<f32> = u_xlat1;
  let x_1885 : vec3<f32> = u_xlat18;
  let x_1888 : vec4<f32> = x_44.unity_FogColor;
  let x_1890 : vec3<f32> = ((vec3<f32>(x_1883.x, x_1883.x, x_1883.x) * x_1885) + vec3<f32>(x_1888.x, x_1888.y, x_1888.z));
  let x_1891 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1890.x, x_1890.y, x_1890.z, x_1891.w);
  let x_1895 : f32 = x_56.x_Surface;
  u_xlatb18 = (x_1895 == 1.0f);
  let x_1897 : bool = u_xlatb18;
  if (x_1897) {
    let x_1902 : f32 = u_xlat0.x;
    x_1898 = x_1902;
  } else {
    x_1898 = 1.0f;
  }
  let x_1904 : f32 = x_1898;
  SV_Target0.w = x_1904;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD7_param : vec2<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

