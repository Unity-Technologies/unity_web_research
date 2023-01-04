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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_2 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_2,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
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

var<private> gl_FragCoord : vec4<f32>;

@group(0) @binding(0) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(5) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(1) @binding(3) var<uniform> x_56 : UnityPerMaterial;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(2) var<uniform> x_184 : UnityPerDraw;

@group(0) @binding(1) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(4) var<uniform> x_319 : MainLightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(7) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1672 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_1962 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2083 : AdditionalLightsCookies;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat20 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat1 : vec3<f32>;
  var x_111 : vec3<f32>;
  var u_xlat58 : f32;
  var u_xlat3 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat59 : f32;
  var u_xlat22 : vec3<f32>;
  var u_xlatb23 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat23 : vec3<f32>;
  var u_xlatb42 : vec2<bool>;
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
  var u_xlat25 : vec2<f32>;
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
  var u_xlat24 : f32;
  var txVec28 : vec3<f32>;
  var txVec29 : vec3<f32>;
  var u_xlatb61 : bool;
  var x_1622 : f32;
  var x_1740 : f32;
  var x_1751 : vec3<f32>;
  var u_xlat62 : f32;
  var u_xlatu5 : u32;
  var u_xlatb24 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu63 : u32;
  var u_xlati7 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat64 : f32;
  var u_xlatu8 : u32;
  var u_xlati27 : i32;
  var u_xlati8 : i32;
  var u_xlati46 : i32;
  var u_xlat27 : vec3<f32>;
  var u_xlatb8 : bool;
  var u_xlatb47 : vec2<bool>;
  var u_xlat47 : vec2<f32>;
  var x_2403 : f32;
  var x_2416 : f32;
  var u_xlat65 : f32;
  var x_2478 : f32;
  var x_2489 : vec3<f32>;
  var u_xlat19 : vec3<f32>;
  var u_xlatb19 : bool;
  var x_2659 : f32;
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
  let x_67 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb1 = (x_67 == 0.0f);
  let x_74 : vec3<f32> = vs_TEXCOORD1;
  let x_79 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat20 = (-(x_74) + x_79);
  let x_82 : vec3<f32> = u_xlat20;
  let x_83 : vec3<f32> = u_xlat20;
  u_xlat2.x = dot(x_82, x_83);
  let x_88 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_88);
  let x_91 : vec3<f32> = u_xlat20;
  let x_92 : vec4<f32> = u_xlat2;
  u_xlat20 = (x_91 * vec3<f32>(x_92.x, x_92.x, x_92.x));
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat2.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat2.y = x_102;
  let x_107 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat2.z = x_107;
  let x_110 : bool = u_xlatb1;
  if (x_110) {
    let x_114 : vec3<f32> = u_xlat20;
    x_111 = x_114;
  } else {
    let x_116 : vec4<f32> = u_xlat2;
    x_111 = vec3<f32>(x_116.x, x_116.y, x_116.z);
  }
  let x_118 : vec3<f32> = x_111;
  u_xlat1 = x_118;
  let x_121 : vec3<f32> = vs_TEXCOORD2;
  let x_122 : vec3<f32> = vs_TEXCOORD2;
  u_xlat58 = dot(x_121, x_122);
  let x_124 : f32 = u_xlat58;
  u_xlat58 = inverseSqrt(x_124);
  let x_126 : f32 = u_xlat58;
  let x_128 : vec3<f32> = vs_TEXCOORD2;
  let x_129 : vec3<f32> = (vec3<f32>(x_126, x_126, x_126) * x_128);
  let x_130 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_129.x, x_129.y, x_129.z, x_130.w);
  let x_132 : vec3<f32> = u_xlat1;
  let x_133 : vec3<f32> = u_xlat1;
  u_xlat58 = dot(x_132, x_133);
  let x_135 : f32 = u_xlat58;
  u_xlat58 = max(x_135, 1.17549435e-37f);
  let x_138 : f32 = u_xlat58;
  u_xlat58 = inverseSqrt(x_138);
  let x_142 : f32 = vs_TEXCOORD1.y;
  let x_144 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3 = (x_142 * x_144);
  let x_147 : f32 = x_44.unity_MatrixV[0i].z;
  let x_149 : f32 = vs_TEXCOORD1.x;
  let x_151 : f32 = u_xlat3;
  u_xlat3 = ((x_147 * x_149) + x_151);
  let x_154 : f32 = x_44.unity_MatrixV[2i].z;
  let x_156 : f32 = vs_TEXCOORD1.z;
  let x_158 : f32 = u_xlat3;
  u_xlat3 = ((x_154 * x_156) + x_158);
  let x_160 : f32 = u_xlat3;
  let x_163 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat3 = (x_160 + x_163);
  let x_165 : f32 = u_xlat3;
  let x_169 : f32 = x_44.x_ProjectionParams.y;
  u_xlat3 = (-(x_165) + -(x_169));
  let x_172 : f32 = u_xlat3;
  u_xlat3 = max(x_172, 0.0f);
  let x_174 : f32 = u_xlat3;
  let x_177 : f32 = x_44.unity_FogParams.x;
  u_xlat3 = (x_174 * x_177);
  u_xlat2.w = 1.0f;
  let x_187 : vec4<f32> = x_184.unity_SHAr;
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat4.x = dot(x_187, x_188);
  let x_193 : vec4<f32> = x_184.unity_SHAg;
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat4.y = dot(x_193, x_194);
  let x_199 : vec4<f32> = x_184.unity_SHAb;
  let x_200 : vec4<f32> = u_xlat2;
  u_xlat4.z = dot(x_199, x_200);
  let x_204 : vec4<f32> = u_xlat2;
  let x_206 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec4<f32>(x_204.y, x_204.z, x_204.z, x_204.x) * vec4<f32>(x_206.x, x_206.y, x_206.z, x_206.z));
  let x_212 : vec4<f32> = x_184.unity_SHBr;
  let x_213 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_212, x_213);
  let x_218 : vec4<f32> = x_184.unity_SHBg;
  let x_219 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_218, x_219);
  let x_224 : vec4<f32> = x_184.unity_SHBb;
  let x_225 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_224, x_225);
  let x_230 : f32 = u_xlat2.y;
  let x_232 : f32 = u_xlat2.y;
  u_xlat59 = (x_230 * x_232);
  let x_235 : f32 = u_xlat2.x;
  let x_237 : f32 = u_xlat2.x;
  let x_239 : f32 = u_xlat59;
  u_xlat59 = ((x_235 * x_237) + -(x_239));
  let x_245 : vec4<f32> = x_184.unity_SHC;
  let x_247 : f32 = u_xlat59;
  let x_250 : vec4<f32> = u_xlat6;
  u_xlat22 = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247, x_247, x_247)) + vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : vec3<f32> = u_xlat22;
  let x_254 : vec3<f32> = u_xlat4;
  u_xlat22 = (x_253 + x_254);
  let x_256 : vec3<f32> = u_xlat22;
  u_xlat22 = max(x_256, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_261 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_262 : vec2<f32> = vec2<f32>(x_261.x, x_261.y);
  let x_266 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_262.x, x_262.y));
  let x_267 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_266.x, x_266.y, x_267.z);
  let x_269 : vec3<f32> = u_xlat4;
  let x_271 : vec4<f32> = hlslcc_FragCoord;
  let x_273 : vec2<f32> = (vec2<f32>(x_269.x, x_269.y) * vec2<f32>(x_271.x, x_271.y));
  let x_274 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_273.x, x_273.y, x_274.z);
  let x_277 : f32 = u_xlat4.y;
  let x_280 : f32 = x_44.x_ScaleBiasRt.x;
  let x_283 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat59 = ((x_277 * x_280) + x_283);
  let x_285 : f32 = u_xlat59;
  u_xlat4.z = (-(x_285) + 1.0f);
  let x_294 : vec3<f32> = u_xlat4;
  let x_297 : f32 = x_44.x_GlobalMipBias.x;
  let x_298 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_294.x, x_294.z), x_297);
  u_xlat59 = x_298.x;
  let x_300 : f32 = u_xlat59;
  u_xlat4.x = (x_300 + -1.0f);
  let x_306 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_308 : f32 = u_xlat4.x;
  u_xlat4.x = ((x_306 * x_308) + 1.0f);
  let x_312 : f32 = u_xlat59;
  u_xlat59 = min(x_312, 1.0f);
  let x_321 : f32 = x_319.x_MainLightShadowParams.y;
  u_xlatb23 = (0.0f < x_321);
  let x_323 : bool = u_xlatb23;
  if (x_323) {
    let x_327 : f32 = x_319.x_MainLightShadowParams.y;
    u_xlatb23 = (x_327 == 1.0f);
    let x_329 : bool = u_xlatb23;
    if (x_329) {
      let x_333 : vec4<f32> = vs_TEXCOORD6;
      let x_336 : vec4<f32> = x_319.x_MainLightShadowOffset0;
      u_xlat5 = (vec4<f32>(x_333.x, x_333.y, x_333.x, x_333.y) + x_336);
      let x_339 : vec4<f32> = u_xlat5;
      let x_340 : vec2<f32> = vec2<f32>(x_339.x, x_339.y);
      let x_342 : f32 = vs_TEXCOORD6.z;
      txVec0 = vec3<f32>(x_340.x, x_340.y, x_342);
      let x_354 : vec3<f32> = txVec0;
      let x_356 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_354.xy, x_354.z);
      u_xlat6.x = x_356;
      let x_359 : vec4<f32> = u_xlat5;
      let x_360 : vec2<f32> = vec2<f32>(x_359.z, x_359.w);
      let x_362 : f32 = vs_TEXCOORD6.z;
      txVec1 = vec3<f32>(x_360.x, x_360.y, x_362);
      let x_369 : vec3<f32> = txVec1;
      let x_371 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_369.xy, x_369.z);
      u_xlat6.y = x_371;
      let x_373 : vec4<f32> = vs_TEXCOORD6;
      let x_376 : vec4<f32> = x_319.x_MainLightShadowOffset1;
      u_xlat5 = (vec4<f32>(x_373.x, x_373.y, x_373.x, x_373.y) + x_376);
      let x_379 : vec4<f32> = u_xlat5;
      let x_380 : vec2<f32> = vec2<f32>(x_379.x, x_379.y);
      let x_382 : f32 = vs_TEXCOORD6.z;
      txVec2 = vec3<f32>(x_380.x, x_380.y, x_382);
      let x_389 : vec3<f32> = txVec2;
      let x_391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_389.xy, x_389.z);
      u_xlat6.z = x_391;
      let x_394 : vec4<f32> = u_xlat5;
      let x_395 : vec2<f32> = vec2<f32>(x_394.z, x_394.w);
      let x_397 : f32 = vs_TEXCOORD6.z;
      txVec3 = vec3<f32>(x_395.x, x_395.y, x_397);
      let x_404 : vec3<f32> = txVec3;
      let x_406 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_404.xy, x_404.z);
      u_xlat6.w = x_406;
      let x_409 : vec4<f32> = u_xlat6;
      u_xlat23.x = dot(x_409, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_419 : f32 = x_319.x_MainLightShadowParams.y;
      u_xlatb42.x = (x_419 == 2.0f);
      let x_424 : bool = u_xlatb42.x;
      if (x_424) {
        let x_429 : vec4<f32> = vs_TEXCOORD6;
        let x_432 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        u_xlat42 = ((vec2<f32>(x_429.x, x_429.y) * vec2<f32>(x_432.z, x_432.w)) + vec2<f32>(0.5f, 0.5f));
        let x_438 : vec2<f32> = u_xlat42;
        u_xlat42 = floor(x_438);
        let x_440 : vec4<f32> = vs_TEXCOORD6;
        let x_443 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_446 : vec2<f32> = u_xlat42;
        let x_448 : vec2<f32> = ((vec2<f32>(x_440.x, x_440.y) * vec2<f32>(x_443.z, x_443.w)) + -(x_446));
        let x_449 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_448.x, x_448.y, x_449.z, x_449.w);
        let x_451 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_451.x, x_451.x, x_451.y, x_451.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_456 : vec4<f32> = u_xlat6;
        let x_458 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_456.x, x_456.x, x_456.z, x_456.z) * vec4<f32>(x_458.x, x_458.x, x_458.z, x_458.z));
        let x_462 : vec4<f32> = u_xlat7;
        u_xlat43 = (vec2<f32>(x_462.y, x_462.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_467 : vec4<f32> = u_xlat7;
        let x_470 : vec4<f32> = u_xlat5;
        let x_473 : vec2<f32> = ((vec2<f32>(x_467.x, x_467.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_470.x, x_470.y)));
        let x_474 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_473.x, x_474.y, x_473.y, x_474.w);
        let x_476 : vec4<f32> = u_xlat5;
        let x_479 : vec2<f32> = (-(vec2<f32>(x_476.x, x_476.y)) + vec2<f32>(1.0f, 1.0f));
        let x_480 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_479.x, x_479.y, x_480.z, x_480.w);
        let x_483 : vec4<f32> = u_xlat5;
        u_xlat45 = min(vec2<f32>(x_483.x, x_483.y), vec2<f32>(0.0f, 0.0f));
        let x_487 : vec2<f32> = u_xlat45;
        let x_489 : vec2<f32> = u_xlat45;
        let x_491 : vec4<f32> = u_xlat7;
        u_xlat45 = ((-(x_487) * x_489) + vec2<f32>(x_491.x, x_491.y));
        let x_494 : vec4<f32> = u_xlat5;
        let x_496 : vec2<f32> = max(vec2<f32>(x_494.x, x_494.y), vec2<f32>(0.0f, 0.0f));
        let x_497 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_496.x, x_496.y, x_497.z, x_497.w);
        let x_499 : vec4<f32> = u_xlat5;
        let x_502 : vec4<f32> = u_xlat5;
        let x_505 : vec4<f32> = u_xlat6;
        let x_507 : vec2<f32> = ((-(vec2<f32>(x_499.x, x_499.y)) * vec2<f32>(x_502.x, x_502.y)) + vec2<f32>(x_505.y, x_505.w));
        let x_508 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_507.x, x_507.y, x_508.z, x_508.w);
        let x_510 : vec2<f32> = u_xlat45;
        u_xlat45 = (x_510 + vec2<f32>(1.0f, 1.0f));
        let x_512 : vec4<f32> = u_xlat5;
        let x_514 : vec2<f32> = (vec2<f32>(x_512.x, x_512.y) + vec2<f32>(1.0f, 1.0f));
        let x_515 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_514.x, x_514.y, x_515.z, x_515.w);
        let x_518 : vec4<f32> = u_xlat6;
        let x_522 : vec2<f32> = (vec2<f32>(x_518.x, x_518.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_523 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_522.x, x_522.y, x_523.z, x_523.w);
        let x_526 : vec4<f32> = u_xlat7;
        let x_528 : vec2<f32> = (vec2<f32>(x_526.x, x_526.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_529 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_528.x, x_528.y, x_529.z, x_529.w);
        let x_531 : vec2<f32> = u_xlat45;
        let x_532 : vec2<f32> = (x_531 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_533 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_532.x, x_532.y, x_533.z, x_533.w);
        let x_536 : vec4<f32> = u_xlat5;
        let x_538 : vec2<f32> = (vec2<f32>(x_536.x, x_536.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_539 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_538.x, x_538.y, x_539.z, x_539.w);
        let x_541 : vec4<f32> = u_xlat6;
        let x_543 : vec2<f32> = (vec2<f32>(x_541.y, x_541.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_544 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_543.x, x_543.y, x_544.z, x_544.w);
        let x_547 : f32 = u_xlat7.x;
        u_xlat8.z = x_547;
        let x_550 : f32 = u_xlat5.x;
        u_xlat8.w = x_550;
        let x_553 : f32 = u_xlat10.x;
        u_xlat9.z = x_553;
        let x_556 : f32 = u_xlat43.x;
        u_xlat9.w = x_556;
        let x_558 : vec4<f32> = u_xlat8;
        let x_560 : vec4<f32> = u_xlat9;
        u_xlat6 = (vec4<f32>(x_558.z, x_558.w, x_558.x, x_558.z) + vec4<f32>(x_560.z, x_560.w, x_560.x, x_560.z));
        let x_564 : f32 = u_xlat8.y;
        u_xlat7.z = x_564;
        let x_567 : f32 = u_xlat5.y;
        u_xlat7.w = x_567;
        let x_570 : f32 = u_xlat9.y;
        u_xlat10.z = x_570;
        let x_573 : f32 = u_xlat43.y;
        u_xlat10.w = x_573;
        let x_575 : vec4<f32> = u_xlat7;
        let x_577 : vec4<f32> = u_xlat10;
        let x_579 : vec3<f32> = (vec3<f32>(x_575.z, x_575.y, x_575.w) + vec3<f32>(x_577.z, x_577.y, x_577.w));
        let x_580 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
        let x_582 : vec4<f32> = u_xlat9;
        let x_584 : vec4<f32> = u_xlat6;
        let x_586 : vec3<f32> = (vec3<f32>(x_582.x, x_582.z, x_582.w) / vec3<f32>(x_584.z, x_584.w, x_584.y));
        let x_587 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
        let x_589 : vec4<f32> = u_xlat7;
        let x_595 : vec3<f32> = (vec3<f32>(x_589.x, x_589.y, x_589.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_596 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
        let x_598 : vec4<f32> = u_xlat10;
        let x_600 : vec4<f32> = u_xlat5;
        let x_602 : vec3<f32> = (vec3<f32>(x_598.z, x_598.y, x_598.w) / vec3<f32>(x_600.x, x_600.y, x_600.z));
        let x_603 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
        let x_605 : vec4<f32> = u_xlat8;
        let x_607 : vec3<f32> = (vec3<f32>(x_605.x, x_605.y, x_605.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_608 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_607.x, x_607.y, x_607.z, x_608.w);
        let x_610 : vec4<f32> = u_xlat7;
        let x_613 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_615 : vec3<f32> = (vec3<f32>(x_610.y, x_610.x, x_610.z) * vec3<f32>(x_613.x, x_613.x, x_613.x));
        let x_616 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
        let x_618 : vec4<f32> = u_xlat8;
        let x_621 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_623 : vec3<f32> = (vec3<f32>(x_618.x, x_618.y, x_618.z) * vec3<f32>(x_621.y, x_621.y, x_621.y));
        let x_624 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
        let x_627 : f32 = u_xlat8.x;
        u_xlat7.w = x_627;
        let x_629 : vec2<f32> = u_xlat42;
        let x_632 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_635 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_629.x, x_629.y, x_629.x, x_629.y) * vec4<f32>(x_632.x, x_632.y, x_632.x, x_632.y)) + vec4<f32>(x_635.y, x_635.w, x_635.x, x_635.w));
        let x_638 : vec2<f32> = u_xlat42;
        let x_640 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_643 : vec4<f32> = u_xlat7;
        let x_645 : vec2<f32> = ((x_638 * vec2<f32>(x_640.x, x_640.y)) + vec2<f32>(x_643.z, x_643.w));
        let x_646 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
        let x_649 : f32 = u_xlat7.y;
        u_xlat8.w = x_649;
        let x_651 : vec4<f32> = u_xlat8;
        let x_652 : vec2<f32> = vec2<f32>(x_651.y, x_651.z);
        let x_653 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_653.x, x_652.x, x_653.z, x_652.y);
        let x_656 : vec2<f32> = u_xlat42;
        let x_659 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_662 : vec4<f32> = u_xlat7;
        u_xlat11 = ((vec4<f32>(x_656.x, x_656.y, x_656.x, x_656.y) * vec4<f32>(x_659.x, x_659.y, x_659.x, x_659.y)) + vec4<f32>(x_662.x, x_662.y, x_662.z, x_662.y));
        let x_665 : vec2<f32> = u_xlat42;
        let x_668 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_671 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_665.x, x_665.y, x_665.x, x_665.y) * vec4<f32>(x_668.x, x_668.y, x_668.x, x_668.y)) + vec4<f32>(x_671.w, x_671.y, x_671.w, x_671.z));
        let x_674 : vec2<f32> = u_xlat42;
        let x_677 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_680 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_674.x, x_674.y, x_674.x, x_674.y) * vec4<f32>(x_677.x, x_677.y, x_677.x, x_677.y)) + vec4<f32>(x_680.x, x_680.w, x_680.z, x_680.w));
        let x_684 : vec4<f32> = u_xlat5;
        let x_686 : vec4<f32> = u_xlat6;
        u_xlat12 = (vec4<f32>(x_684.x, x_684.x, x_684.x, x_684.y) * vec4<f32>(x_686.z, x_686.w, x_686.y, x_686.z));
        let x_690 : vec4<f32> = u_xlat5;
        let x_692 : vec4<f32> = u_xlat6;
        u_xlat13 = (vec4<f32>(x_690.y, x_690.y, x_690.z, x_690.z) * x_692);
        let x_695 : f32 = u_xlat5.z;
        let x_697 : f32 = u_xlat6.y;
        u_xlat42.x = (x_695 * x_697);
        let x_701 : vec4<f32> = u_xlat9;
        let x_702 : vec2<f32> = vec2<f32>(x_701.x, x_701.y);
        let x_704 : f32 = vs_TEXCOORD6.z;
        txVec4 = vec3<f32>(x_702.x, x_702.y, x_704);
        let x_712 : vec3<f32> = txVec4;
        let x_714 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_712.xy, x_712.z);
        u_xlat61 = x_714;
        let x_716 : vec4<f32> = u_xlat9;
        let x_717 : vec2<f32> = vec2<f32>(x_716.z, x_716.w);
        let x_719 : f32 = vs_TEXCOORD6.z;
        txVec5 = vec3<f32>(x_717.x, x_717.y, x_719);
        let x_726 : vec3<f32> = txVec5;
        let x_728 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_726.xy, x_726.z);
        u_xlat5.x = x_728;
        let x_731 : f32 = u_xlat5.x;
        let x_733 : f32 = u_xlat12.y;
        u_xlat5.x = (x_731 * x_733);
        let x_737 : f32 = u_xlat12.x;
        let x_738 : f32 = u_xlat61;
        let x_741 : f32 = u_xlat5.x;
        u_xlat61 = ((x_737 * x_738) + x_741);
        let x_744 : vec4<f32> = u_xlat10;
        let x_745 : vec2<f32> = vec2<f32>(x_744.x, x_744.y);
        let x_747 : f32 = vs_TEXCOORD6.z;
        txVec6 = vec3<f32>(x_745.x, x_745.y, x_747);
        let x_754 : vec3<f32> = txVec6;
        let x_756 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_754.xy, x_754.z);
        u_xlat5.x = x_756;
        let x_759 : f32 = u_xlat12.z;
        let x_761 : f32 = u_xlat5.x;
        let x_763 : f32 = u_xlat61;
        u_xlat61 = ((x_759 * x_761) + x_763);
        let x_766 : vec4<f32> = u_xlat8;
        let x_767 : vec2<f32> = vec2<f32>(x_766.x, x_766.y);
        let x_769 : f32 = vs_TEXCOORD6.z;
        txVec7 = vec3<f32>(x_767.x, x_767.y, x_769);
        let x_776 : vec3<f32> = txVec7;
        let x_778 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_776.xy, x_776.z);
        u_xlat5.x = x_778;
        let x_781 : f32 = u_xlat12.w;
        let x_783 : f32 = u_xlat5.x;
        let x_785 : f32 = u_xlat61;
        u_xlat61 = ((x_781 * x_783) + x_785);
        let x_788 : vec4<f32> = u_xlat11;
        let x_789 : vec2<f32> = vec2<f32>(x_788.x, x_788.y);
        let x_791 : f32 = vs_TEXCOORD6.z;
        txVec8 = vec3<f32>(x_789.x, x_789.y, x_791);
        let x_798 : vec3<f32> = txVec8;
        let x_800 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_798.xy, x_798.z);
        u_xlat5.x = x_800;
        let x_803 : f32 = u_xlat13.x;
        let x_805 : f32 = u_xlat5.x;
        let x_807 : f32 = u_xlat61;
        u_xlat61 = ((x_803 * x_805) + x_807);
        let x_810 : vec4<f32> = u_xlat11;
        let x_811 : vec2<f32> = vec2<f32>(x_810.z, x_810.w);
        let x_813 : f32 = vs_TEXCOORD6.z;
        txVec9 = vec3<f32>(x_811.x, x_811.y, x_813);
        let x_820 : vec3<f32> = txVec9;
        let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_820.xy, x_820.z);
        u_xlat5.x = x_822;
        let x_825 : f32 = u_xlat13.y;
        let x_827 : f32 = u_xlat5.x;
        let x_829 : f32 = u_xlat61;
        u_xlat61 = ((x_825 * x_827) + x_829);
        let x_832 : vec4<f32> = u_xlat8;
        let x_833 : vec2<f32> = vec2<f32>(x_832.z, x_832.w);
        let x_835 : f32 = vs_TEXCOORD6.z;
        txVec10 = vec3<f32>(x_833.x, x_833.y, x_835);
        let x_842 : vec3<f32> = txVec10;
        let x_844 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_842.xy, x_842.z);
        u_xlat5.x = x_844;
        let x_847 : f32 = u_xlat13.z;
        let x_849 : f32 = u_xlat5.x;
        let x_851 : f32 = u_xlat61;
        u_xlat61 = ((x_847 * x_849) + x_851);
        let x_854 : vec4<f32> = u_xlat7;
        let x_855 : vec2<f32> = vec2<f32>(x_854.x, x_854.y);
        let x_857 : f32 = vs_TEXCOORD6.z;
        txVec11 = vec3<f32>(x_855.x, x_855.y, x_857);
        let x_864 : vec3<f32> = txVec11;
        let x_866 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_864.xy, x_864.z);
        u_xlat5.x = x_866;
        let x_869 : f32 = u_xlat13.w;
        let x_871 : f32 = u_xlat5.x;
        let x_873 : f32 = u_xlat61;
        u_xlat61 = ((x_869 * x_871) + x_873);
        let x_876 : vec4<f32> = u_xlat7;
        let x_877 : vec2<f32> = vec2<f32>(x_876.z, x_876.w);
        let x_879 : f32 = vs_TEXCOORD6.z;
        txVec12 = vec3<f32>(x_877.x, x_877.y, x_879);
        let x_886 : vec3<f32> = txVec12;
        let x_888 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_886.xy, x_886.z);
        u_xlat5.x = x_888;
        let x_891 : f32 = u_xlat42.x;
        let x_893 : f32 = u_xlat5.x;
        let x_895 : f32 = u_xlat61;
        u_xlat23.x = ((x_891 * x_893) + x_895);
      } else {
        let x_899 : vec4<f32> = vs_TEXCOORD6;
        let x_902 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        u_xlat42 = ((vec2<f32>(x_899.x, x_899.y) * vec2<f32>(x_902.z, x_902.w)) + vec2<f32>(0.5f, 0.5f));
        let x_906 : vec2<f32> = u_xlat42;
        u_xlat42 = floor(x_906);
        let x_908 : vec4<f32> = vs_TEXCOORD6;
        let x_911 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_914 : vec2<f32> = u_xlat42;
        let x_916 : vec2<f32> = ((vec2<f32>(x_908.x, x_908.y) * vec2<f32>(x_911.z, x_911.w)) + -(x_914));
        let x_917 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_916.x, x_916.y, x_917.z, x_917.w);
        let x_919 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_919.x, x_919.x, x_919.y, x_919.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_922 : vec4<f32> = u_xlat6;
        let x_924 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_922.x, x_922.x, x_922.z, x_922.z) * vec4<f32>(x_924.x, x_924.x, x_924.z, x_924.z));
        let x_927 : vec4<f32> = u_xlat7;
        let x_931 : vec2<f32> = (vec2<f32>(x_927.y, x_927.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_932 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_932.x, x_931.x, x_932.z, x_931.y);
        let x_934 : vec4<f32> = u_xlat7;
        let x_937 : vec4<f32> = u_xlat5;
        u_xlat43 = ((vec2<f32>(x_934.x, x_934.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_937.x, x_937.y)));
        let x_941 : vec4<f32> = u_xlat5;
        let x_944 : vec2<f32> = (-(vec2<f32>(x_941.x, x_941.y)) + vec2<f32>(1.0f, 1.0f));
        let x_945 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_944.x, x_945.y, x_944.y, x_945.w);
        let x_947 : vec4<f32> = u_xlat5;
        let x_949 : vec2<f32> = min(vec2<f32>(x_947.x, x_947.y), vec2<f32>(0.0f, 0.0f));
        let x_950 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_949.x, x_949.y, x_950.z, x_950.w);
        let x_952 : vec4<f32> = u_xlat7;
        let x_955 : vec4<f32> = u_xlat7;
        let x_958 : vec4<f32> = u_xlat6;
        let x_960 : vec2<f32> = ((-(vec2<f32>(x_952.x, x_952.y)) * vec2<f32>(x_955.x, x_955.y)) + vec2<f32>(x_958.x, x_958.z));
        let x_961 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_960.x, x_961.y, x_960.y, x_961.w);
        let x_963 : vec4<f32> = u_xlat5;
        let x_965 : vec2<f32> = max(vec2<f32>(x_963.x, x_963.y), vec2<f32>(0.0f, 0.0f));
        let x_966 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_965.x, x_965.y, x_966.z, x_966.w);
        let x_968 : vec4<f32> = u_xlat7;
        let x_971 : vec4<f32> = u_xlat7;
        let x_974 : vec4<f32> = u_xlat6;
        let x_976 : vec2<f32> = ((-(vec2<f32>(x_968.x, x_968.y)) * vec2<f32>(x_971.x, x_971.y)) + vec2<f32>(x_974.y, x_974.w));
        let x_977 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_977.x, x_976.x, x_977.z, x_976.y);
        let x_979 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_979 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_983 : f32 = u_xlat6.y;
        u_xlat7.z = (x_983 * 0.081632003f);
        let x_987 : vec2<f32> = u_xlat43;
        let x_990 : vec2<f32> = (vec2<f32>(x_987.y, x_987.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_991 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_990.x, x_990.y, x_991.z, x_991.w);
        let x_993 : vec4<f32> = u_xlat6;
        u_xlat43 = (vec2<f32>(x_993.x, x_993.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_997 : f32 = u_xlat6.w;
        u_xlat9.z = (x_997 * 0.081632003f);
        let x_1001 : f32 = u_xlat9.y;
        u_xlat7.x = x_1001;
        let x_1003 : vec4<f32> = u_xlat5;
        let x_1010 : vec2<f32> = ((vec2<f32>(x_1003.x, x_1003.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1011 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1011.x, x_1010.x, x_1011.z, x_1010.y);
        let x_1013 : vec4<f32> = u_xlat5;
        let x_1017 : vec2<f32> = ((vec2<f32>(x_1013.x, x_1013.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1018 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1017.x, x_1018.y, x_1017.y, x_1018.w);
        let x_1021 : f32 = u_xlat43.x;
        u_xlat6.y = x_1021;
        let x_1024 : f32 = u_xlat8.y;
        u_xlat6.w = x_1024;
        let x_1026 : vec4<f32> = u_xlat6;
        let x_1027 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1026 + x_1027);
        let x_1029 : vec4<f32> = u_xlat5;
        let x_1032 : vec2<f32> = ((vec2<f32>(x_1029.y, x_1029.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1033 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1033.x, x_1032.x, x_1033.z, x_1032.y);
        let x_1035 : vec4<f32> = u_xlat5;
        let x_1038 : vec2<f32> = ((vec2<f32>(x_1035.y, x_1035.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1039 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1038.x, x_1039.y, x_1038.y, x_1039.w);
        let x_1042 : f32 = u_xlat43.y;
        u_xlat8.y = x_1042;
        let x_1044 : vec4<f32> = u_xlat8;
        let x_1045 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1044 + x_1045);
        let x_1047 : vec4<f32> = u_xlat6;
        let x_1048 : vec4<f32> = u_xlat7;
        u_xlat6 = (x_1047 / x_1048);
        let x_1050 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1050 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1056 : vec4<f32> = u_xlat8;
        let x_1057 : vec4<f32> = u_xlat5;
        u_xlat8 = (x_1056 / x_1057);
        let x_1059 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1059 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1061 : vec4<f32> = u_xlat6;
        let x_1064 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1061.w, x_1061.x, x_1061.y, x_1061.z) * vec4<f32>(x_1064.x, x_1064.x, x_1064.x, x_1064.x));
        let x_1067 : vec4<f32> = u_xlat8;
        let x_1070 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1067.x, x_1067.w, x_1067.y, x_1067.z) * vec4<f32>(x_1070.y, x_1070.y, x_1070.y, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat6;
        let x_1074 : vec3<f32> = vec3<f32>(x_1073.y, x_1073.z, x_1073.w);
        let x_1075 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1074.x, x_1075.y, x_1074.y, x_1074.z);
        let x_1078 : f32 = u_xlat8.x;
        u_xlat9.y = x_1078;
        let x_1080 : vec2<f32> = u_xlat42;
        let x_1083 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1086 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.y) * vec4<f32>(x_1083.x, x_1083.y, x_1083.x, x_1083.y)) + vec4<f32>(x_1086.x, x_1086.y, x_1086.z, x_1086.y));
        let x_1089 : vec2<f32> = u_xlat42;
        let x_1091 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1094 : vec4<f32> = u_xlat9;
        let x_1096 : vec2<f32> = ((x_1089 * vec2<f32>(x_1091.x, x_1091.y)) + vec2<f32>(x_1094.w, x_1094.y));
        let x_1097 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1096.x, x_1096.y, x_1097.z, x_1097.w);
        let x_1100 : f32 = u_xlat9.y;
        u_xlat6.y = x_1100;
        let x_1103 : f32 = u_xlat8.z;
        u_xlat9.y = x_1103;
        let x_1105 : vec2<f32> = u_xlat42;
        let x_1108 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1111 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1105.x, x_1105.y, x_1105.x, x_1105.y) * vec4<f32>(x_1108.x, x_1108.y, x_1108.x, x_1108.y)) + vec4<f32>(x_1111.x, x_1111.y, x_1111.z, x_1111.y));
        let x_1115 : vec2<f32> = u_xlat42;
        let x_1117 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1120 : vec4<f32> = u_xlat9;
        u_xlat49 = ((x_1115 * vec2<f32>(x_1117.x, x_1117.y)) + vec2<f32>(x_1120.w, x_1120.y));
        let x_1124 : f32 = u_xlat9.y;
        u_xlat6.z = x_1124;
        let x_1126 : vec2<f32> = u_xlat42;
        let x_1129 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1132 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y) * vec4<f32>(x_1129.x, x_1129.y, x_1129.x, x_1129.y)) + vec4<f32>(x_1132.x, x_1132.y, x_1132.x, x_1132.z));
        let x_1136 : f32 = u_xlat8.w;
        u_xlat9.y = x_1136;
        let x_1139 : vec2<f32> = u_xlat42;
        let x_1142 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1145 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1139.x, x_1139.y, x_1139.x, x_1139.y) * vec4<f32>(x_1142.x, x_1142.y, x_1142.x, x_1142.y)) + vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1145.y));
        let x_1149 : vec2<f32> = u_xlat42;
        let x_1151 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat25 = ((x_1149 * vec2<f32>(x_1151.x, x_1151.y)) + vec2<f32>(x_1154.w, x_1154.y));
        let x_1158 : f32 = u_xlat9.y;
        u_xlat6.w = x_1158;
        let x_1161 : vec2<f32> = u_xlat42;
        let x_1163 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1166 : vec4<f32> = u_xlat6;
        u_xlat15 = ((x_1161 * vec2<f32>(x_1163.x, x_1163.y)) + vec2<f32>(x_1166.x, x_1166.w));
        let x_1169 : vec4<f32> = u_xlat9;
        let x_1170 : vec3<f32> = vec3<f32>(x_1169.x, x_1169.z, x_1169.w);
        let x_1171 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1170.x, x_1171.y, x_1170.y, x_1170.z);
        let x_1173 : vec2<f32> = u_xlat42;
        let x_1176 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1179 : vec4<f32> = u_xlat8;
        u_xlat9 = ((vec4<f32>(x_1173.x, x_1173.y, x_1173.x, x_1173.y) * vec4<f32>(x_1176.x, x_1176.y, x_1176.x, x_1176.y)) + vec4<f32>(x_1179.x, x_1179.y, x_1179.z, x_1179.y));
        let x_1183 : vec2<f32> = u_xlat42;
        let x_1185 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1188 : vec4<f32> = u_xlat8;
        u_xlat46 = ((x_1183 * vec2<f32>(x_1185.x, x_1185.y)) + vec2<f32>(x_1188.w, x_1188.y));
        let x_1192 : f32 = u_xlat6.x;
        u_xlat8.x = x_1192;
        let x_1194 : vec2<f32> = u_xlat42;
        let x_1196 : vec4<f32> = x_319.x_MainLightShadowmapSize;
        let x_1199 : vec4<f32> = u_xlat8;
        u_xlat42 = ((x_1194 * vec2<f32>(x_1196.x, x_1196.y)) + vec2<f32>(x_1199.x, x_1199.y));
        let x_1203 : vec4<f32> = u_xlat5;
        let x_1205 : vec4<f32> = u_xlat7;
        u_xlat16 = (vec4<f32>(x_1203.x, x_1203.x, x_1203.x, x_1203.x) * x_1205);
        let x_1208 : vec4<f32> = u_xlat5;
        let x_1210 : vec4<f32> = u_xlat7;
        u_xlat17 = (vec4<f32>(x_1208.y, x_1208.y, x_1208.y, x_1208.y) * x_1210);
        let x_1213 : vec4<f32> = u_xlat5;
        let x_1215 : vec4<f32> = u_xlat7;
        u_xlat18 = (vec4<f32>(x_1213.z, x_1213.z, x_1213.z, x_1213.z) * x_1215);
        let x_1217 : vec4<f32> = u_xlat5;
        let x_1219 : vec4<f32> = u_xlat7;
        u_xlat5 = (vec4<f32>(x_1217.w, x_1217.w, x_1217.w, x_1217.w) * x_1219);
        let x_1222 : vec4<f32> = u_xlat10;
        let x_1223 : vec2<f32> = vec2<f32>(x_1222.x, x_1222.y);
        let x_1225 : f32 = vs_TEXCOORD6.z;
        txVec13 = vec3<f32>(x_1223.x, x_1223.y, x_1225);
        let x_1232 : vec3<f32> = txVec13;
        let x_1234 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1232.xy, x_1232.z);
        u_xlat6.x = x_1234;
        let x_1237 : vec4<f32> = u_xlat10;
        let x_1238 : vec2<f32> = vec2<f32>(x_1237.z, x_1237.w);
        let x_1240 : f32 = vs_TEXCOORD6.z;
        txVec14 = vec3<f32>(x_1238.x, x_1238.y, x_1240);
        let x_1248 : vec3<f32> = txVec14;
        let x_1250 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1248.xy, x_1248.z);
        u_xlat63 = x_1250;
        let x_1251 : f32 = u_xlat63;
        let x_1253 : f32 = u_xlat16.y;
        u_xlat63 = (x_1251 * x_1253);
        let x_1256 : f32 = u_xlat16.x;
        let x_1258 : f32 = u_xlat6.x;
        let x_1260 : f32 = u_xlat63;
        u_xlat6.x = ((x_1256 * x_1258) + x_1260);
        let x_1264 : vec4<f32> = u_xlat11;
        let x_1265 : vec2<f32> = vec2<f32>(x_1264.x, x_1264.y);
        let x_1267 : f32 = vs_TEXCOORD6.z;
        txVec15 = vec3<f32>(x_1265.x, x_1265.y, x_1267);
        let x_1274 : vec3<f32> = txVec15;
        let x_1276 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1274.xy, x_1274.z);
        u_xlat63 = x_1276;
        let x_1278 : f32 = u_xlat16.z;
        let x_1279 : f32 = u_xlat63;
        let x_1282 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1278 * x_1279) + x_1282);
        let x_1286 : vec4<f32> = u_xlat13;
        let x_1287 : vec2<f32> = vec2<f32>(x_1286.x, x_1286.y);
        let x_1289 : f32 = vs_TEXCOORD6.z;
        txVec16 = vec3<f32>(x_1287.x, x_1287.y, x_1289);
        let x_1296 : vec3<f32> = txVec16;
        let x_1298 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1296.xy, x_1296.z);
        u_xlat63 = x_1298;
        let x_1300 : f32 = u_xlat16.w;
        let x_1301 : f32 = u_xlat63;
        let x_1304 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1300 * x_1301) + x_1304);
        let x_1308 : vec4<f32> = u_xlat12;
        let x_1309 : vec2<f32> = vec2<f32>(x_1308.x, x_1308.y);
        let x_1311 : f32 = vs_TEXCOORD6.z;
        txVec17 = vec3<f32>(x_1309.x, x_1309.y, x_1311);
        let x_1318 : vec3<f32> = txVec17;
        let x_1320 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1318.xy, x_1318.z);
        u_xlat63 = x_1320;
        let x_1322 : f32 = u_xlat17.x;
        let x_1323 : f32 = u_xlat63;
        let x_1326 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1322 * x_1323) + x_1326);
        let x_1330 : vec4<f32> = u_xlat12;
        let x_1331 : vec2<f32> = vec2<f32>(x_1330.z, x_1330.w);
        let x_1333 : f32 = vs_TEXCOORD6.z;
        txVec18 = vec3<f32>(x_1331.x, x_1331.y, x_1333);
        let x_1340 : vec3<f32> = txVec18;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1340.xy, x_1340.z);
        u_xlat63 = x_1342;
        let x_1344 : f32 = u_xlat17.y;
        let x_1345 : f32 = u_xlat63;
        let x_1348 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1344 * x_1345) + x_1348);
        let x_1352 : vec2<f32> = u_xlat49;
        let x_1354 : f32 = vs_TEXCOORD6.z;
        txVec19 = vec3<f32>(x_1352.x, x_1352.y, x_1354);
        let x_1361 : vec3<f32> = txVec19;
        let x_1363 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1361.xy, x_1361.z);
        u_xlat63 = x_1363;
        let x_1365 : f32 = u_xlat17.z;
        let x_1366 : f32 = u_xlat63;
        let x_1369 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1365 * x_1366) + x_1369);
        let x_1373 : vec4<f32> = u_xlat13;
        let x_1374 : vec2<f32> = vec2<f32>(x_1373.z, x_1373.w);
        let x_1376 : f32 = vs_TEXCOORD6.z;
        txVec20 = vec3<f32>(x_1374.x, x_1374.y, x_1376);
        let x_1383 : vec3<f32> = txVec20;
        let x_1385 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1383.xy, x_1383.z);
        u_xlat63 = x_1385;
        let x_1387 : f32 = u_xlat17.w;
        let x_1388 : f32 = u_xlat63;
        let x_1391 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1387 * x_1388) + x_1391);
        let x_1395 : vec4<f32> = u_xlat14;
        let x_1396 : vec2<f32> = vec2<f32>(x_1395.x, x_1395.y);
        let x_1398 : f32 = vs_TEXCOORD6.z;
        txVec21 = vec3<f32>(x_1396.x, x_1396.y, x_1398);
        let x_1405 : vec3<f32> = txVec21;
        let x_1407 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1405.xy, x_1405.z);
        u_xlat63 = x_1407;
        let x_1409 : f32 = u_xlat18.x;
        let x_1410 : f32 = u_xlat63;
        let x_1413 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1409 * x_1410) + x_1413);
        let x_1417 : vec4<f32> = u_xlat14;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.z, x_1417.w);
        let x_1420 : f32 = vs_TEXCOORD6.z;
        txVec22 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1427 : vec3<f32> = txVec22;
        let x_1429 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1427.xy, x_1427.z);
        u_xlat63 = x_1429;
        let x_1431 : f32 = u_xlat18.y;
        let x_1432 : f32 = u_xlat63;
        let x_1435 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1431 * x_1432) + x_1435);
        let x_1439 : vec2<f32> = u_xlat25;
        let x_1441 : f32 = vs_TEXCOORD6.z;
        txVec23 = vec3<f32>(x_1439.x, x_1439.y, x_1441);
        let x_1448 : vec3<f32> = txVec23;
        let x_1450 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1448.xy, x_1448.z);
        u_xlat25.x = x_1450;
        let x_1453 : f32 = u_xlat18.z;
        let x_1455 : f32 = u_xlat25.x;
        let x_1458 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1453 * x_1455) + x_1458);
        let x_1462 : vec2<f32> = u_xlat15;
        let x_1464 : f32 = vs_TEXCOORD6.z;
        txVec24 = vec3<f32>(x_1462.x, x_1462.y, x_1464);
        let x_1471 : vec3<f32> = txVec24;
        let x_1473 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1471.xy, x_1471.z);
        u_xlat25.x = x_1473;
        let x_1476 : f32 = u_xlat18.w;
        let x_1478 : f32 = u_xlat25.x;
        let x_1481 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1476 * x_1478) + x_1481);
        let x_1485 : vec4<f32> = u_xlat9;
        let x_1486 : vec2<f32> = vec2<f32>(x_1485.x, x_1485.y);
        let x_1488 : f32 = vs_TEXCOORD6.z;
        txVec25 = vec3<f32>(x_1486.x, x_1486.y, x_1488);
        let x_1495 : vec3<f32> = txVec25;
        let x_1497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1495.xy, x_1495.z);
        u_xlat25.x = x_1497;
        let x_1500 : f32 = u_xlat5.x;
        let x_1502 : f32 = u_xlat25.x;
        let x_1505 : f32 = u_xlat6.x;
        u_xlat5.x = ((x_1500 * x_1502) + x_1505);
        let x_1509 : vec4<f32> = u_xlat9;
        let x_1510 : vec2<f32> = vec2<f32>(x_1509.z, x_1509.w);
        let x_1512 : f32 = vs_TEXCOORD6.z;
        txVec26 = vec3<f32>(x_1510.x, x_1510.y, x_1512);
        let x_1519 : vec3<f32> = txVec26;
        let x_1521 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1519.xy, x_1519.z);
        u_xlat6.x = x_1521;
        let x_1524 : f32 = u_xlat5.y;
        let x_1526 : f32 = u_xlat6.x;
        let x_1529 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1524 * x_1526) + x_1529);
        let x_1533 : vec2<f32> = u_xlat46;
        let x_1535 : f32 = vs_TEXCOORD6.z;
        txVec27 = vec3<f32>(x_1533.x, x_1533.y, x_1535);
        let x_1543 : vec3<f32> = txVec27;
        let x_1545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1543.xy, x_1543.z);
        u_xlat24 = x_1545;
        let x_1547 : f32 = u_xlat5.z;
        let x_1548 : f32 = u_xlat24;
        let x_1551 : f32 = u_xlat5.x;
        u_xlat5.x = ((x_1547 * x_1548) + x_1551);
        let x_1555 : vec2<f32> = u_xlat42;
        let x_1557 : f32 = vs_TEXCOORD6.z;
        txVec28 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec28;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1564.xy, x_1564.z);
        u_xlat42.x = x_1566;
        let x_1569 : f32 = u_xlat5.w;
        let x_1571 : f32 = u_xlat42.x;
        let x_1574 : f32 = u_xlat5.x;
        u_xlat23.x = ((x_1569 * x_1571) + x_1574);
      }
    }
  } else {
    let x_1579 : vec4<f32> = vs_TEXCOORD6;
    let x_1580 : vec2<f32> = vec2<f32>(x_1579.x, x_1579.y);
    let x_1582 : f32 = vs_TEXCOORD6.z;
    txVec29 = vec3<f32>(x_1580.x, x_1580.y, x_1582);
    let x_1589 : vec3<f32> = txVec29;
    let x_1591 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1589.xy, x_1589.z);
    u_xlat23.x = x_1591;
  }
  let x_1594 : f32 = x_319.x_MainLightShadowParams.x;
  u_xlat42.x = (-(x_1594) + 1.0f);
  let x_1599 : f32 = u_xlat23.x;
  let x_1601 : f32 = x_319.x_MainLightShadowParams.x;
  let x_1604 : f32 = u_xlat42.x;
  u_xlat23.x = ((x_1599 * x_1601) + x_1604);
  let x_1608 : f32 = vs_TEXCOORD6.z;
  u_xlatb42.x = (0.0f >= x_1608);
  let x_1613 : f32 = vs_TEXCOORD6.z;
  u_xlatb61 = (x_1613 >= 1.0f);
  let x_1615 : bool = u_xlatb61;
  let x_1617 : bool = u_xlatb42.x;
  u_xlatb42.x = (x_1615 | x_1617);
  let x_1621 : bool = u_xlatb42.x;
  if (x_1621) {
    x_1622 = 1.0f;
  } else {
    let x_1627 : f32 = u_xlat23.x;
    x_1622 = x_1627;
  }
  let x_1628 : f32 = x_1622;
  u_xlat23.x = x_1628;
  let x_1630 : vec3<f32> = vs_TEXCOORD1;
  let x_1632 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1634 : vec3<f32> = (x_1630 + -(x_1632));
  let x_1635 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1634.x, x_1634.y, x_1634.z, x_1635.w);
  let x_1637 : vec4<f32> = u_xlat5;
  let x_1639 : vec4<f32> = u_xlat5;
  u_xlat42.x = dot(vec3<f32>(x_1637.x, x_1637.y, x_1637.z), vec3<f32>(x_1639.x, x_1639.y, x_1639.z));
  let x_1644 : f32 = u_xlat42.x;
  let x_1646 : f32 = x_319.x_MainLightShadowParams.z;
  let x_1649 : f32 = x_319.x_MainLightShadowParams.w;
  u_xlat42.x = ((x_1644 * x_1646) + x_1649);
  let x_1653 : f32 = u_xlat42.x;
  u_xlat42.x = clamp(x_1653, 0.0f, 1.0f);
  let x_1657 : f32 = u_xlat23.x;
  u_xlat61 = (-(x_1657) + 1.0f);
  let x_1661 : f32 = u_xlat42.x;
  let x_1662 : f32 = u_xlat61;
  let x_1665 : f32 = u_xlat23.x;
  u_xlat23.x = ((x_1661 * x_1662) + x_1665);
  let x_1674 : f32 = x_1672.x_MainLightCookieTextureFormat;
  u_xlatb42.x = !((x_1674 == -1.0f));
  let x_1678 : bool = u_xlatb42.x;
  if (x_1678) {
    let x_1681 : vec3<f32> = vs_TEXCOORD1;
    let x_1684 : vec4<f32> = x_1672.x_MainLightWorldToLight[1i];
    u_xlat42 = (vec2<f32>(x_1681.y, x_1681.y) * vec2<f32>(x_1684.x, x_1684.y));
    let x_1688 : vec4<f32> = x_1672.x_MainLightWorldToLight[0i];
    let x_1690 : vec3<f32> = vs_TEXCOORD1;
    let x_1693 : vec2<f32> = u_xlat42;
    u_xlat42 = ((vec2<f32>(x_1688.x, x_1688.y) * vec2<f32>(x_1690.x, x_1690.x)) + x_1693);
    let x_1696 : vec4<f32> = x_1672.x_MainLightWorldToLight[2i];
    let x_1698 : vec3<f32> = vs_TEXCOORD1;
    let x_1701 : vec2<f32> = u_xlat42;
    u_xlat42 = ((vec2<f32>(x_1696.x, x_1696.y) * vec2<f32>(x_1698.z, x_1698.z)) + x_1701);
    let x_1703 : vec2<f32> = u_xlat42;
    let x_1705 : vec4<f32> = x_1672.x_MainLightWorldToLight[3i];
    u_xlat42 = (x_1703 + vec2<f32>(x_1705.x, x_1705.y));
    let x_1708 : vec2<f32> = u_xlat42;
    u_xlat42 = ((x_1708 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1716 : vec2<f32> = u_xlat42;
    let x_1718 : f32 = x_44.x_GlobalMipBias.x;
    let x_1719 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1716, x_1718);
    u_xlat5 = x_1719;
    let x_1721 : f32 = x_1672.x_MainLightCookieTextureFormat;
    let x_1723 : f32 = x_1672.x_MainLightCookieTextureFormat;
    let x_1725 : f32 = x_1672.x_MainLightCookieTextureFormat;
    let x_1727 : f32 = x_1672.x_MainLightCookieTextureFormat;
    let x_1728 : vec4<f32> = vec4<f32>(x_1721, x_1723, x_1725, x_1727);
    let x_1736 : vec4<bool> = (vec4<f32>(x_1728.x, x_1728.y, x_1728.z, x_1728.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb42 = vec2<bool>(x_1736.x, x_1736.y);
    let x_1739 : bool = u_xlatb42.y;
    if (x_1739) {
      let x_1744 : f32 = u_xlat5.w;
      x_1740 = x_1744;
    } else {
      let x_1747 : f32 = u_xlat5.x;
      x_1740 = x_1747;
    }
    let x_1748 : f32 = x_1740;
    u_xlat61 = x_1748;
    let x_1750 : bool = u_xlatb42.x;
    if (x_1750) {
      let x_1754 : vec4<f32> = u_xlat5;
      x_1751 = vec3<f32>(x_1754.x, x_1754.y, x_1754.z);
    } else {
      let x_1757 : f32 = u_xlat61;
      x_1751 = vec3<f32>(x_1757, x_1757, x_1757);
    }
    let x_1759 : vec3<f32> = x_1751;
    let x_1760 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_1759.x, x_1759.y, x_1759.z, x_1760.w);
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
  }
  let x_1766 : vec4<f32> = u_xlat5;
  let x_1769 : vec4<f32> = x_44.x_MainLightColor;
  let x_1771 : vec3<f32> = (vec3<f32>(x_1766.x, x_1766.y, x_1766.z) * vec3<f32>(x_1769.x, x_1769.y, x_1769.z));
  let x_1772 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1771.x, x_1771.y, x_1771.z, x_1772.w);
  let x_1774 : vec3<f32> = u_xlat4;
  let x_1776 : vec4<f32> = u_xlat5;
  let x_1778 : vec3<f32> = (vec3<f32>(x_1774.x, x_1774.x, x_1774.x) * vec3<f32>(x_1776.x, x_1776.y, x_1776.z));
  let x_1779 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1778.x, x_1778.y, x_1778.z, x_1779.w);
  let x_1781 : f32 = u_xlat59;
  let x_1783 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_1781, x_1781, x_1781) * x_1783);
  let x_1786 : f32 = u_xlat23.x;
  let x_1789 : f32 = x_184.unity_LightData.z;
  u_xlat59 = (x_1786 * x_1789);
  let x_1791 : f32 = u_xlat59;
  let x_1793 : vec4<f32> = u_xlat5;
  u_xlat23 = (vec3<f32>(x_1791, x_1791, x_1791) * vec3<f32>(x_1793.x, x_1793.y, x_1793.z));
  let x_1796 : vec4<f32> = u_xlat2;
  let x_1799 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat59 = dot(vec3<f32>(x_1796.x, x_1796.y, x_1796.z), vec3<f32>(x_1799.x, x_1799.y, x_1799.z));
  let x_1802 : f32 = u_xlat59;
  u_xlat59 = clamp(x_1802, 0.0f, 1.0f);
  let x_1804 : f32 = u_xlat59;
  let x_1806 : vec3<f32> = u_xlat23;
  let x_1807 : vec3<f32> = (vec3<f32>(x_1804, x_1804, x_1804) * x_1806);
  let x_1808 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1807.x, x_1807.y, x_1807.z, x_1808.w);
  let x_1811 : f32 = u_xlat0.x;
  u_xlat59 = ((x_1811 * 10.0f) + 1.0f);
  let x_1815 : f32 = u_xlat59;
  u_xlat59 = exp2(x_1815);
  let x_1817 : vec3<f32> = u_xlat1;
  let x_1818 : f32 = u_xlat58;
  let x_1822 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1824 : vec3<f32> = ((x_1817 * vec3<f32>(x_1818, x_1818, x_1818)) + vec3<f32>(x_1822.x, x_1822.y, x_1822.z));
  let x_1825 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1824.x, x_1824.y, x_1824.z, x_1825.w);
  let x_1828 : vec4<f32> = u_xlat6;
  let x_1830 : vec4<f32> = u_xlat6;
  u_xlat62 = dot(vec3<f32>(x_1828.x, x_1828.y, x_1828.z), vec3<f32>(x_1830.x, x_1830.y, x_1830.z));
  let x_1833 : f32 = u_xlat62;
  u_xlat62 = max(x_1833, 1.17549435e-37f);
  let x_1835 : f32 = u_xlat62;
  u_xlat62 = inverseSqrt(x_1835);
  let x_1837 : f32 = u_xlat62;
  let x_1839 : vec4<f32> = u_xlat6;
  let x_1841 : vec3<f32> = (vec3<f32>(x_1837, x_1837, x_1837) * vec3<f32>(x_1839.x, x_1839.y, x_1839.z));
  let x_1842 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1841.x, x_1841.y, x_1841.z, x_1842.w);
  let x_1844 : vec4<f32> = u_xlat2;
  let x_1846 : vec4<f32> = u_xlat6;
  u_xlat62 = dot(vec3<f32>(x_1844.x, x_1844.y, x_1844.z), vec3<f32>(x_1846.x, x_1846.y, x_1846.z));
  let x_1849 : f32 = u_xlat62;
  u_xlat62 = clamp(x_1849, 0.0f, 1.0f);
  let x_1851 : f32 = u_xlat62;
  u_xlat62 = log2(x_1851);
  let x_1853 : f32 = u_xlat59;
  let x_1854 : f32 = u_xlat62;
  u_xlat62 = (x_1853 * x_1854);
  let x_1856 : f32 = u_xlat62;
  u_xlat62 = exp2(x_1856);
  let x_1858 : f32 = u_xlat62;
  let x_1861 : vec4<f32> = x_56.x_SpecColor;
  let x_1863 : vec3<f32> = (vec3<f32>(x_1858, x_1858, x_1858) * vec3<f32>(x_1861.x, x_1861.y, x_1861.z));
  let x_1864 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1863.x, x_1863.y, x_1863.z, x_1864.w);
  let x_1866 : vec3<f32> = u_xlat23;
  let x_1867 : vec4<f32> = u_xlat6;
  u_xlat23 = (x_1866 * vec3<f32>(x_1867.x, x_1867.y, x_1867.z));
  let x_1870 : vec4<f32> = u_xlat5;
  let x_1872 : vec4<f32> = u_xlat0;
  let x_1875 : vec3<f32> = u_xlat23;
  u_xlat23 = ((vec3<f32>(x_1870.x, x_1870.y, x_1870.z) * vec3<f32>(x_1872.y, x_1872.z, x_1872.w)) + x_1875);
  let x_1878 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1880 : f32 = x_184.unity_LightData.y;
  u_xlat5.x = min(x_1878, x_1880);
  let x_1886 : f32 = u_xlat5.x;
  u_xlatu5 = bitcast<u32>(i32(x_1886));
  let x_1891 : f32 = x_1672.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1893 : f32 = x_1672.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1895 : f32 = x_1672.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1897 : f32 = x_1672.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1898 : vec4<f32> = vec4<f32>(x_1891, x_1893, x_1895, x_1897);
  let x_1905 : vec4<bool> = (vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1898.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb24 = vec2<bool>(x_1905.x, x_1905.y);
  u_xlat6.x = 0.0f;
  u_xlat6.y = 0.0f;
  u_xlat6.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1916 : u32 = u_xlatu_loop_1;
    let x_1917 : u32 = u_xlatu5;
    if ((x_1916 < x_1917)) {
    } else {
      break;
    }
    let x_1920 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_1920 >> 2u);
    let x_1924 : u32 = u_xlatu_loop_1;
    u_xlati7 = bitcast<i32>((x_1924 & 3u));
    let x_1927 : u32 = u_xlatu63;
    let x_1930 : vec4<f32> = x_184.unity_LightIndices[bitcast<i32>(x_1927)];
    let x_1940 : i32 = u_xlati7;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1945 : vec4<u32> = indexable[x_1940];
    u_xlat63 = dot(x_1930, bitcast<vec4<f32>>(x_1945));
    let x_1948 : f32 = u_xlat63;
    u_xlatu63 = bitcast<u32>(i32(x_1948));
    let x_1951 : vec3<f32> = vs_TEXCOORD1;
    let x_1963 : u32 = u_xlatu63;
    let x_1966 : vec4<f32> = x_1962.x_AdditionalLightsPosition[bitcast<i32>(x_1963)];
    let x_1969 : u32 = u_xlatu63;
    let x_1972 : vec4<f32> = x_1962.x_AdditionalLightsPosition[bitcast<i32>(x_1969)];
    let x_1974 : vec3<f32> = ((-(x_1951) * vec3<f32>(x_1966.w, x_1966.w, x_1966.w)) + vec3<f32>(x_1972.x, x_1972.y, x_1972.z));
    let x_1975 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1974.x, x_1974.y, x_1974.z, x_1975.w);
    let x_1978 : vec4<f32> = u_xlat7;
    let x_1980 : vec4<f32> = u_xlat7;
    u_xlat64 = dot(vec3<f32>(x_1978.x, x_1978.y, x_1978.z), vec3<f32>(x_1980.x, x_1980.y, x_1980.z));
    let x_1983 : f32 = u_xlat64;
    u_xlat64 = max(x_1983, 6.10351562e-05f);
    let x_1986 : f32 = u_xlat64;
    u_xlat8.x = inverseSqrt(x_1986);
    let x_1989 : vec4<f32> = u_xlat7;
    let x_1991 : vec4<f32> = u_xlat8;
    let x_1993 : vec3<f32> = (vec3<f32>(x_1989.x, x_1989.y, x_1989.z) * vec3<f32>(x_1991.x, x_1991.x, x_1991.x));
    let x_1994 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1993.x, x_1993.y, x_1993.z, x_1994.w);
    let x_1996 : f32 = u_xlat64;
    u_xlat8.x = (1.0f / x_1996);
    let x_1999 : f32 = u_xlat64;
    let x_2000 : u32 = u_xlatu63;
    let x_2003 : f32 = x_1962.x_AdditionalLightsAttenuation[bitcast<i32>(x_2000)].x;
    u_xlat64 = (x_1999 * x_2003);
    let x_2005 : f32 = u_xlat64;
    let x_2007 : f32 = u_xlat64;
    u_xlat64 = ((-(x_2005) * x_2007) + 1.0f);
    let x_2010 : f32 = u_xlat64;
    u_xlat64 = max(x_2010, 0.0f);
    let x_2012 : f32 = u_xlat64;
    let x_2013 : f32 = u_xlat64;
    u_xlat64 = (x_2012 * x_2013);
    let x_2015 : f32 = u_xlat64;
    let x_2017 : f32 = u_xlat8.x;
    u_xlat64 = (x_2015 * x_2017);
    let x_2019 : u32 = u_xlatu63;
    let x_2022 : vec4<f32> = x_1962.x_AdditionalLightsSpotDir[bitcast<i32>(x_2019)];
    let x_2024 : vec4<f32> = u_xlat7;
    u_xlat8.x = dot(vec3<f32>(x_2022.x, x_2022.y, x_2022.z), vec3<f32>(x_2024.x, x_2024.y, x_2024.z));
    let x_2029 : f32 = u_xlat8.x;
    let x_2030 : u32 = u_xlatu63;
    let x_2033 : f32 = x_1962.x_AdditionalLightsAttenuation[bitcast<i32>(x_2030)].z;
    let x_2035 : u32 = u_xlatu63;
    let x_2038 : f32 = x_1962.x_AdditionalLightsAttenuation[bitcast<i32>(x_2035)].w;
    u_xlat8.x = ((x_2029 * x_2033) + x_2038);
    let x_2042 : f32 = u_xlat8.x;
    u_xlat8.x = clamp(x_2042, 0.0f, 1.0f);
    let x_2046 : f32 = u_xlat8.x;
    let x_2048 : f32 = u_xlat8.x;
    u_xlat8.x = (x_2046 * x_2048);
    let x_2051 : f32 = u_xlat64;
    let x_2053 : f32 = u_xlat8.x;
    u_xlat64 = (x_2051 * x_2053);
    let x_2056 : u32 = u_xlatu63;
    u_xlatu8 = (x_2056 >> 5u);
    let x_2059 : u32 = u_xlatu63;
    u_xlati27 = (1i << bitcast<u32>((bitcast<i32>(x_2059) & 31i)));
    let x_2065 : i32 = u_xlati27;
    let x_2067 : u32 = u_xlatu8;
    let x_2070 : f32 = x_1672.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2067)].el;
    u_xlati8 = bitcast<i32>((bitcast<u32>(x_2065) & bitcast<u32>(x_2070)));
    let x_2074 : i32 = u_xlati8;
    if ((x_2074 != 0i)) {
      let x_2084 : u32 = u_xlatu63;
      let x_2087 : f32 = x_2083.x_AdditionalLightsLightTypes[bitcast<i32>(x_2084)].el;
      u_xlati8 = i32(x_2087);
      let x_2089 : i32 = u_xlati8;
      u_xlati27 = select(1i, 0i, (x_2089 != 0i));
      let x_2093 : u32 = u_xlatu63;
      u_xlati46 = (bitcast<i32>(x_2093) << bitcast<u32>(2i));
      let x_2096 : i32 = u_xlati27;
      if ((x_2096 != 0i)) {
        let x_2100 : vec3<f32> = vs_TEXCOORD1;
        let x_2102 : i32 = u_xlati46;
        let x_2105 : i32 = u_xlati46;
        let x_2109 : vec4<f32> = x_2083.x_AdditionalLightsWorldToLights[((x_2102 + 1i) / 4i)][((x_2105 + 1i) % 4i)];
        let x_2111 : vec3<f32> = (vec3<f32>(x_2100.y, x_2100.y, x_2100.y) * vec3<f32>(x_2109.x, x_2109.y, x_2109.w));
        let x_2112 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
        let x_2114 : i32 = u_xlati46;
        let x_2116 : i32 = u_xlati46;
        let x_2119 : vec4<f32> = x_2083.x_AdditionalLightsWorldToLights[(x_2114 / 4i)][(x_2116 % 4i)];
        let x_2121 : vec3<f32> = vs_TEXCOORD1;
        let x_2124 : vec4<f32> = u_xlat9;
        let x_2126 : vec3<f32> = ((vec3<f32>(x_2119.x, x_2119.y, x_2119.w) * vec3<f32>(x_2121.x, x_2121.x, x_2121.x)) + vec3<f32>(x_2124.x, x_2124.y, x_2124.z));
        let x_2127 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2126.x, x_2126.y, x_2126.z, x_2127.w);
        let x_2129 : i32 = u_xlati46;
        let x_2132 : i32 = u_xlati46;
        let x_2136 : vec4<f32> = x_2083.x_AdditionalLightsWorldToLights[((x_2129 + 2i) / 4i)][((x_2132 + 2i) % 4i)];
        let x_2138 : vec3<f32> = vs_TEXCOORD1;
        let x_2141 : vec4<f32> = u_xlat9;
        let x_2143 : vec3<f32> = ((vec3<f32>(x_2136.x, x_2136.y, x_2136.w) * vec3<f32>(x_2138.z, x_2138.z, x_2138.z)) + vec3<f32>(x_2141.x, x_2141.y, x_2141.z));
        let x_2144 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2143.x, x_2143.y, x_2143.z, x_2144.w);
        let x_2146 : vec4<f32> = u_xlat9;
        let x_2148 : i32 = u_xlati46;
        let x_2151 : i32 = u_xlati46;
        let x_2155 : vec4<f32> = x_2083.x_AdditionalLightsWorldToLights[((x_2148 + 3i) / 4i)][((x_2151 + 3i) % 4i)];
        let x_2157 : vec3<f32> = (vec3<f32>(x_2146.x, x_2146.y, x_2146.z) + vec3<f32>(x_2155.x, x_2155.y, x_2155.w));
        let x_2158 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_2157.x, x_2157.y, x_2157.z, x_2158.w);
        let x_2161 : vec4<f32> = u_xlat9;
        let x_2163 : vec4<f32> = u_xlat9;
        let x_2165 : vec2<f32> = (vec2<f32>(x_2161.x, x_2161.y) / vec2<f32>(x_2163.z, x_2163.z));
        let x_2166 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_2165.x, x_2166.y, x_2165.y);
        let x_2168 : vec3<f32> = u_xlat27;
        let x_2171 : vec2<f32> = ((vec2<f32>(x_2168.x, x_2168.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2172 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_2171.x, x_2172.y, x_2171.y);
        let x_2174 : vec3<f32> = u_xlat27;
        let x_2178 : vec2<f32> = clamp(vec2<f32>(x_2174.x, x_2174.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2179 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_2178.x, x_2179.y, x_2178.y);
        let x_2181 : u32 = u_xlatu63;
        let x_2184 : vec4<f32> = x_2083.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2181)];
        let x_2186 : vec3<f32> = u_xlat27;
        let x_2189 : u32 = u_xlatu63;
        let x_2192 : vec4<f32> = x_2083.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2189)];
        let x_2194 : vec2<f32> = ((vec2<f32>(x_2184.x, x_2184.y) * vec2<f32>(x_2186.x, x_2186.z)) + vec2<f32>(x_2192.z, x_2192.w));
        let x_2195 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_2194.x, x_2195.y, x_2194.y);
      } else {
        let x_2199 : i32 = u_xlati8;
        u_xlatb8 = (x_2199 == 1i);
        let x_2201 : bool = u_xlatb8;
        u_xlati8 = select(0i, 1i, x_2201);
        let x_2203 : i32 = u_xlati8;
        if ((x_2203 != 0i)) {
          let x_2207 : vec3<f32> = vs_TEXCOORD1;
          let x_2209 : i32 = u_xlati46;
          let x_2212 : i32 = u_xlati46;
          let x_2216 : vec4<f32> = x_2083.x_AdditionalLightsWorldToLights[((x_2209 + 1i) / 4i)][((x_2212 + 1i) % 4i)];
          let x_2218 : vec2<f32> = (vec2<f32>(x_2207.y, x_2207.y) * vec2<f32>(x_2216.x, x_2216.y));
          let x_2219 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2218.x, x_2218.y, x_2219.z, x_2219.w);
          let x_2221 : i32 = u_xlati46;
          let x_2223 : i32 = u_xlati46;
          let x_2226 : vec4<f32> = x_2083.x_AdditionalLightsWorldToLights[(x_2221 / 4i)][(x_2223 % 4i)];
          let x_2228 : vec3<f32> = vs_TEXCOORD1;
          let x_2231 : vec4<f32> = u_xlat9;
          let x_2233 : vec2<f32> = ((vec2<f32>(x_2226.x, x_2226.y) * vec2<f32>(x_2228.x, x_2228.x)) + vec2<f32>(x_2231.x, x_2231.y));
          let x_2234 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2233.x, x_2233.y, x_2234.z, x_2234.w);
          let x_2236 : i32 = u_xlati46;
          let x_2239 : i32 = u_xlati46;
          let x_2243 : vec4<f32> = x_2083.x_AdditionalLightsWorldToLights[((x_2236 + 2i) / 4i)][((x_2239 + 2i) % 4i)];
          let x_2245 : vec3<f32> = vs_TEXCOORD1;
          let x_2248 : vec4<f32> = u_xlat9;
          let x_2250 : vec2<f32> = ((vec2<f32>(x_2243.x, x_2243.y) * vec2<f32>(x_2245.z, x_2245.z)) + vec2<f32>(x_2248.x, x_2248.y));
          let x_2251 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2250.x, x_2250.y, x_2251.z, x_2251.w);
          let x_2253 : vec4<f32> = u_xlat9;
          let x_2255 : i32 = u_xlati46;
          let x_2258 : i32 = u_xlati46;
          let x_2262 : vec4<f32> = x_2083.x_AdditionalLightsWorldToLights[((x_2255 + 3i) / 4i)][((x_2258 + 3i) % 4i)];
          let x_2264 : vec2<f32> = (vec2<f32>(x_2253.x, x_2253.y) + vec2<f32>(x_2262.x, x_2262.y));
          let x_2265 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2264.x, x_2264.y, x_2265.z, x_2265.w);
          let x_2267 : vec4<f32> = u_xlat9;
          let x_2270 : vec2<f32> = ((vec2<f32>(x_2267.x, x_2267.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2271 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2270.x, x_2270.y, x_2271.z, x_2271.w);
          let x_2273 : vec4<f32> = u_xlat9;
          let x_2275 : vec2<f32> = fract(vec2<f32>(x_2273.x, x_2273.y));
          let x_2276 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2275.x, x_2275.y, x_2276.z, x_2276.w);
          let x_2278 : u32 = u_xlatu63;
          let x_2281 : vec4<f32> = x_2083.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2278)];
          let x_2283 : vec4<f32> = u_xlat9;
          let x_2286 : u32 = u_xlatu63;
          let x_2289 : vec4<f32> = x_2083.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2286)];
          let x_2291 : vec2<f32> = ((vec2<f32>(x_2281.x, x_2281.y) * vec2<f32>(x_2283.x, x_2283.y)) + vec2<f32>(x_2289.z, x_2289.w));
          let x_2292 : vec3<f32> = u_xlat27;
          u_xlat27 = vec3<f32>(x_2291.x, x_2292.y, x_2291.y);
        } else {
          let x_2295 : vec3<f32> = vs_TEXCOORD1;
          let x_2297 : i32 = u_xlati46;
          let x_2300 : i32 = u_xlati46;
          let x_2304 : vec4<f32> = x_2083.x_AdditionalLightsWorldToLights[((x_2297 + 1i) / 4i)][((x_2300 + 1i) % 4i)];
          u_xlat9 = (vec4<f32>(x_2295.y, x_2295.y, x_2295.y, x_2295.y) * x_2304);
          let x_2306 : i32 = u_xlati46;
          let x_2308 : i32 = u_xlati46;
          let x_2311 : vec4<f32> = x_2083.x_AdditionalLightsWorldToLights[(x_2306 / 4i)][(x_2308 % 4i)];
          let x_2312 : vec3<f32> = vs_TEXCOORD1;
          let x_2315 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2311 * vec4<f32>(x_2312.x, x_2312.x, x_2312.x, x_2312.x)) + x_2315);
          let x_2317 : i32 = u_xlati46;
          let x_2320 : i32 = u_xlati46;
          let x_2324 : vec4<f32> = x_2083.x_AdditionalLightsWorldToLights[((x_2317 + 2i) / 4i)][((x_2320 + 2i) % 4i)];
          let x_2325 : vec3<f32> = vs_TEXCOORD1;
          let x_2328 : vec4<f32> = u_xlat9;
          u_xlat9 = ((x_2324 * vec4<f32>(x_2325.z, x_2325.z, x_2325.z, x_2325.z)) + x_2328);
          let x_2330 : vec4<f32> = u_xlat9;
          let x_2331 : i32 = u_xlati46;
          let x_2334 : i32 = u_xlati46;
          let x_2338 : vec4<f32> = x_2083.x_AdditionalLightsWorldToLights[((x_2331 + 3i) / 4i)][((x_2334 + 3i) % 4i)];
          u_xlat9 = (x_2330 + x_2338);
          let x_2340 : vec4<f32> = u_xlat9;
          let x_2342 : vec4<f32> = u_xlat9;
          let x_2344 : vec3<f32> = (vec3<f32>(x_2340.x, x_2340.y, x_2340.z) / vec3<f32>(x_2342.w, x_2342.w, x_2342.w));
          let x_2345 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2344.x, x_2344.y, x_2344.z, x_2345.w);
          let x_2347 : vec4<f32> = u_xlat9;
          let x_2349 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(vec3<f32>(x_2347.x, x_2347.y, x_2347.z), vec3<f32>(x_2349.x, x_2349.y, x_2349.z));
          let x_2354 : f32 = u_xlat8.x;
          u_xlat8.x = inverseSqrt(x_2354);
          let x_2357 : vec4<f32> = u_xlat8;
          let x_2359 : vec4<f32> = u_xlat9;
          let x_2361 : vec3<f32> = (vec3<f32>(x_2357.x, x_2357.x, x_2357.x) * vec3<f32>(x_2359.x, x_2359.y, x_2359.z));
          let x_2362 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
          let x_2364 : vec4<f32> = u_xlat9;
          u_xlat8.x = dot(abs(vec3<f32>(x_2364.x, x_2364.y, x_2364.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2371 : f32 = u_xlat8.x;
          u_xlat8.x = max(x_2371, 0.000001f);
          let x_2376 : f32 = u_xlat8.x;
          u_xlat8.x = (1.0f / x_2376);
          let x_2379 : vec4<f32> = u_xlat8;
          let x_2381 : vec4<f32> = u_xlat9;
          let x_2383 : vec3<f32> = (vec3<f32>(x_2379.x, x_2379.x, x_2379.x) * vec3<f32>(x_2381.z, x_2381.x, x_2381.y));
          let x_2384 : vec4<f32> = u_xlat10;
          u_xlat10 = vec4<f32>(x_2383.x, x_2383.y, x_2383.z, x_2384.w);
          let x_2387 : f32 = u_xlat10.x;
          u_xlat10.x = -(x_2387);
          let x_2391 : f32 = u_xlat10.x;
          u_xlat10.x = clamp(x_2391, 0.0f, 1.0f);
          let x_2395 : vec4<f32> = u_xlat10;
          let x_2398 : vec4<bool> = (vec4<f32>(x_2395.y, x_2395.z, x_2395.y, x_2395.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb47 = vec2<bool>(x_2398.x, x_2398.y);
          let x_2402 : bool = u_xlatb47.x;
          if (x_2402) {
            let x_2407 : f32 = u_xlat10.x;
            x_2403 = x_2407;
          } else {
            let x_2410 : f32 = u_xlat10.x;
            x_2403 = -(x_2410);
          }
          let x_2412 : f32 = x_2403;
          u_xlat47.x = x_2412;
          let x_2415 : bool = u_xlatb47.y;
          if (x_2415) {
            let x_2420 : f32 = u_xlat10.x;
            x_2416 = x_2420;
          } else {
            let x_2423 : f32 = u_xlat10.x;
            x_2416 = -(x_2423);
          }
          let x_2425 : f32 = x_2416;
          u_xlat47.y = x_2425;
          let x_2427 : vec4<f32> = u_xlat9;
          let x_2429 : vec4<f32> = u_xlat8;
          let x_2432 : vec2<f32> = u_xlat47;
          let x_2433 : vec2<f32> = ((vec2<f32>(x_2427.x, x_2427.y) * vec2<f32>(x_2429.x, x_2429.x)) + x_2432);
          let x_2434 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2433.x, x_2434.y, x_2433.y, x_2434.w);
          let x_2436 : vec4<f32> = u_xlat8;
          let x_2439 : vec2<f32> = ((vec2<f32>(x_2436.x, x_2436.z) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2440 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2439.x, x_2440.y, x_2439.y, x_2440.w);
          let x_2442 : vec4<f32> = u_xlat8;
          let x_2446 : vec2<f32> = clamp(vec2<f32>(x_2442.x, x_2442.z), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2447 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2446.x, x_2447.y, x_2446.y, x_2447.w);
          let x_2449 : u32 = u_xlatu63;
          let x_2452 : vec4<f32> = x_2083.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2449)];
          let x_2454 : vec4<f32> = u_xlat8;
          let x_2457 : u32 = u_xlatu63;
          let x_2460 : vec4<f32> = x_2083.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2457)];
          let x_2462 : vec2<f32> = ((vec2<f32>(x_2452.x, x_2452.y) * vec2<f32>(x_2454.x, x_2454.z)) + vec2<f32>(x_2460.z, x_2460.w));
          let x_2463 : vec3<f32> = u_xlat27;
          u_xlat27 = vec3<f32>(x_2462.x, x_2463.y, x_2462.y);
        }
      }
      let x_2470 : vec3<f32> = u_xlat27;
      let x_2473 : f32 = x_44.x_GlobalMipBias.x;
      let x_2474 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2470.x, x_2470.z), x_2473);
      u_xlat8 = x_2474;
      let x_2477 : bool = u_xlatb24.y;
      if (x_2477) {
        let x_2482 : f32 = u_xlat8.w;
        x_2478 = x_2482;
      } else {
        let x_2485 : f32 = u_xlat8.x;
        x_2478 = x_2485;
      }
      let x_2486 : f32 = x_2478;
      u_xlat65 = x_2486;
      let x_2488 : bool = u_xlatb24.x;
      if (x_2488) {
        let x_2492 : vec4<f32> = u_xlat8;
        x_2489 = vec3<f32>(x_2492.x, x_2492.y, x_2492.z);
      } else {
        let x_2495 : f32 = u_xlat65;
        x_2489 = vec3<f32>(x_2495, x_2495, x_2495);
      }
      let x_2497 : vec3<f32> = x_2489;
      let x_2498 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_2497.x, x_2497.y, x_2497.z, x_2498.w);
    } else {
      u_xlat8.x = 1.0f;
      u_xlat8.y = 1.0f;
      u_xlat8.z = 1.0f;
    }
    let x_2504 : vec4<f32> = u_xlat8;
    let x_2506 : u32 = u_xlatu63;
    let x_2509 : vec4<f32> = x_1962.x_AdditionalLightsColor[bitcast<i32>(x_2506)];
    let x_2511 : vec3<f32> = (vec3<f32>(x_2504.x, x_2504.y, x_2504.z) * vec3<f32>(x_2509.x, x_2509.y, x_2509.z));
    let x_2512 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2511.x, x_2511.y, x_2511.z, x_2512.w);
    let x_2514 : vec3<f32> = u_xlat4;
    let x_2516 : vec4<f32> = u_xlat8;
    let x_2518 : vec3<f32> = (vec3<f32>(x_2514.x, x_2514.x, x_2514.x) * vec3<f32>(x_2516.x, x_2516.y, x_2516.z));
    let x_2519 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2518.x, x_2518.y, x_2518.z, x_2519.w);
    let x_2521 : f32 = u_xlat64;
    let x_2523 : vec4<f32> = u_xlat8;
    let x_2525 : vec3<f32> = (vec3<f32>(x_2521, x_2521, x_2521) * vec3<f32>(x_2523.x, x_2523.y, x_2523.z));
    let x_2526 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2525.x, x_2525.y, x_2525.z, x_2526.w);
    let x_2528 : vec4<f32> = u_xlat2;
    let x_2530 : vec4<f32> = u_xlat7;
    u_xlat63 = dot(vec3<f32>(x_2528.x, x_2528.y, x_2528.z), vec3<f32>(x_2530.x, x_2530.y, x_2530.z));
    let x_2533 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2533, 0.0f, 1.0f);
    let x_2535 : f32 = u_xlat63;
    let x_2537 : vec4<f32> = u_xlat8;
    let x_2539 : vec3<f32> = (vec3<f32>(x_2535, x_2535, x_2535) * vec3<f32>(x_2537.x, x_2537.y, x_2537.z));
    let x_2540 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2539.x, x_2539.y, x_2539.z, x_2540.w);
    let x_2542 : vec3<f32> = u_xlat1;
    let x_2543 : f32 = u_xlat58;
    let x_2546 : vec4<f32> = u_xlat7;
    let x_2548 : vec3<f32> = ((x_2542 * vec3<f32>(x_2543, x_2543, x_2543)) + vec3<f32>(x_2546.x, x_2546.y, x_2546.z));
    let x_2549 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2548.x, x_2548.y, x_2548.z, x_2549.w);
    let x_2551 : vec4<f32> = u_xlat7;
    let x_2553 : vec4<f32> = u_xlat7;
    u_xlat63 = dot(vec3<f32>(x_2551.x, x_2551.y, x_2551.z), vec3<f32>(x_2553.x, x_2553.y, x_2553.z));
    let x_2556 : f32 = u_xlat63;
    u_xlat63 = max(x_2556, 1.17549435e-37f);
    let x_2558 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_2558);
    let x_2560 : f32 = u_xlat63;
    let x_2562 : vec4<f32> = u_xlat7;
    let x_2564 : vec3<f32> = (vec3<f32>(x_2560, x_2560, x_2560) * vec3<f32>(x_2562.x, x_2562.y, x_2562.z));
    let x_2565 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2564.x, x_2564.y, x_2564.z, x_2565.w);
    let x_2567 : vec4<f32> = u_xlat2;
    let x_2569 : vec4<f32> = u_xlat7;
    u_xlat63 = dot(vec3<f32>(x_2567.x, x_2567.y, x_2567.z), vec3<f32>(x_2569.x, x_2569.y, x_2569.z));
    let x_2572 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2572, 0.0f, 1.0f);
    let x_2574 : f32 = u_xlat63;
    u_xlat63 = log2(x_2574);
    let x_2576 : f32 = u_xlat59;
    let x_2577 : f32 = u_xlat63;
    u_xlat63 = (x_2576 * x_2577);
    let x_2579 : f32 = u_xlat63;
    u_xlat63 = exp2(x_2579);
    let x_2581 : f32 = u_xlat63;
    let x_2584 : vec4<f32> = x_56.x_SpecColor;
    let x_2586 : vec3<f32> = (vec3<f32>(x_2581, x_2581, x_2581) * vec3<f32>(x_2584.x, x_2584.y, x_2584.z));
    let x_2587 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2586.x, x_2586.y, x_2586.z, x_2587.w);
    let x_2589 : vec4<f32> = u_xlat7;
    let x_2591 : vec4<f32> = u_xlat8;
    let x_2593 : vec3<f32> = (vec3<f32>(x_2589.x, x_2589.y, x_2589.z) * vec3<f32>(x_2591.x, x_2591.y, x_2591.z));
    let x_2594 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2593.x, x_2593.y, x_2593.z, x_2594.w);
    let x_2596 : vec4<f32> = u_xlat9;
    let x_2598 : vec4<f32> = u_xlat0;
    let x_2601 : vec4<f32> = u_xlat7;
    let x_2603 : vec3<f32> = ((vec3<f32>(x_2596.x, x_2596.y, x_2596.z) * vec3<f32>(x_2598.y, x_2598.z, x_2598.w)) + vec3<f32>(x_2601.x, x_2601.y, x_2601.z));
    let x_2604 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2603.x, x_2603.y, x_2603.z, x_2604.w);
    let x_2606 : vec4<f32> = u_xlat6;
    let x_2608 : vec4<f32> = u_xlat7;
    let x_2610 : vec3<f32> = (vec3<f32>(x_2606.x, x_2606.y, x_2606.z) + vec3<f32>(x_2608.x, x_2608.y, x_2608.z));
    let x_2611 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2610.x, x_2610.y, x_2610.z, x_2611.w);

    continuing {
      let x_2613 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2613 + bitcast<u32>(1i));
    }
  }
  let x_2616 : vec3<f32> = u_xlat22;
  let x_2617 : vec4<f32> = u_xlat0;
  let x_2620 : vec3<f32> = u_xlat23;
  u_xlat19 = ((x_2616 * vec3<f32>(x_2617.y, x_2617.z, x_2617.w)) + x_2620);
  let x_2622 : vec4<f32> = u_xlat6;
  let x_2624 : vec3<f32> = u_xlat19;
  u_xlat19 = (vec3<f32>(x_2622.x, x_2622.y, x_2622.z) + x_2624);
  let x_2626 : f32 = u_xlat3;
  let x_2627 : f32 = u_xlat3;
  u_xlat1.x = (x_2626 * -(x_2627));
  let x_2632 : f32 = u_xlat1.x;
  u_xlat1.x = exp2(x_2632);
  let x_2635 : vec3<f32> = u_xlat19;
  let x_2638 : vec4<f32> = x_44.unity_FogColor;
  u_xlat19 = (x_2635 + -(vec3<f32>(x_2638.x, x_2638.y, x_2638.z)));
  let x_2644 : vec3<f32> = u_xlat1;
  let x_2646 : vec3<f32> = u_xlat19;
  let x_2649 : vec4<f32> = x_44.unity_FogColor;
  let x_2651 : vec3<f32> = ((vec3<f32>(x_2644.x, x_2644.x, x_2644.x) * x_2646) + vec3<f32>(x_2649.x, x_2649.y, x_2649.z));
  let x_2652 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2651.x, x_2651.y, x_2651.z, x_2652.w);
  let x_2656 : f32 = x_56.x_Surface;
  u_xlatb19 = (x_2656 == 1.0f);
  let x_2658 : bool = u_xlatb19;
  if (x_2658) {
    let x_2663 : f32 = u_xlat0.x;
    x_2659 = x_2663;
  } else {
    x_2659 = 1.0f;
  }
  let x_2665 : f32 = x_2659;
  SV_Target0.w = x_2665;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD6_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  main_1();
  return main_out(SV_Target0);
}

