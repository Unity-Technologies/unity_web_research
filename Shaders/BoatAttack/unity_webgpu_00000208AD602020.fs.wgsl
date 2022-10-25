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
  x_ProjectionParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
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

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_57 : UnityPerMaterial;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_316 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_1648 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_1745 : AdditionalLights;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb0 : bool;
  var x_74 : f32;
  var u_xlat18 : f32;
  var u_xlat36 : f32;
  var u_xlat54 : f32;
  var u_xlatb36 : bool;
  var x_123 : f32;
  var u_xlatb18 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlatb56 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat56 : f32;
  var u_xlatb57 : bool;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat57 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat22 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat48 : vec2<f32>;
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
  var u_xlatb4 : bool;
  var u_xlatu54 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu57 : u32;
  var u_xlati58 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlati57 : i32;
  var u_xlat58 : f32;
  var u_xlat59 : f32;
  var x_1915 : f32;
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
  let x_53 : vec4<f32> = u_xlat0;
  let x_60 : vec4<f32> = x_57.x_BaseColor;
  u_xlat1 = (vec4<f32>(x_53.w, x_53.x, x_53.y, x_53.z) * vec4<f32>(x_60.w, x_60.x, x_60.y, x_60.z));
  let x_68 : f32 = u_xlat1.x;
  let x_71 : f32 = x_57.x_Cutoff;
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
  let x_85 : f32 = u_xlat0.w;
  let x_87 : f32 = x_57.x_BaseColor.w;
  let x_90 : f32 = x_57.x_Cutoff;
  u_xlat18 = ((x_85 * x_87) + -(x_90));
  let x_95 : f32 = u_xlat1.x;
  u_xlat36 = dpdxCoarse(x_95);
  let x_99 : f32 = u_xlat1.x;
  u_xlat54 = dpdyCoarse(x_99);
  let x_101 : f32 = u_xlat54;
  let x_103 : f32 = u_xlat36;
  u_xlat36 = (abs(x_101) + abs(x_103));
  let x_106 : f32 = u_xlat36;
  u_xlat36 = max(x_106, 0.0001f);
  let x_109 : f32 = u_xlat18;
  let x_110 : f32 = u_xlat36;
  u_xlat18 = (x_109 / x_110);
  let x_112 : f32 = u_xlat18;
  u_xlat18 = (x_112 + 0.5f);
  let x_115 : f32 = u_xlat18;
  u_xlat18 = clamp(x_115, 0.0f, 1.0f);
  let x_120 : f32 = x_44.x_AlphaToMaskAvailable;
  u_xlatb36 = !((x_120 == 0.0f));
  let x_122 : bool = u_xlatb36;
  if (x_122) {
    let x_126 : f32 = u_xlat18;
    x_123 = x_126;
  } else {
    let x_129 : f32 = u_xlat0.x;
    x_123 = x_129;
  }
  let x_130 : f32 = x_123;
  u_xlat0.x = x_130;
  let x_133 : f32 = u_xlat0.x;
  u_xlat18 = (x_133 + -0.0001f);
  let x_137 : f32 = u_xlat18;
  u_xlatb18 = (x_137 < 0.0f);
  let x_139 : bool = u_xlatb18;
  if (((select(0i, 1i, x_139) * -1i) != 0i)) {
    discard;
  }
  let x_150 : vec3<f32> = vs_TEXCOORD2;
  let x_151 : vec3<f32> = vs_TEXCOORD2;
  u_xlat18 = dot(x_150, x_151);
  let x_153 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_153);
  let x_157 : f32 = u_xlat18;
  let x_159 : vec3<f32> = vs_TEXCOORD2;
  u_xlat2 = (vec3<f32>(x_157, x_157, x_157) * x_159);
  let x_164 : f32 = vs_TEXCOORD1.y;
  let x_168 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat18 = (x_164 * x_168);
  let x_171 : f32 = x_44.unity_MatrixV[0i].z;
  let x_173 : f32 = vs_TEXCOORD1.x;
  let x_175 : f32 = u_xlat18;
  u_xlat18 = ((x_171 * x_173) + x_175);
  let x_178 : f32 = x_44.unity_MatrixV[2i].z;
  let x_180 : f32 = vs_TEXCOORD1.z;
  let x_182 : f32 = u_xlat18;
  u_xlat18 = ((x_178 * x_180) + x_182);
  let x_184 : f32 = u_xlat18;
  let x_187 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat18 = (x_184 + x_187);
  let x_189 : f32 = u_xlat18;
  let x_193 : f32 = x_44.x_ProjectionParams.y;
  u_xlat18 = (-(x_189) + -(x_193));
  let x_196 : f32 = u_xlat18;
  u_xlat18 = max(x_196, 0.0f);
  let x_198 : f32 = u_xlat18;
  let x_201 : f32 = x_44.unity_FogParams.x;
  u_xlat18 = (x_198 * x_201);
  let x_210 : vec2<f32> = vs_TEXCOORD7;
  let x_212 : f32 = x_44.x_GlobalMipBias.x;
  let x_213 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_210, x_212);
  u_xlat3 = x_213;
  let x_219 : vec2<f32> = vs_TEXCOORD7;
  let x_221 : f32 = x_44.x_GlobalMipBias.x;
  let x_222 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_219, x_221);
  let x_223 : vec3<f32> = vec3<f32>(x_222.x, x_222.y, x_222.z);
  let x_224 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
  let x_226 : vec4<f32> = u_xlat3;
  let x_230 : vec3<f32> = (vec3<f32>(x_226.x, x_226.y, x_226.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_231 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
  let x_233 : vec3<f32> = u_xlat2;
  let x_234 : vec4<f32> = u_xlat3;
  u_xlat54 = dot(x_233, vec3<f32>(x_234.x, x_234.y, x_234.z));
  let x_237 : f32 = u_xlat54;
  u_xlat54 = (x_237 + 0.5f);
  let x_239 : f32 = u_xlat54;
  let x_241 : vec4<f32> = u_xlat4;
  let x_243 : vec3<f32> = (vec3<f32>(x_239, x_239, x_239) * vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
  let x_247 : f32 = u_xlat3.w;
  u_xlat54 = max(x_247, 0.0001f);
  let x_249 : vec4<f32> = u_xlat3;
  let x_251 : f32 = u_xlat54;
  let x_253 : vec3<f32> = (vec3<f32>(x_249.x, x_249.y, x_249.z) / vec3<f32>(x_251, x_251, x_251));
  let x_254 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_253.x, x_253.y, x_253.z, x_254.w);
  let x_258 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_259 : vec2<f32> = vec2<f32>(x_258.x, x_258.y);
  let x_263 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_259.x, x_259.y));
  let x_264 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_263.x, x_263.y, x_264.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat4;
  let x_268 : vec4<f32> = hlslcc_FragCoord;
  let x_270 : vec2<f32> = (vec2<f32>(x_266.x, x_266.y) * vec2<f32>(x_268.x, x_268.y));
  let x_271 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_270.x, x_270.y, x_271.z, x_271.w);
  let x_274 : f32 = u_xlat4.y;
  let x_277 : f32 = x_44.x_ScaleBiasRt.x;
  let x_280 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat54 = ((x_274 * x_277) + x_280);
  let x_282 : f32 = u_xlat54;
  u_xlat4.z = (-(x_282) + 1.0f);
  let x_291 : vec4<f32> = u_xlat4;
  let x_294 : f32 = x_44.x_GlobalMipBias.x;
  let x_295 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_291.x, x_291.z), x_294);
  u_xlat54 = x_295.x;
  let x_297 : f32 = u_xlat54;
  u_xlat1.x = (x_297 + -1.0f);
  let x_303 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_305 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_303 * x_305) + 1.0f);
  let x_309 : f32 = u_xlat54;
  u_xlat54 = min(x_309, 1.0f);
  let x_318 : f32 = x_316.x_MainLightShadowParams.y;
  u_xlatb56 = (0.0f < x_318);
  let x_320 : bool = u_xlatb56;
  if (x_320) {
    let x_324 : f32 = x_316.x_MainLightShadowParams.y;
    u_xlatb56 = (x_324 == 1.0f);
    let x_326 : bool = u_xlatb56;
    if (x_326) {
      let x_330 : vec4<f32> = vs_TEXCOORD6;
      let x_334 : vec4<f32> = x_316.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_330.x, x_330.y, x_330.x, x_330.y) + x_334);
      let x_337 : vec4<f32> = u_xlat4;
      let x_338 : vec2<f32> = vec2<f32>(x_337.x, x_337.y);
      let x_340 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_338.x, x_338.y, x_340);
      let x_353 : vec3<f32> = txVec0;
      let x_355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_353.xy, x_353.z);
      u_xlat5.x = x_355;
      let x_358 : vec4<f32> = u_xlat4;
      let x_359 : vec2<f32> = vec2<f32>(x_358.z, x_358.w);
      let x_361 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_359.x, x_359.y, x_361);
      let x_368 : vec3<f32> = txVec1;
      let x_370 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_368.xy, x_368.z);
      u_xlat5.y = x_370;
      let x_372 : vec4<f32> = vs_TEXCOORD6;
      let x_376 : vec4<f32> = x_316.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_372.x, x_372.y, x_372.x, x_372.y) + x_376);
      let x_379 : vec4<f32> = u_xlat4;
      let x_380 : vec2<f32> = vec2<f32>(x_379.x, x_379.y);
      let x_382 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_380.x, x_380.y, x_382);
      let x_389 : vec3<f32> = txVec2;
      let x_391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_389.xy, x_389.z);
      u_xlat5.z = x_391;
      let x_394 : vec4<f32> = u_xlat4;
      let x_395 : vec2<f32> = vec2<f32>(x_394.z, x_394.w);
      let x_397 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_395.x, x_395.y, x_397);
      let x_404 : vec3<f32> = txVec3;
      let x_406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_404.xy, x_404.z);
      u_xlat5.w = x_406;
      let x_409 : vec4<f32> = u_xlat5;
      u_xlat56 = dot(x_409, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_416 : f32 = x_316.x_MainLightShadowParams.y;
      u_xlatb57 = (x_416 == 2.0f);
      let x_419 : bool = u_xlatb57;
      if (x_419) {
        let x_422 : vec4<f32> = vs_TEXCOORD6;
        let x_425 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_429 : vec2<f32> = ((vec2<f32>(x_422.x, x_422.y) * vec2<f32>(x_425.z, x_425.w)) + vec2<f32>(0.5f, 0.5f));
        let x_430 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_429.x, x_429.y, x_430.z, x_430.w);
        let x_432 : vec4<f32> = u_xlat4;
        let x_434 : vec2<f32> = floor(vec2<f32>(x_432.x, x_432.y));
        let x_435 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_434.x, x_434.y, x_435.z, x_435.w);
        let x_439 : vec4<f32> = vs_TEXCOORD6;
        let x_442 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_445 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_439.x, x_439.y) * vec2<f32>(x_442.z, x_442.w)) + -(vec2<f32>(x_445.x, x_445.y)));
        let x_449 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_449.x, x_449.x, x_449.y, x_449.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_454 : vec4<f32> = u_xlat5;
        let x_456 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_454.x, x_454.x, x_454.z, x_454.z) * vec4<f32>(x_456.x, x_456.x, x_456.z, x_456.z));
        let x_459 : vec4<f32> = u_xlat6;
        let x_463 : vec2<f32> = (vec2<f32>(x_459.y, x_459.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_464 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_463.x, x_464.y, x_463.y, x_464.w);
        let x_466 : vec4<f32> = u_xlat6;
        let x_469 : vec2<f32> = u_xlat40;
        let x_471 : vec2<f32> = ((vec2<f32>(x_466.x, x_466.z) * vec2<f32>(0.5f, 0.5f)) + -(x_469));
        let x_472 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_471.x, x_471.y, x_472.z, x_472.w);
        let x_475 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_475) + vec2<f32>(1.0f, 1.0f));
        let x_479 : vec2<f32> = u_xlat40;
        let x_481 : vec2<f32> = min(x_479, vec2<f32>(0.0f, 0.0f));
        let x_482 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_481.x, x_481.y, x_482.z, x_482.w);
        let x_484 : vec4<f32> = u_xlat7;
        let x_487 : vec4<f32> = u_xlat7;
        let x_490 : vec2<f32> = u_xlat42;
        let x_491 : vec2<f32> = ((-(vec2<f32>(x_484.x, x_484.y)) * vec2<f32>(x_487.x, x_487.y)) + x_490);
        let x_492 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_491.x, x_491.y, x_492.z, x_492.w);
        let x_494 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_494, vec2<f32>(0.0f, 0.0f));
        let x_496 : vec2<f32> = u_xlat40;
        let x_498 : vec2<f32> = u_xlat40;
        let x_500 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_496) * x_498) + vec2<f32>(x_500.y, x_500.w));
        let x_503 : vec4<f32> = u_xlat7;
        let x_505 : vec2<f32> = (vec2<f32>(x_503.x, x_503.y) + vec2<f32>(1.0f, 1.0f));
        let x_506 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_505.x, x_505.y, x_506.z, x_506.w);
        let x_508 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_508 + vec2<f32>(1.0f, 1.0f));
        let x_511 : vec4<f32> = u_xlat6;
        let x_515 : vec2<f32> = (vec2<f32>(x_511.x, x_511.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_516 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_515.x, x_515.y, x_516.z, x_516.w);
        let x_518 : vec2<f32> = u_xlat42;
        let x_519 : vec2<f32> = (x_518 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_520 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_519.x, x_519.y, x_520.z, x_520.w);
        let x_522 : vec4<f32> = u_xlat7;
        let x_524 : vec2<f32> = (vec2<f32>(x_522.x, x_522.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_525 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_524.x, x_524.y, x_525.z, x_525.w);
        let x_528 : vec2<f32> = u_xlat40;
        let x_529 : vec2<f32> = (x_528 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_530 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_529.x, x_529.y, x_530.z, x_530.w);
        let x_532 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_532.y, x_532.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_536 : f32 = u_xlat7.x;
        u_xlat8.z = x_536;
        let x_539 : f32 = u_xlat40.x;
        u_xlat8.w = x_539;
        let x_542 : f32 = u_xlat9.x;
        u_xlat6.z = x_542;
        let x_545 : f32 = u_xlat5.x;
        u_xlat6.w = x_545;
        let x_548 : vec4<f32> = u_xlat6;
        let x_550 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_548.z, x_548.w, x_548.x, x_548.z) + vec4<f32>(x_550.z, x_550.w, x_550.x, x_550.z));
        let x_554 : f32 = u_xlat8.y;
        u_xlat7.z = x_554;
        let x_557 : f32 = u_xlat40.y;
        u_xlat7.w = x_557;
        let x_560 : f32 = u_xlat6.y;
        u_xlat9.z = x_560;
        let x_563 : f32 = u_xlat5.z;
        u_xlat9.w = x_563;
        let x_565 : vec4<f32> = u_xlat7;
        let x_567 : vec4<f32> = u_xlat9;
        let x_569 : vec3<f32> = (vec3<f32>(x_565.z, x_565.y, x_565.w) + vec3<f32>(x_567.z, x_567.y, x_567.w));
        let x_570 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
        let x_572 : vec4<f32> = u_xlat6;
        let x_574 : vec4<f32> = u_xlat10;
        let x_576 : vec3<f32> = (vec3<f32>(x_572.x, x_572.z, x_572.w) / vec3<f32>(x_574.z, x_574.w, x_574.y));
        let x_577 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_576.x, x_576.y, x_576.z, x_577.w);
        let x_579 : vec4<f32> = u_xlat6;
        let x_584 : vec3<f32> = (vec3<f32>(x_579.x, x_579.y, x_579.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_585 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
        let x_587 : vec4<f32> = u_xlat9;
        let x_589 : vec4<f32> = u_xlat5;
        let x_591 : vec3<f32> = (vec3<f32>(x_587.z, x_587.y, x_587.w) / vec3<f32>(x_589.x, x_589.y, x_589.z));
        let x_592 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
        let x_594 : vec4<f32> = u_xlat7;
        let x_596 : vec3<f32> = (vec3<f32>(x_594.x, x_594.y, x_594.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_597 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
        let x_599 : vec4<f32> = u_xlat6;
        let x_602 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_604 : vec3<f32> = (vec3<f32>(x_599.y, x_599.x, x_599.z) * vec3<f32>(x_602.x, x_602.x, x_602.x));
        let x_605 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_604.x, x_604.y, x_604.z, x_605.w);
        let x_607 : vec4<f32> = u_xlat7;
        let x_610 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_612 : vec3<f32> = (vec3<f32>(x_607.x, x_607.y, x_607.z) * vec3<f32>(x_610.y, x_610.y, x_610.y));
        let x_613 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
        let x_616 : f32 = u_xlat7.x;
        u_xlat6.w = x_616;
        let x_618 : vec4<f32> = u_xlat4;
        let x_621 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_624 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_618.x, x_618.y, x_618.x, x_618.y) * vec4<f32>(x_621.x, x_621.y, x_621.x, x_621.y)) + vec4<f32>(x_624.y, x_624.w, x_624.x, x_624.w));
        let x_627 : vec4<f32> = u_xlat4;
        let x_630 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_633 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_627.x, x_627.y) * vec2<f32>(x_630.x, x_630.y)) + vec2<f32>(x_633.z, x_633.w));
        let x_637 : f32 = u_xlat6.y;
        u_xlat7.w = x_637;
        let x_639 : vec4<f32> = u_xlat7;
        let x_640 : vec2<f32> = vec2<f32>(x_639.y, x_639.z);
        let x_641 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_641.x, x_640.x, x_641.z, x_640.y);
        let x_643 : vec4<f32> = u_xlat4;
        let x_646 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_649 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_643.x, x_643.y, x_643.x, x_643.y) * vec4<f32>(x_646.x, x_646.y, x_646.x, x_646.y)) + vec4<f32>(x_649.x, x_649.y, x_649.z, x_649.y));
        let x_652 : vec4<f32> = u_xlat4;
        let x_655 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_658 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_652.x, x_652.y, x_652.x, x_652.y) * vec4<f32>(x_655.x, x_655.y, x_655.x, x_655.y)) + vec4<f32>(x_658.w, x_658.y, x_658.w, x_658.z));
        let x_661 : vec4<f32> = u_xlat4;
        let x_664 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_667 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_661.x, x_661.y, x_661.x, x_661.y) * vec4<f32>(x_664.x, x_664.y, x_664.x, x_664.y)) + vec4<f32>(x_667.x, x_667.w, x_667.z, x_667.w));
        let x_671 : vec4<f32> = u_xlat5;
        let x_673 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_671.x, x_671.x, x_671.x, x_671.y) * vec4<f32>(x_673.z, x_673.w, x_673.y, x_673.z));
        let x_677 : vec4<f32> = u_xlat5;
        let x_679 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_677.y, x_677.y, x_677.z, x_677.z) * x_679);
        let x_683 : f32 = u_xlat5.z;
        let x_685 : f32 = u_xlat10.y;
        u_xlat57 = (x_683 * x_685);
        let x_688 : vec4<f32> = u_xlat8;
        let x_689 : vec2<f32> = vec2<f32>(x_688.x, x_688.y);
        let x_691 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_689.x, x_689.y, x_691);
        let x_698 : vec3<f32> = txVec4;
        let x_700 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_698.xy, x_698.z);
        u_xlat4.x = x_700;
        let x_703 : vec4<f32> = u_xlat8;
        let x_704 : vec2<f32> = vec2<f32>(x_703.z, x_703.w);
        let x_706 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_704.x, x_704.y, x_706);
        let x_714 : vec3<f32> = txVec5;
        let x_716 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_714.xy, x_714.z);
        u_xlat22 = x_716;
        let x_717 : f32 = u_xlat22;
        let x_719 : f32 = u_xlat11.y;
        u_xlat22 = (x_717 * x_719);
        let x_722 : f32 = u_xlat11.x;
        let x_724 : f32 = u_xlat4.x;
        let x_726 : f32 = u_xlat22;
        u_xlat4.x = ((x_722 * x_724) + x_726);
        let x_730 : vec2<f32> = u_xlat40;
        let x_732 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_730.x, x_730.y, x_732);
        let x_739 : vec3<f32> = txVec6;
        let x_741 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_739.xy, x_739.z);
        u_xlat22 = x_741;
        let x_743 : f32 = u_xlat11.z;
        let x_744 : f32 = u_xlat22;
        let x_747 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_743 * x_744) + x_747);
        let x_751 : vec4<f32> = u_xlat7;
        let x_752 : vec2<f32> = vec2<f32>(x_751.x, x_751.y);
        let x_754 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_752.x, x_752.y, x_754);
        let x_761 : vec3<f32> = txVec7;
        let x_763 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_761.xy, x_761.z);
        u_xlat22 = x_763;
        let x_765 : f32 = u_xlat11.w;
        let x_766 : f32 = u_xlat22;
        let x_769 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_765 * x_766) + x_769);
        let x_773 : vec4<f32> = u_xlat9;
        let x_774 : vec2<f32> = vec2<f32>(x_773.x, x_773.y);
        let x_776 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_774.x, x_774.y, x_776);
        let x_783 : vec3<f32> = txVec8;
        let x_785 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_783.xy, x_783.z);
        u_xlat22 = x_785;
        let x_787 : f32 = u_xlat12.x;
        let x_788 : f32 = u_xlat22;
        let x_791 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_787 * x_788) + x_791);
        let x_795 : vec4<f32> = u_xlat9;
        let x_796 : vec2<f32> = vec2<f32>(x_795.z, x_795.w);
        let x_798 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_796.x, x_796.y, x_798);
        let x_805 : vec3<f32> = txVec9;
        let x_807 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_805.xy, x_805.z);
        u_xlat22 = x_807;
        let x_809 : f32 = u_xlat12.y;
        let x_810 : f32 = u_xlat22;
        let x_813 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_809 * x_810) + x_813);
        let x_817 : vec4<f32> = u_xlat7;
        let x_818 : vec2<f32> = vec2<f32>(x_817.z, x_817.w);
        let x_820 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_818.x, x_818.y, x_820);
        let x_827 : vec3<f32> = txVec10;
        let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_827.xy, x_827.z);
        u_xlat22 = x_829;
        let x_831 : f32 = u_xlat12.z;
        let x_832 : f32 = u_xlat22;
        let x_835 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_831 * x_832) + x_835);
        let x_839 : vec4<f32> = u_xlat6;
        let x_840 : vec2<f32> = vec2<f32>(x_839.x, x_839.y);
        let x_842 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_840.x, x_840.y, x_842);
        let x_849 : vec3<f32> = txVec11;
        let x_851 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_849.xy, x_849.z);
        u_xlat22 = x_851;
        let x_853 : f32 = u_xlat12.w;
        let x_854 : f32 = u_xlat22;
        let x_857 : f32 = u_xlat4.x;
        u_xlat4.x = ((x_853 * x_854) + x_857);
        let x_861 : vec4<f32> = u_xlat6;
        let x_862 : vec2<f32> = vec2<f32>(x_861.z, x_861.w);
        let x_864 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_862.x, x_862.y, x_864);
        let x_871 : vec3<f32> = txVec12;
        let x_873 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_871.xy, x_871.z);
        u_xlat22 = x_873;
        let x_874 : f32 = u_xlat57;
        let x_875 : f32 = u_xlat22;
        let x_878 : f32 = u_xlat4.x;
        u_xlat56 = ((x_874 * x_875) + x_878);
      } else {
        let x_881 : vec4<f32> = vs_TEXCOORD6;
        let x_884 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_887 : vec2<f32> = ((vec2<f32>(x_881.x, x_881.y) * vec2<f32>(x_884.z, x_884.w)) + vec2<f32>(0.5f, 0.5f));
        let x_888 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_887.x, x_887.y, x_888.z, x_888.w);
        let x_890 : vec4<f32> = u_xlat4;
        let x_892 : vec2<f32> = floor(vec2<f32>(x_890.x, x_890.y));
        let x_893 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_892.x, x_892.y, x_893.z, x_893.w);
        let x_895 : vec4<f32> = vs_TEXCOORD6;
        let x_898 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_901 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_895.x, x_895.y) * vec2<f32>(x_898.z, x_898.w)) + -(vec2<f32>(x_901.x, x_901.y)));
        let x_905 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_905.x, x_905.x, x_905.y, x_905.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_908 : vec4<f32> = u_xlat5;
        let x_910 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_908.x, x_908.x, x_908.z, x_908.z) * vec4<f32>(x_910.x, x_910.x, x_910.z, x_910.z));
        let x_913 : vec4<f32> = u_xlat6;
        let x_917 : vec2<f32> = (vec2<f32>(x_913.y, x_913.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_918 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_918.x, x_917.x, x_918.z, x_917.y);
        let x_920 : vec4<f32> = u_xlat6;
        let x_923 : vec2<f32> = u_xlat40;
        let x_925 : vec2<f32> = ((vec2<f32>(x_920.x, x_920.z) * vec2<f32>(0.5f, 0.5f)) + -(x_923));
        let x_926 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_925.x, x_926.y, x_925.y, x_926.w);
        let x_928 : vec2<f32> = u_xlat40;
        let x_930 : vec2<f32> = (-(x_928) + vec2<f32>(1.0f, 1.0f));
        let x_931 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_930.x, x_930.y, x_931.z, x_931.w);
        let x_933 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_933, vec2<f32>(0.0f, 0.0f));
        let x_935 : vec2<f32> = u_xlat42;
        let x_937 : vec2<f32> = u_xlat42;
        let x_939 : vec4<f32> = u_xlat6;
        let x_941 : vec2<f32> = ((-(x_935) * x_937) + vec2<f32>(x_939.x, x_939.y));
        let x_942 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_941.x, x_941.y, x_942.z, x_942.w);
        let x_944 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_944, vec2<f32>(0.0f, 0.0f));
        let x_947 : vec2<f32> = u_xlat42;
        let x_949 : vec2<f32> = u_xlat42;
        let x_951 : vec4<f32> = u_xlat5;
        let x_953 : vec2<f32> = ((-(x_947) * x_949) + vec2<f32>(x_951.y, x_951.w));
        let x_954 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_953.x, x_954.y, x_953.y);
        let x_956 : vec4<f32> = u_xlat6;
        let x_959 : vec2<f32> = (vec2<f32>(x_956.x, x_956.y) + vec2<f32>(2.0f, 2.0f));
        let x_960 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_959.x, x_959.y, x_960.z, x_960.w);
        let x_962 : vec3<f32> = u_xlat23;
        let x_964 : vec2<f32> = (vec2<f32>(x_962.x, x_962.z) + vec2<f32>(2.0f, 2.0f));
        let x_965 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_965.x, x_964.x, x_965.z, x_964.y);
        let x_968 : f32 = u_xlat5.y;
        u_xlat8.z = (x_968 * 0.081632003f);
        let x_972 : vec4<f32> = u_xlat5;
        let x_975 : vec3<f32> = (vec3<f32>(x_972.z, x_972.x, x_972.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_976 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
        let x_978 : vec4<f32> = u_xlat6;
        let x_981 : vec2<f32> = (vec2<f32>(x_978.x, x_978.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_982 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_981.x, x_981.y, x_982.z, x_982.w);
        let x_985 : f32 = u_xlat9.y;
        u_xlat8.x = x_985;
        let x_987 : vec2<f32> = u_xlat40;
        let x_994 : vec2<f32> = ((vec2<f32>(x_987.x, x_987.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_995 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_995.x, x_994.x, x_995.z, x_994.y);
        let x_997 : vec2<f32> = u_xlat40;
        let x_1001 : vec2<f32> = ((vec2<f32>(x_997.x, x_997.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1002 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1001.x, x_1002.y, x_1001.y, x_1002.w);
        let x_1005 : f32 = u_xlat5.x;
        u_xlat6.y = x_1005;
        let x_1008 : f32 = u_xlat7.y;
        u_xlat6.w = x_1008;
        let x_1010 : vec4<f32> = u_xlat6;
        let x_1011 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1010 + x_1011);
        let x_1013 : vec2<f32> = u_xlat40;
        let x_1016 : vec2<f32> = ((vec2<f32>(x_1013.y, x_1013.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1017 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1017.x, x_1016.x, x_1017.z, x_1016.y);
        let x_1019 : vec2<f32> = u_xlat40;
        let x_1022 : vec2<f32> = ((vec2<f32>(x_1019.y, x_1019.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1023 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1022.x, x_1023.y, x_1022.y, x_1023.w);
        let x_1026 : f32 = u_xlat5.y;
        u_xlat7.y = x_1026;
        let x_1028 : vec4<f32> = u_xlat7;
        let x_1029 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1028 + x_1029);
        let x_1031 : vec4<f32> = u_xlat6;
        let x_1032 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1031 / x_1032);
        let x_1034 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1034 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1040 : vec4<f32> = u_xlat7;
        let x_1041 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1040 / x_1041);
        let x_1043 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1043 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1045 : vec4<f32> = u_xlat6;
        let x_1048 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1045.w, x_1045.x, x_1045.y, x_1045.z) * vec4<f32>(x_1048.x, x_1048.x, x_1048.x, x_1048.x));
        let x_1051 : vec4<f32> = u_xlat7;
        let x_1054 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1051.x, x_1051.w, x_1051.y, x_1051.z) * vec4<f32>(x_1054.y, x_1054.y, x_1054.y, x_1054.y));
        let x_1057 : vec4<f32> = u_xlat6;
        let x_1058 : vec3<f32> = vec3<f32>(x_1057.y, x_1057.z, x_1057.w);
        let x_1059 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1058.x, x_1059.y, x_1058.y, x_1058.z);
        let x_1062 : f32 = u_xlat7.x;
        u_xlat9.y = x_1062;
        let x_1064 : vec4<f32> = u_xlat4;
        let x_1067 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1070 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1064.x, x_1064.y, x_1064.x, x_1064.y) * vec4<f32>(x_1067.x, x_1067.y, x_1067.x, x_1067.y)) + vec4<f32>(x_1070.x, x_1070.y, x_1070.z, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat4;
        let x_1076 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1079 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1073.x, x_1073.y) * vec2<f32>(x_1076.x, x_1076.y)) + vec2<f32>(x_1079.w, x_1079.y));
        let x_1083 : f32 = u_xlat9.y;
        u_xlat6.y = x_1083;
        let x_1086 : f32 = u_xlat7.z;
        u_xlat9.y = x_1086;
        let x_1088 : vec4<f32> = u_xlat4;
        let x_1091 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1094 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1088.x, x_1088.y, x_1088.x, x_1088.y) * vec4<f32>(x_1091.x, x_1091.y, x_1091.x, x_1091.y)) + vec4<f32>(x_1094.x, x_1094.y, x_1094.z, x_1094.y));
        let x_1097 : vec4<f32> = u_xlat4;
        let x_1100 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat9;
        let x_1105 : vec2<f32> = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.x, x_1100.y)) + vec2<f32>(x_1103.w, x_1103.y));
        let x_1106 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1105.x, x_1105.y, x_1106.z, x_1106.w);
        let x_1109 : f32 = u_xlat9.y;
        u_xlat6.z = x_1109;
        let x_1112 : vec4<f32> = u_xlat4;
        let x_1115 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1118 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1112.x, x_1112.y, x_1112.x, x_1112.y) * vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y)) + vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.z));
        let x_1122 : f32 = u_xlat7.w;
        u_xlat9.y = x_1122;
        let x_1125 : vec4<f32> = u_xlat4;
        let x_1128 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1131 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1125.x, x_1125.y, x_1125.x, x_1125.y) * vec4<f32>(x_1128.x, x_1128.y, x_1128.x, x_1128.y)) + vec4<f32>(x_1131.x, x_1131.y, x_1131.z, x_1131.y));
        let x_1135 : vec4<f32> = u_xlat4;
        let x_1138 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1141 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1135.x, x_1135.y) * vec2<f32>(x_1138.x, x_1138.y)) + vec2<f32>(x_1141.w, x_1141.y));
        let x_1145 : f32 = u_xlat9.y;
        u_xlat6.w = x_1145;
        let x_1148 : vec4<f32> = u_xlat4;
        let x_1151 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(x_1151.x, x_1151.y)) + vec2<f32>(x_1154.x, x_1154.w));
        let x_1157 : vec4<f32> = u_xlat9;
        let x_1158 : vec3<f32> = vec3<f32>(x_1157.x, x_1157.z, x_1157.w);
        let x_1159 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1158.x, x_1159.y, x_1158.y, x_1158.z);
        let x_1161 : vec4<f32> = u_xlat4;
        let x_1164 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1167 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1161.x, x_1161.y, x_1161.x, x_1161.y) * vec4<f32>(x_1164.x, x_1164.y, x_1164.x, x_1164.y)) + vec4<f32>(x_1167.x, x_1167.y, x_1167.z, x_1167.y));
        let x_1171 : vec4<f32> = u_xlat4;
        let x_1174 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1177 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1171.x, x_1171.y) * vec2<f32>(x_1174.x, x_1174.y)) + vec2<f32>(x_1177.w, x_1177.y));
        let x_1181 : f32 = u_xlat6.x;
        u_xlat7.x = x_1181;
        let x_1183 : vec4<f32> = u_xlat4;
        let x_1186 : vec4<f32> = x_316.x_MainLightShadowmapSize;
        let x_1189 : vec4<f32> = u_xlat7;
        let x_1191 : vec2<f32> = ((vec2<f32>(x_1183.x, x_1183.y) * vec2<f32>(x_1186.x, x_1186.y)) + vec2<f32>(x_1189.x, x_1189.y));
        let x_1192 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1191.x, x_1191.y, x_1192.z, x_1192.w);
        let x_1195 : vec4<f32> = u_xlat5;
        let x_1197 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1195.x, x_1195.x, x_1195.x, x_1195.x) * x_1197);
        let x_1200 : vec4<f32> = u_xlat5;
        let x_1202 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1200.y, x_1200.y, x_1200.y, x_1200.y) * x_1202);
        let x_1205 : vec4<f32> = u_xlat5;
        let x_1207 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1205.z, x_1205.z, x_1205.z, x_1205.z) * x_1207);
        let x_1209 : vec4<f32> = u_xlat5;
        let x_1211 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1209.w, x_1209.w, x_1209.w, x_1209.w) * x_1211);
        let x_1214 : vec4<f32> = u_xlat10;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
        let x_1217 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec13;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1224.xy, x_1224.z);
        u_xlat57 = x_1226;
        let x_1228 : vec4<f32> = u_xlat10;
        let x_1229 : vec2<f32> = vec2<f32>(x_1228.z, x_1228.w);
        let x_1231 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1229.x, x_1229.y, x_1231);
        let x_1238 : vec3<f32> = txVec14;
        let x_1240 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1238.xy, x_1238.z);
        u_xlat6.x = x_1240;
        let x_1243 : f32 = u_xlat6.x;
        let x_1245 : f32 = u_xlat15.y;
        u_xlat6.x = (x_1243 * x_1245);
        let x_1249 : f32 = u_xlat15.x;
        let x_1250 : f32 = u_xlat57;
        let x_1253 : f32 = u_xlat6.x;
        u_xlat57 = ((x_1249 * x_1250) + x_1253);
        let x_1256 : vec2<f32> = u_xlat40;
        let x_1258 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1256.x, x_1256.y, x_1258);
        let x_1265 : vec3<f32> = txVec15;
        let x_1267 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1265.xy, x_1265.z);
        u_xlat40.x = x_1267;
        let x_1270 : f32 = u_xlat15.z;
        let x_1272 : f32 = u_xlat40.x;
        let x_1274 : f32 = u_xlat57;
        u_xlat57 = ((x_1270 * x_1272) + x_1274);
        let x_1277 : vec4<f32> = u_xlat13;
        let x_1278 : vec2<f32> = vec2<f32>(x_1277.x, x_1277.y);
        let x_1280 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1278.x, x_1278.y, x_1280);
        let x_1287 : vec3<f32> = txVec16;
        let x_1289 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1287.xy, x_1287.z);
        u_xlat40.x = x_1289;
        let x_1292 : f32 = u_xlat15.w;
        let x_1294 : f32 = u_xlat40.x;
        let x_1296 : f32 = u_xlat57;
        u_xlat57 = ((x_1292 * x_1294) + x_1296);
        let x_1299 : vec4<f32> = u_xlat11;
        let x_1300 : vec2<f32> = vec2<f32>(x_1299.x, x_1299.y);
        let x_1302 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1300.x, x_1300.y, x_1302);
        let x_1309 : vec3<f32> = txVec17;
        let x_1311 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1309.xy, x_1309.z);
        u_xlat40.x = x_1311;
        let x_1314 : f32 = u_xlat16.x;
        let x_1316 : f32 = u_xlat40.x;
        let x_1318 : f32 = u_xlat57;
        u_xlat57 = ((x_1314 * x_1316) + x_1318);
        let x_1321 : vec4<f32> = u_xlat11;
        let x_1322 : vec2<f32> = vec2<f32>(x_1321.z, x_1321.w);
        let x_1324 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1322.x, x_1322.y, x_1324);
        let x_1331 : vec3<f32> = txVec18;
        let x_1333 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1331.xy, x_1331.z);
        u_xlat40.x = x_1333;
        let x_1336 : f32 = u_xlat16.y;
        let x_1338 : f32 = u_xlat40.x;
        let x_1340 : f32 = u_xlat57;
        u_xlat57 = ((x_1336 * x_1338) + x_1340);
        let x_1343 : vec4<f32> = u_xlat12;
        let x_1344 : vec2<f32> = vec2<f32>(x_1343.x, x_1343.y);
        let x_1346 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1344.x, x_1344.y, x_1346);
        let x_1353 : vec3<f32> = txVec19;
        let x_1355 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1353.xy, x_1353.z);
        u_xlat40.x = x_1355;
        let x_1358 : f32 = u_xlat16.z;
        let x_1360 : f32 = u_xlat40.x;
        let x_1362 : f32 = u_xlat57;
        u_xlat57 = ((x_1358 * x_1360) + x_1362);
        let x_1365 : vec4<f32> = u_xlat13;
        let x_1366 : vec2<f32> = vec2<f32>(x_1365.z, x_1365.w);
        let x_1368 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1366.x, x_1366.y, x_1368);
        let x_1375 : vec3<f32> = txVec20;
        let x_1377 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1375.xy, x_1375.z);
        u_xlat40.x = x_1377;
        let x_1380 : f32 = u_xlat16.w;
        let x_1382 : f32 = u_xlat40.x;
        let x_1384 : f32 = u_xlat57;
        u_xlat57 = ((x_1380 * x_1382) + x_1384);
        let x_1387 : vec4<f32> = u_xlat14;
        let x_1388 : vec2<f32> = vec2<f32>(x_1387.x, x_1387.y);
        let x_1390 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1388.x, x_1388.y, x_1390);
        let x_1397 : vec3<f32> = txVec21;
        let x_1399 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1397.xy, x_1397.z);
        u_xlat40.x = x_1399;
        let x_1402 : f32 = u_xlat17.x;
        let x_1404 : f32 = u_xlat40.x;
        let x_1406 : f32 = u_xlat57;
        u_xlat57 = ((x_1402 * x_1404) + x_1406);
        let x_1409 : vec4<f32> = u_xlat14;
        let x_1410 : vec2<f32> = vec2<f32>(x_1409.z, x_1409.w);
        let x_1412 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1410.x, x_1410.y, x_1412);
        let x_1419 : vec3<f32> = txVec22;
        let x_1421 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1419.xy, x_1419.z);
        u_xlat40.x = x_1421;
        let x_1424 : f32 = u_xlat17.y;
        let x_1426 : f32 = u_xlat40.x;
        let x_1428 : f32 = u_xlat57;
        u_xlat57 = ((x_1424 * x_1426) + x_1428);
        let x_1431 : vec2<f32> = u_xlat24;
        let x_1433 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1431.x, x_1431.y, x_1433);
        let x_1440 : vec3<f32> = txVec23;
        let x_1442 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1440.xy, x_1440.z);
        u_xlat40.x = x_1442;
        let x_1445 : f32 = u_xlat17.z;
        let x_1447 : f32 = u_xlat40.x;
        let x_1449 : f32 = u_xlat57;
        u_xlat57 = ((x_1445 * x_1447) + x_1449);
        let x_1452 : vec2<f32> = u_xlat48;
        let x_1454 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1452.x, x_1452.y, x_1454);
        let x_1461 : vec3<f32> = txVec24;
        let x_1463 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1461.xy, x_1461.z);
        u_xlat40.x = x_1463;
        let x_1466 : f32 = u_xlat17.w;
        let x_1468 : f32 = u_xlat40.x;
        let x_1470 : f32 = u_xlat57;
        u_xlat57 = ((x_1466 * x_1468) + x_1470);
        let x_1473 : vec4<f32> = u_xlat9;
        let x_1474 : vec2<f32> = vec2<f32>(x_1473.x, x_1473.y);
        let x_1476 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1474.x, x_1474.y, x_1476);
        let x_1483 : vec3<f32> = txVec25;
        let x_1485 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1483.xy, x_1483.z);
        u_xlat40.x = x_1485;
        let x_1488 : f32 = u_xlat5.x;
        let x_1490 : f32 = u_xlat40.x;
        let x_1492 : f32 = u_xlat57;
        u_xlat57 = ((x_1488 * x_1490) + x_1492);
        let x_1495 : vec4<f32> = u_xlat9;
        let x_1496 : vec2<f32> = vec2<f32>(x_1495.z, x_1495.w);
        let x_1498 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1496.x, x_1496.y, x_1498);
        let x_1505 : vec3<f32> = txVec26;
        let x_1507 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1505.xy, x_1505.z);
        u_xlat40.x = x_1507;
        let x_1510 : f32 = u_xlat5.y;
        let x_1512 : f32 = u_xlat40.x;
        let x_1514 : f32 = u_xlat57;
        u_xlat57 = ((x_1510 * x_1512) + x_1514);
        let x_1517 : vec2<f32> = u_xlat43;
        let x_1519 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec27;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1526.xy, x_1526.z);
        u_xlat40.x = x_1528;
        let x_1531 : f32 = u_xlat5.z;
        let x_1533 : f32 = u_xlat40.x;
        let x_1535 : f32 = u_xlat57;
        u_xlat57 = ((x_1531 * x_1533) + x_1535);
        let x_1538 : vec4<f32> = u_xlat4;
        let x_1539 : vec2<f32> = vec2<f32>(x_1538.x, x_1538.y);
        let x_1541 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec28;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1548.xy, x_1548.z);
        u_xlat4.x = x_1550;
        let x_1553 : f32 = u_xlat5.w;
        let x_1555 : f32 = u_xlat4.x;
        let x_1557 : f32 = u_xlat57;
        u_xlat56 = ((x_1553 * x_1555) + x_1557);
      }
    }
  } else {
    let x_1561 : vec4<f32> = vs_TEXCOORD6;
    let x_1562 : vec2<f32> = vec2<f32>(x_1561.x, x_1561.y);
    let x_1564 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1562.x, x_1562.y, x_1564);
    let x_1571 : vec3<f32> = txVec29;
    let x_1573 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1571.xy, x_1571.z);
    u_xlat56 = x_1573;
  }
  let x_1575 : f32 = x_316.x_MainLightShadowParams.x;
  u_xlat57 = (-(x_1575) + 1.0f);
  let x_1578 : f32 = u_xlat56;
  let x_1580 : f32 = x_316.x_MainLightShadowParams.x;
  let x_1582 : f32 = u_xlat57;
  u_xlat56 = ((x_1578 * x_1580) + x_1582);
  let x_1585 : f32 = vs_TEXCOORD6.z;
  u_xlatb57 = (0.0f >= x_1585);
  let x_1589 : f32 = vs_TEXCOORD6.z;
  u_xlatb4 = (x_1589 >= 1.0f);
  let x_1591 : bool = u_xlatb57;
  let x_1592 : bool = u_xlatb4;
  u_xlatb57 = (x_1591 | x_1592);
  let x_1594 : bool = u_xlatb57;
  let x_1595 : f32 = u_xlat56;
  u_xlat56 = select(x_1595, 1.0f, x_1594);
  let x_1597 : vec3<f32> = vs_TEXCOORD1;
  let x_1600 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1602 : vec3<f32> = (x_1597 + -(x_1600));
  let x_1603 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1602.x, x_1602.y, x_1602.z, x_1603.w);
  let x_1605 : vec4<f32> = u_xlat4;
  let x_1607 : vec4<f32> = u_xlat4;
  u_xlat57 = dot(vec3<f32>(x_1605.x, x_1605.y, x_1605.z), vec3<f32>(x_1607.x, x_1607.y, x_1607.z));
  let x_1610 : f32 = u_xlat57;
  let x_1612 : f32 = x_316.x_MainLightShadowParams.z;
  let x_1615 : f32 = x_316.x_MainLightShadowParams.w;
  u_xlat57 = ((x_1610 * x_1612) + x_1615);
  let x_1617 : f32 = u_xlat57;
  u_xlat57 = clamp(x_1617, 0.0f, 1.0f);
  let x_1619 : f32 = u_xlat56;
  u_xlat4.x = (-(x_1619) + 1.0f);
  let x_1623 : f32 = u_xlat57;
  let x_1625 : f32 = u_xlat4.x;
  let x_1627 : f32 = u_xlat56;
  u_xlat56 = ((x_1623 * x_1625) + x_1627);
  let x_1629 : vec4<f32> = u_xlat1;
  let x_1632 : vec4<f32> = x_44.x_MainLightColor;
  let x_1634 : vec3<f32> = (vec3<f32>(x_1629.x, x_1629.x, x_1629.x) * vec3<f32>(x_1632.x, x_1632.y, x_1632.z));
  let x_1635 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1634.x, x_1634.y, x_1634.z, x_1635.w);
  let x_1637 : f32 = u_xlat54;
  let x_1639 : vec4<f32> = u_xlat3;
  let x_1641 : vec3<f32> = (vec3<f32>(x_1637, x_1637, x_1637) * vec3<f32>(x_1639.x, x_1639.y, x_1639.z));
  let x_1642 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1641.x, x_1641.y, x_1641.z, x_1642.w);
  let x_1644 : f32 = u_xlat56;
  let x_1650 : f32 = x_1648.unity_LightData.z;
  u_xlat54 = (x_1644 * x_1650);
  let x_1652 : f32 = u_xlat54;
  let x_1654 : vec4<f32> = u_xlat4;
  let x_1656 : vec3<f32> = (vec3<f32>(x_1652, x_1652, x_1652) * vec3<f32>(x_1654.x, x_1654.y, x_1654.z));
  let x_1657 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1656.x, x_1656.y, x_1656.z, x_1657.w);
  let x_1659 : vec3<f32> = u_xlat2;
  let x_1661 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat54 = dot(x_1659, vec3<f32>(x_1661.x, x_1661.y, x_1661.z));
  let x_1664 : f32 = u_xlat54;
  u_xlat54 = clamp(x_1664, 0.0f, 1.0f);
  let x_1666 : f32 = u_xlat54;
  let x_1668 : vec4<f32> = u_xlat4;
  let x_1670 : vec3<f32> = (vec3<f32>(x_1666, x_1666, x_1666) * vec3<f32>(x_1668.x, x_1668.y, x_1668.z));
  let x_1671 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1670.x, x_1670.y, x_1670.z, x_1671.w);
  let x_1673 : vec4<f32> = u_xlat1;
  let x_1675 : vec4<f32> = u_xlat4;
  let x_1677 : vec3<f32> = (vec3<f32>(x_1673.y, x_1673.z, x_1673.w) * vec3<f32>(x_1675.x, x_1675.y, x_1675.z));
  let x_1678 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1677.x, x_1677.y, x_1677.z, x_1678.w);
  let x_1681 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1683 : f32 = x_1648.unity_LightData.y;
  u_xlat54 = min(x_1681, x_1683);
  let x_1687 : f32 = u_xlat54;
  u_xlatu54 = bitcast<u32>(i32(x_1687));
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1699 : u32 = u_xlatu_loop_1;
    let x_1700 : u32 = u_xlatu54;
    if ((x_1699 < x_1700)) {
    } else {
      break;
    }
    let x_1703 : u32 = u_xlatu_loop_1;
    u_xlatu57 = (x_1703 >> 2u);
    let x_1707 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_1707 & 3u));
    let x_1710 : u32 = u_xlatu57;
    let x_1713 : vec4<f32> = x_1648.unity_LightIndices[bitcast<i32>(x_1710)];
    let x_1723 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1728 : vec4<u32> = indexable[x_1723];
    u_xlat57 = dot(x_1713, bitcast<vec4<f32>>(x_1728));
    let x_1732 : f32 = u_xlat57;
    u_xlati57 = i32(x_1732);
    let x_1734 : vec3<f32> = vs_TEXCOORD1;
    let x_1746 : i32 = u_xlati57;
    let x_1748 : vec4<f32> = x_1745.x_AdditionalLightsPosition[x_1746];
    let x_1751 : i32 = u_xlati57;
    let x_1753 : vec4<f32> = x_1745.x_AdditionalLightsPosition[x_1751];
    let x_1755 : vec3<f32> = ((-(x_1734) * vec3<f32>(x_1748.w, x_1748.w, x_1748.w)) + vec3<f32>(x_1753.x, x_1753.y, x_1753.z));
    let x_1756 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1755.x, x_1755.y, x_1755.z, x_1756.w);
    let x_1759 : vec4<f32> = u_xlat6;
    let x_1761 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_1759.x, x_1759.y, x_1759.z), vec3<f32>(x_1761.x, x_1761.y, x_1761.z));
    let x_1764 : f32 = u_xlat58;
    u_xlat58 = max(x_1764, 6.10351562e-05f);
    let x_1768 : f32 = u_xlat58;
    u_xlat59 = inverseSqrt(x_1768);
    let x_1770 : f32 = u_xlat59;
    let x_1772 : vec4<f32> = u_xlat6;
    let x_1774 : vec3<f32> = (vec3<f32>(x_1770, x_1770, x_1770) * vec3<f32>(x_1772.x, x_1772.y, x_1772.z));
    let x_1775 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1774.x, x_1774.y, x_1774.z, x_1775.w);
    let x_1777 : f32 = u_xlat58;
    u_xlat59 = (1.0f / x_1777);
    let x_1779 : f32 = u_xlat58;
    let x_1780 : i32 = u_xlati57;
    let x_1782 : f32 = x_1745.x_AdditionalLightsAttenuation[x_1780].x;
    u_xlat58 = (x_1779 * x_1782);
    let x_1784 : f32 = u_xlat58;
    let x_1786 : f32 = u_xlat58;
    u_xlat58 = ((-(x_1784) * x_1786) + 1.0f);
    let x_1789 : f32 = u_xlat58;
    u_xlat58 = max(x_1789, 0.0f);
    let x_1791 : f32 = u_xlat58;
    let x_1792 : f32 = u_xlat58;
    u_xlat58 = (x_1791 * x_1792);
    let x_1794 : f32 = u_xlat58;
    let x_1795 : f32 = u_xlat59;
    u_xlat58 = (x_1794 * x_1795);
    let x_1797 : i32 = u_xlati57;
    let x_1799 : vec4<f32> = x_1745.x_AdditionalLightsSpotDir[x_1797];
    let x_1801 : vec4<f32> = u_xlat6;
    u_xlat59 = dot(vec3<f32>(x_1799.x, x_1799.y, x_1799.z), vec3<f32>(x_1801.x, x_1801.y, x_1801.z));
    let x_1804 : f32 = u_xlat59;
    let x_1805 : i32 = u_xlati57;
    let x_1807 : f32 = x_1745.x_AdditionalLightsAttenuation[x_1805].z;
    let x_1809 : i32 = u_xlati57;
    let x_1811 : f32 = x_1745.x_AdditionalLightsAttenuation[x_1809].w;
    u_xlat59 = ((x_1804 * x_1807) + x_1811);
    let x_1813 : f32 = u_xlat59;
    u_xlat59 = clamp(x_1813, 0.0f, 1.0f);
    let x_1815 : f32 = u_xlat59;
    let x_1816 : f32 = u_xlat59;
    u_xlat59 = (x_1815 * x_1816);
    let x_1818 : f32 = u_xlat58;
    let x_1819 : f32 = u_xlat59;
    u_xlat58 = (x_1818 * x_1819);
    let x_1821 : vec4<f32> = u_xlat1;
    let x_1823 : i32 = u_xlati57;
    let x_1825 : vec4<f32> = x_1745.x_AdditionalLightsColor[x_1823];
    let x_1827 : vec3<f32> = (vec3<f32>(x_1821.x, x_1821.x, x_1821.x) * vec3<f32>(x_1825.x, x_1825.y, x_1825.z));
    let x_1828 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1827.x, x_1827.y, x_1827.z, x_1828.w);
    let x_1830 : f32 = u_xlat58;
    let x_1832 : vec4<f32> = u_xlat7;
    let x_1834 : vec3<f32> = (vec3<f32>(x_1830, x_1830, x_1830) * vec3<f32>(x_1832.x, x_1832.y, x_1832.z));
    let x_1835 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1834.x, x_1834.y, x_1834.z, x_1835.w);
    let x_1837 : vec3<f32> = u_xlat2;
    let x_1838 : vec4<f32> = u_xlat6;
    u_xlat57 = dot(x_1837, vec3<f32>(x_1838.x, x_1838.y, x_1838.z));
    let x_1841 : f32 = u_xlat57;
    u_xlat57 = clamp(x_1841, 0.0f, 1.0f);
    let x_1843 : f32 = u_xlat57;
    let x_1845 : vec4<f32> = u_xlat7;
    let x_1847 : vec3<f32> = (vec3<f32>(x_1843, x_1843, x_1843) * vec3<f32>(x_1845.x, x_1845.y, x_1845.z));
    let x_1848 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1847.x, x_1847.y, x_1847.z, x_1848.w);
    let x_1850 : vec4<f32> = u_xlat6;
    let x_1852 : vec4<f32> = u_xlat1;
    let x_1855 : vec4<f32> = u_xlat5;
    let x_1857 : vec3<f32> = ((vec3<f32>(x_1850.x, x_1850.y, x_1850.z) * vec3<f32>(x_1852.y, x_1852.z, x_1852.w)) + vec3<f32>(x_1855.x, x_1855.y, x_1855.z));
    let x_1858 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1857.x, x_1857.y, x_1857.z, x_1858.w);

    continuing {
      let x_1860 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1860 + bitcast<u32>(1i));
    }
  }
  let x_1862 : vec4<f32> = u_xlat3;
  let x_1864 : vec4<f32> = u_xlat1;
  let x_1867 : vec4<f32> = u_xlat4;
  let x_1869 : vec3<f32> = ((vec3<f32>(x_1862.x, x_1862.y, x_1862.z) * vec3<f32>(x_1864.y, x_1864.z, x_1864.w)) + vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
  let x_1870 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1869.x, x_1869.y, x_1869.z, x_1870.w);
  let x_1872 : vec4<f32> = u_xlat5;
  let x_1874 : vec4<f32> = u_xlat1;
  let x_1876 : vec3<f32> = (vec3<f32>(x_1872.x, x_1872.y, x_1872.z) + vec3<f32>(x_1874.x, x_1874.y, x_1874.z));
  let x_1877 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1876.x, x_1876.y, x_1876.z, x_1877.w);
  let x_1879 : f32 = u_xlat18;
  let x_1880 : f32 = u_xlat18;
  u_xlat18 = (x_1879 * -(x_1880));
  let x_1883 : f32 = u_xlat18;
  u_xlat18 = exp2(x_1883);
  let x_1885 : vec4<f32> = u_xlat1;
  let x_1889 : vec4<f32> = x_44.unity_FogColor;
  let x_1892 : vec3<f32> = (vec3<f32>(x_1885.x, x_1885.y, x_1885.z) + -(vec3<f32>(x_1889.x, x_1889.y, x_1889.z)));
  let x_1893 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1892.x, x_1892.y, x_1892.z, x_1893.w);
  let x_1897 : f32 = u_xlat18;
  let x_1899 : vec4<f32> = u_xlat1;
  let x_1903 : vec4<f32> = x_44.unity_FogColor;
  let x_1905 : vec3<f32> = ((vec3<f32>(x_1897, x_1897, x_1897) * vec3<f32>(x_1899.x, x_1899.y, x_1899.z)) + vec3<f32>(x_1903.x, x_1903.y, x_1903.z));
  let x_1906 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1905.x, x_1905.y, x_1905.z, x_1906.w);
  let x_1909 : f32 = x_57.x_Surface;
  u_xlatb18 = (x_1909 == 1.0f);
  let x_1911 : bool = u_xlatb18;
  let x_1912 : bool = u_xlatb36;
  u_xlatb18 = (x_1911 | x_1912);
  let x_1914 : bool = u_xlatb18;
  if (x_1914) {
    let x_1919 : f32 = u_xlat0.x;
    x_1915 = x_1919;
  } else {
    x_1915 = 1.0f;
  }
  let x_1921 : f32 = x_1915;
  SV_Target0.w = x_1921;
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

