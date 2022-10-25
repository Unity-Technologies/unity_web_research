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

struct strided_arr {
  @size(16)
  el : f32,
}

type Arr_1 = array<strided_arr, 8u>;

struct LightCookies {
  x_MainLightWorldToLight : mat4x4<f32>,
  x_AdditionalLightsCookieEnableBits : Arr_1,
  x_MainLightCookieTextureFormat : f32,
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
}

type Arr_2 = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_LODFade : vec4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_RenderingLayer : vec4<f32>,
  unity_LightData : vec4<f32>,
  unity_LightIndices : Arr_2,
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

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(3) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(1) @binding(3) var<uniform> x_267 : MainLightShadows;

var<private> vs_TEXCOORD8 : vec4<f32>;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1614 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_1807 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2062 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2182 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlatb25 : vec2<bool>;
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
  var x_1567 : f32;
  var x_1697 : f32;
  var x_1708 : vec3<f32>;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat28 : vec3<f32>;
  var u_xlatu60 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu23 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat47 : vec2<f32>;
  var u_xlatu47 : u32;
  var u_xlati67 : i32;
  var u_xlati47 : i32;
  var u_xlati69 : i32;
  var u_xlatb47 : bool;
  var u_xlatb51 : vec2<bool>;
  var u_xlat51 : vec2<f32>;
  var x_2483 : f32;
  var x_2496 : f32;
  var x_2548 : f32;
  var x_2560 : vec3<f32>;
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
      let x_369 : f32 = x_267.x_MainLightShadowParams.y;
      u_xlatb25.x = (x_369 == 2.0f);
      let x_373 : bool = u_xlatb25.x;
      if (x_373) {
        let x_377 : vec4<f32> = vs_TEXCOORD8;
        let x_380 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_385 : vec2<f32> = ((vec2<f32>(x_377.x, x_377.y) * vec2<f32>(x_380.z, x_380.w)) + vec2<f32>(0.5f, 0.5f));
        let x_386 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_385.x, x_385.y, x_386.z);
        let x_388 : vec3<f32> = u_xlat25;
        let x_390 : vec2<f32> = floor(vec2<f32>(x_388.x, x_388.y));
        let x_391 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_390.x, x_390.y, x_391.z);
        let x_393 : vec4<f32> = vs_TEXCOORD8;
        let x_396 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_399 : vec3<f32> = u_xlat25;
        let x_402 : vec2<f32> = ((vec2<f32>(x_393.x, x_393.y) * vec2<f32>(x_396.z, x_396.w)) + -(vec2<f32>(x_399.x, x_399.y)));
        let x_403 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_402.x, x_402.y, x_403.z, x_403.w);
        let x_406 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_406.x, x_406.x, x_406.y, x_406.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_411 : vec4<f32> = u_xlat7;
        let x_413 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_411.x, x_411.x, x_411.z, x_411.z) * vec4<f32>(x_413.x, x_413.x, x_413.z, x_413.z));
        let x_418 : vec4<f32> = u_xlat8;
        u_xlat46 = (vec2<f32>(x_418.y, x_418.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_423 : vec4<f32> = u_xlat8;
        let x_426 : vec4<f32> = u_xlat6;
        let x_429 : vec2<f32> = ((vec2<f32>(x_423.x, x_423.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_426.x, x_426.y)));
        let x_430 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_429.x, x_430.y, x_429.y, x_430.w);
        let x_432 : vec4<f32> = u_xlat6;
        let x_435 : vec2<f32> = (-(vec2<f32>(x_432.x, x_432.y)) + vec2<f32>(1.0f, 1.0f));
        let x_436 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_435.x, x_435.y, x_436.z, x_436.w);
        let x_439 : vec4<f32> = u_xlat6;
        u_xlat48 = min(vec2<f32>(x_439.x, x_439.y), vec2<f32>(0.0f, 0.0f));
        let x_443 : vec2<f32> = u_xlat48;
        let x_445 : vec2<f32> = u_xlat48;
        let x_447 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_443) * x_445) + vec2<f32>(x_447.x, x_447.y));
        let x_450 : vec4<f32> = u_xlat6;
        let x_452 : vec2<f32> = max(vec2<f32>(x_450.x, x_450.y), vec2<f32>(0.0f, 0.0f));
        let x_453 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_452.x, x_452.y, x_453.z, x_453.w);
        let x_455 : vec4<f32> = u_xlat6;
        let x_458 : vec4<f32> = u_xlat6;
        let x_461 : vec4<f32> = u_xlat7;
        let x_463 : vec2<f32> = ((-(vec2<f32>(x_455.x, x_455.y)) * vec2<f32>(x_458.x, x_458.y)) + vec2<f32>(x_461.y, x_461.w));
        let x_464 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_463.x, x_463.y, x_464.z, x_464.w);
        let x_466 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_466 + vec2<f32>(1.0f, 1.0f));
        let x_468 : vec4<f32> = u_xlat6;
        let x_470 : vec2<f32> = (vec2<f32>(x_468.x, x_468.y) + vec2<f32>(1.0f, 1.0f));
        let x_471 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_470.x, x_470.y, x_471.z, x_471.w);
        let x_474 : vec4<f32> = u_xlat7;
        let x_478 : vec2<f32> = (vec2<f32>(x_474.x, x_474.z) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_479 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_478.x, x_478.y, x_479.z, x_479.w);
        let x_482 : vec4<f32> = u_xlat8;
        let x_484 : vec2<f32> = (vec2<f32>(x_482.x, x_482.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_485 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_484.x, x_484.y, x_485.z, x_485.w);
        let x_487 : vec2<f32> = u_xlat48;
        let x_488 : vec2<f32> = (x_487 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_489 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_488.x, x_488.y, x_489.z, x_489.w);
        let x_492 : vec4<f32> = u_xlat6;
        let x_494 : vec2<f32> = (vec2<f32>(x_492.x, x_492.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_495 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_494.x, x_494.y, x_495.z, x_495.w);
        let x_497 : vec4<f32> = u_xlat7;
        let x_499 : vec2<f32> = (vec2<f32>(x_497.y, x_497.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_500 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_499.x, x_499.y, x_500.z, x_500.w);
        let x_503 : f32 = u_xlat8.x;
        u_xlat9.z = x_503;
        let x_506 : f32 = u_xlat6.x;
        u_xlat9.w = x_506;
        let x_509 : f32 = u_xlat11.x;
        u_xlat10.z = x_509;
        let x_512 : f32 = u_xlat46.x;
        u_xlat10.w = x_512;
        let x_514 : vec4<f32> = u_xlat9;
        let x_516 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_514.z, x_514.w, x_514.x, x_514.z) + vec4<f32>(x_516.z, x_516.w, x_516.x, x_516.z));
        let x_520 : f32 = u_xlat9.y;
        u_xlat8.z = x_520;
        let x_523 : f32 = u_xlat6.y;
        u_xlat8.w = x_523;
        let x_526 : f32 = u_xlat10.y;
        u_xlat11.z = x_526;
        let x_529 : f32 = u_xlat46.y;
        u_xlat11.w = x_529;
        let x_531 : vec4<f32> = u_xlat8;
        let x_533 : vec4<f32> = u_xlat11;
        let x_535 : vec3<f32> = (vec3<f32>(x_531.z, x_531.y, x_531.w) + vec3<f32>(x_533.z, x_533.y, x_533.w));
        let x_536 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_535.x, x_535.y, x_535.z, x_536.w);
        let x_538 : vec4<f32> = u_xlat10;
        let x_540 : vec4<f32> = u_xlat7;
        let x_542 : vec3<f32> = (vec3<f32>(x_538.x, x_538.z, x_538.w) / vec3<f32>(x_540.z, x_540.w, x_540.y));
        let x_543 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_542.x, x_542.y, x_542.z, x_543.w);
        let x_545 : vec4<f32> = u_xlat8;
        let x_551 : vec3<f32> = (vec3<f32>(x_545.x, x_545.y, x_545.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_552 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
        let x_554 : vec4<f32> = u_xlat11;
        let x_556 : vec4<f32> = u_xlat6;
        let x_558 : vec3<f32> = (vec3<f32>(x_554.z, x_554.y, x_554.w) / vec3<f32>(x_556.x, x_556.y, x_556.z));
        let x_559 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
        let x_561 : vec4<f32> = u_xlat9;
        let x_563 : vec3<f32> = (vec3<f32>(x_561.x, x_561.y, x_561.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_564 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
        let x_566 : vec4<f32> = u_xlat8;
        let x_569 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_571 : vec3<f32> = (vec3<f32>(x_566.y, x_566.x, x_566.z) * vec3<f32>(x_569.x, x_569.x, x_569.x));
        let x_572 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
        let x_574 : vec4<f32> = u_xlat9;
        let x_577 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_579 : vec3<f32> = (vec3<f32>(x_574.x, x_574.y, x_574.z) * vec3<f32>(x_577.y, x_577.y, x_577.y));
        let x_580 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
        let x_583 : f32 = u_xlat9.x;
        u_xlat8.w = x_583;
        let x_585 : vec3<f32> = u_xlat25;
        let x_588 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_591 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_585.x, x_585.y, x_585.x, x_585.y) * vec4<f32>(x_588.x, x_588.y, x_588.x, x_588.y)) + vec4<f32>(x_591.y, x_591.w, x_591.x, x_591.w));
        let x_594 : vec3<f32> = u_xlat25;
        let x_597 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_600 : vec4<f32> = u_xlat8;
        let x_602 : vec2<f32> = ((vec2<f32>(x_594.x, x_594.y) * vec2<f32>(x_597.x, x_597.y)) + vec2<f32>(x_600.z, x_600.w));
        let x_603 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_602.x, x_602.y, x_603.z, x_603.w);
        let x_606 : f32 = u_xlat8.y;
        u_xlat9.w = x_606;
        let x_608 : vec4<f32> = u_xlat9;
        let x_609 : vec2<f32> = vec2<f32>(x_608.y, x_608.z);
        let x_610 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_610.x, x_609.x, x_610.z, x_609.y);
        let x_613 : vec3<f32> = u_xlat25;
        let x_616 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_619 : vec4<f32> = u_xlat8;
        u_xlat12 = ((vec4<f32>(x_613.x, x_613.y, x_613.x, x_613.y) * vec4<f32>(x_616.x, x_616.y, x_616.x, x_616.y)) + vec4<f32>(x_619.x, x_619.y, x_619.z, x_619.y));
        let x_622 : vec3<f32> = u_xlat25;
        let x_625 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_628 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_622.x, x_622.y, x_622.x, x_622.y) * vec4<f32>(x_625.x, x_625.y, x_625.x, x_625.y)) + vec4<f32>(x_628.w, x_628.y, x_628.w, x_628.z));
        let x_631 : vec3<f32> = u_xlat25;
        let x_634 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_637 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_631.x, x_631.y, x_631.x, x_631.y) * vec4<f32>(x_634.x, x_634.y, x_634.x, x_634.y)) + vec4<f32>(x_637.x, x_637.w, x_637.z, x_637.w));
        let x_641 : vec4<f32> = u_xlat6;
        let x_643 : vec4<f32> = u_xlat7;
        u_xlat13 = (vec4<f32>(x_641.x, x_641.x, x_641.x, x_641.y) * vec4<f32>(x_643.z, x_643.w, x_643.y, x_643.z));
        let x_647 : vec4<f32> = u_xlat6;
        let x_649 : vec4<f32> = u_xlat7;
        u_xlat14 = (vec4<f32>(x_647.y, x_647.y, x_647.z, x_647.z) * x_649);
        let x_652 : f32 = u_xlat6.z;
        let x_654 : f32 = u_xlat7.y;
        u_xlat25.x = (x_652 * x_654);
        let x_658 : vec4<f32> = u_xlat10;
        let x_659 : vec2<f32> = vec2<f32>(x_658.x, x_658.y);
        let x_661 : f32 = vs_TEXCOORD8.z;
        txVec4 = vec3<f32>(x_659.x, x_659.y, x_661);
        let x_669 : vec3<f32> = txVec4;
        let x_671 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_669.xy, x_669.z);
        u_xlat45 = x_671;
        let x_673 : vec4<f32> = u_xlat10;
        let x_674 : vec2<f32> = vec2<f32>(x_673.z, x_673.w);
        let x_676 : f32 = vs_TEXCOORD8.z;
        txVec5 = vec3<f32>(x_674.x, x_674.y, x_676);
        let x_684 : vec3<f32> = txVec5;
        let x_686 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_684.xy, x_684.z);
        u_xlat65 = x_686;
        let x_687 : f32 = u_xlat65;
        let x_689 : f32 = u_xlat13.y;
        u_xlat65 = (x_687 * x_689);
        let x_692 : f32 = u_xlat13.x;
        let x_693 : f32 = u_xlat45;
        let x_695 : f32 = u_xlat65;
        u_xlat45 = ((x_692 * x_693) + x_695);
        let x_698 : vec4<f32> = u_xlat11;
        let x_699 : vec2<f32> = vec2<f32>(x_698.x, x_698.y);
        let x_701 : f32 = vs_TEXCOORD8.z;
        txVec6 = vec3<f32>(x_699.x, x_699.y, x_701);
        let x_708 : vec3<f32> = txVec6;
        let x_710 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_708.xy, x_708.z);
        u_xlat65 = x_710;
        let x_712 : f32 = u_xlat13.z;
        let x_713 : f32 = u_xlat65;
        let x_715 : f32 = u_xlat45;
        u_xlat45 = ((x_712 * x_713) + x_715);
        let x_718 : vec4<f32> = u_xlat9;
        let x_719 : vec2<f32> = vec2<f32>(x_718.x, x_718.y);
        let x_721 : f32 = vs_TEXCOORD8.z;
        txVec7 = vec3<f32>(x_719.x, x_719.y, x_721);
        let x_728 : vec3<f32> = txVec7;
        let x_730 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_728.xy, x_728.z);
        u_xlat65 = x_730;
        let x_732 : f32 = u_xlat13.w;
        let x_733 : f32 = u_xlat65;
        let x_735 : f32 = u_xlat45;
        u_xlat45 = ((x_732 * x_733) + x_735);
        let x_738 : vec4<f32> = u_xlat12;
        let x_739 : vec2<f32> = vec2<f32>(x_738.x, x_738.y);
        let x_741 : f32 = vs_TEXCOORD8.z;
        txVec8 = vec3<f32>(x_739.x, x_739.y, x_741);
        let x_748 : vec3<f32> = txVec8;
        let x_750 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_748.xy, x_748.z);
        u_xlat65 = x_750;
        let x_752 : f32 = u_xlat14.x;
        let x_753 : f32 = u_xlat65;
        let x_755 : f32 = u_xlat45;
        u_xlat45 = ((x_752 * x_753) + x_755);
        let x_758 : vec4<f32> = u_xlat12;
        let x_759 : vec2<f32> = vec2<f32>(x_758.z, x_758.w);
        let x_761 : f32 = vs_TEXCOORD8.z;
        txVec9 = vec3<f32>(x_759.x, x_759.y, x_761);
        let x_768 : vec3<f32> = txVec9;
        let x_770 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_768.xy, x_768.z);
        u_xlat65 = x_770;
        let x_772 : f32 = u_xlat14.y;
        let x_773 : f32 = u_xlat65;
        let x_775 : f32 = u_xlat45;
        u_xlat45 = ((x_772 * x_773) + x_775);
        let x_778 : vec4<f32> = u_xlat9;
        let x_779 : vec2<f32> = vec2<f32>(x_778.z, x_778.w);
        let x_781 : f32 = vs_TEXCOORD8.z;
        txVec10 = vec3<f32>(x_779.x, x_779.y, x_781);
        let x_788 : vec3<f32> = txVec10;
        let x_790 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_788.xy, x_788.z);
        u_xlat65 = x_790;
        let x_792 : f32 = u_xlat14.z;
        let x_793 : f32 = u_xlat65;
        let x_795 : f32 = u_xlat45;
        u_xlat45 = ((x_792 * x_793) + x_795);
        let x_798 : vec4<f32> = u_xlat8;
        let x_799 : vec2<f32> = vec2<f32>(x_798.x, x_798.y);
        let x_801 : f32 = vs_TEXCOORD8.z;
        txVec11 = vec3<f32>(x_799.x, x_799.y, x_801);
        let x_808 : vec3<f32> = txVec11;
        let x_810 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_808.xy, x_808.z);
        u_xlat65 = x_810;
        let x_812 : f32 = u_xlat14.w;
        let x_813 : f32 = u_xlat65;
        let x_815 : f32 = u_xlat45;
        u_xlat45 = ((x_812 * x_813) + x_815);
        let x_818 : vec4<f32> = u_xlat8;
        let x_819 : vec2<f32> = vec2<f32>(x_818.z, x_818.w);
        let x_821 : f32 = vs_TEXCOORD8.z;
        txVec12 = vec3<f32>(x_819.x, x_819.y, x_821);
        let x_828 : vec3<f32> = txVec12;
        let x_830 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_828.xy, x_828.z);
        u_xlat65 = x_830;
        let x_832 : f32 = u_xlat25.x;
        let x_833 : f32 = u_xlat65;
        let x_835 : f32 = u_xlat45;
        u_xlat5.x = ((x_832 * x_833) + x_835);
      } else {
        let x_839 : vec4<f32> = vs_TEXCOORD8;
        let x_842 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_845 : vec2<f32> = ((vec2<f32>(x_839.x, x_839.y) * vec2<f32>(x_842.z, x_842.w)) + vec2<f32>(0.5f, 0.5f));
        let x_846 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_845.x, x_845.y, x_846.z);
        let x_848 : vec3<f32> = u_xlat25;
        let x_850 : vec2<f32> = floor(vec2<f32>(x_848.x, x_848.y));
        let x_851 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_850.x, x_850.y, x_851.z);
        let x_853 : vec4<f32> = vs_TEXCOORD8;
        let x_856 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_859 : vec3<f32> = u_xlat25;
        let x_862 : vec2<f32> = ((vec2<f32>(x_853.x, x_853.y) * vec2<f32>(x_856.z, x_856.w)) + -(vec2<f32>(x_859.x, x_859.y)));
        let x_863 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_862.x, x_862.y, x_863.z, x_863.w);
        let x_865 : vec4<f32> = u_xlat6;
        u_xlat7 = (vec4<f32>(x_865.x, x_865.x, x_865.y, x_865.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_868 : vec4<f32> = u_xlat7;
        let x_870 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_868.x, x_868.x, x_868.z, x_868.z) * vec4<f32>(x_870.x, x_870.x, x_870.z, x_870.z));
        let x_873 : vec4<f32> = u_xlat8;
        let x_877 : vec2<f32> = (vec2<f32>(x_873.y, x_873.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_878 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_878.x, x_877.x, x_878.z, x_877.y);
        let x_880 : vec4<f32> = u_xlat8;
        let x_883 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_880.x, x_880.z) * vec2<f32>(0.5f, 0.5f)) + -(vec2<f32>(x_883.x, x_883.y)));
        let x_887 : vec4<f32> = u_xlat6;
        let x_890 : vec2<f32> = (-(vec2<f32>(x_887.x, x_887.y)) + vec2<f32>(1.0f, 1.0f));
        let x_891 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_890.x, x_891.y, x_890.y, x_891.w);
        let x_893 : vec4<f32> = u_xlat6;
        let x_895 : vec2<f32> = min(vec2<f32>(x_893.x, x_893.y), vec2<f32>(0.0f, 0.0f));
        let x_896 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_895.x, x_895.y, x_896.z, x_896.w);
        let x_898 : vec4<f32> = u_xlat8;
        let x_901 : vec4<f32> = u_xlat8;
        let x_904 : vec4<f32> = u_xlat7;
        let x_906 : vec2<f32> = ((-(vec2<f32>(x_898.x, x_898.y)) * vec2<f32>(x_901.x, x_901.y)) + vec2<f32>(x_904.x, x_904.z));
        let x_907 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_906.x, x_907.y, x_906.y, x_907.w);
        let x_909 : vec4<f32> = u_xlat6;
        let x_911 : vec2<f32> = max(vec2<f32>(x_909.x, x_909.y), vec2<f32>(0.0f, 0.0f));
        let x_912 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_911.x, x_911.y, x_912.z, x_912.w);
        let x_914 : vec4<f32> = u_xlat8;
        let x_917 : vec4<f32> = u_xlat8;
        let x_920 : vec4<f32> = u_xlat7;
        let x_922 : vec2<f32> = ((-(vec2<f32>(x_914.x, x_914.y)) * vec2<f32>(x_917.x, x_917.y)) + vec2<f32>(x_920.y, x_920.w));
        let x_923 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_923.x, x_922.x, x_923.z, x_922.y);
        let x_925 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_925 + vec4<f32>(2.0f, 2.0f, 2.0f, 2.0f));
        let x_929 : f32 = u_xlat7.y;
        u_xlat8.z = (x_929 * 0.081632003f);
        let x_933 : vec2<f32> = u_xlat46;
        let x_936 : vec2<f32> = (vec2<f32>(x_933.y, x_933.x) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_937 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_936.x, x_936.y, x_937.z, x_937.w);
        let x_939 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_939.x, x_939.z) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_943 : f32 = u_xlat7.w;
        u_xlat10.z = (x_943 * 0.081632003f);
        let x_947 : f32 = u_xlat10.y;
        u_xlat8.x = x_947;
        let x_949 : vec4<f32> = u_xlat6;
        let x_956 : vec2<f32> = ((vec2<f32>(x_949.x, x_949.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_957 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_957.x, x_956.x, x_957.z, x_956.y);
        let x_959 : vec4<f32> = u_xlat6;
        let x_963 : vec2<f32> = ((vec2<f32>(x_959.x, x_959.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_964 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_963.x, x_964.y, x_963.y, x_964.w);
        let x_967 : f32 = u_xlat46.x;
        u_xlat7.y = x_967;
        let x_970 : f32 = u_xlat9.y;
        u_xlat7.w = x_970;
        let x_972 : vec4<f32> = u_xlat7;
        let x_973 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_972 + x_973);
        let x_975 : vec4<f32> = u_xlat6;
        let x_978 : vec2<f32> = ((vec2<f32>(x_975.y, x_975.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_979 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_979.x, x_978.x, x_979.z, x_978.y);
        let x_981 : vec4<f32> = u_xlat6;
        let x_984 : vec2<f32> = ((vec2<f32>(x_981.y, x_981.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_985 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_984.x, x_985.y, x_984.y, x_985.w);
        let x_988 : f32 = u_xlat46.y;
        u_xlat9.y = x_988;
        let x_990 : vec4<f32> = u_xlat9;
        let x_991 : vec4<f32> = u_xlat10;
        u_xlat6 = (x_990 + x_991);
        let x_993 : vec4<f32> = u_xlat7;
        let x_994 : vec4<f32> = u_xlat8;
        u_xlat7 = (x_993 / x_994);
        let x_996 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_996 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1002 : vec4<f32> = u_xlat9;
        let x_1003 : vec4<f32> = u_xlat6;
        u_xlat9 = (x_1002 / x_1003);
        let x_1005 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1005 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1007 : vec4<f32> = u_xlat7;
        let x_1010 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1007.w, x_1007.x, x_1007.y, x_1007.z) * vec4<f32>(x_1010.x, x_1010.x, x_1010.x, x_1010.x));
        let x_1013 : vec4<f32> = u_xlat9;
        let x_1016 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1013.x, x_1013.w, x_1013.y, x_1013.z) * vec4<f32>(x_1016.y, x_1016.y, x_1016.y, x_1016.y));
        let x_1019 : vec4<f32> = u_xlat7;
        let x_1020 : vec3<f32> = vec3<f32>(x_1019.y, x_1019.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1020.x, x_1021.y, x_1020.y, x_1020.z);
        let x_1024 : f32 = u_xlat9.x;
        u_xlat10.y = x_1024;
        let x_1026 : vec3<f32> = u_xlat25;
        let x_1029 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat10;
        u_xlat11 = ((vec4<f32>(x_1026.x, x_1026.y, x_1026.x, x_1026.y) * vec4<f32>(x_1029.x, x_1029.y, x_1029.x, x_1029.y)) + vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1032.y));
        let x_1035 : vec3<f32> = u_xlat25;
        let x_1038 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1041 : vec4<f32> = u_xlat10;
        let x_1043 : vec2<f32> = ((vec2<f32>(x_1035.x, x_1035.y) * vec2<f32>(x_1038.x, x_1038.y)) + vec2<f32>(x_1041.w, x_1041.y));
        let x_1044 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1043.x, x_1043.y, x_1044.z, x_1044.w);
        let x_1047 : f32 = u_xlat10.y;
        u_xlat7.y = x_1047;
        let x_1050 : f32 = u_xlat9.z;
        u_xlat10.y = x_1050;
        let x_1052 : vec3<f32> = u_xlat25;
        let x_1055 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1058 : vec4<f32> = u_xlat10;
        u_xlat13 = ((vec4<f32>(x_1052.x, x_1052.y, x_1052.x, x_1052.y) * vec4<f32>(x_1055.x, x_1055.y, x_1055.x, x_1055.y)) + vec4<f32>(x_1058.x, x_1058.y, x_1058.z, x_1058.y));
        let x_1062 : vec3<f32> = u_xlat25;
        let x_1065 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1068 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1062.x, x_1062.y) * vec2<f32>(x_1065.x, x_1065.y)) + vec2<f32>(x_1068.w, x_1068.y));
        let x_1072 : f32 = u_xlat10.y;
        u_xlat7.z = x_1072;
        let x_1074 : vec3<f32> = u_xlat25;
        let x_1077 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1080 : vec4<f32> = u_xlat7;
        u_xlat14 = ((vec4<f32>(x_1074.x, x_1074.y, x_1074.x, x_1074.y) * vec4<f32>(x_1077.x, x_1077.y, x_1077.x, x_1077.y)) + vec4<f32>(x_1080.x, x_1080.y, x_1080.x, x_1080.z));
        let x_1084 : f32 = u_xlat9.w;
        u_xlat10.y = x_1084;
        let x_1087 : vec3<f32> = u_xlat25;
        let x_1090 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1093 : vec4<f32> = u_xlat10;
        u_xlat15 = ((vec4<f32>(x_1087.x, x_1087.y, x_1087.x, x_1087.y) * vec4<f32>(x_1090.x, x_1090.y, x_1090.x, x_1090.y)) + vec4<f32>(x_1093.x, x_1093.y, x_1093.z, x_1093.y));
        let x_1097 : vec3<f32> = u_xlat25;
        let x_1100 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1103 : vec4<f32> = u_xlat10;
        u_xlat27 = ((vec2<f32>(x_1097.x, x_1097.y) * vec2<f32>(x_1100.x, x_1100.y)) + vec2<f32>(x_1103.w, x_1103.y));
        let x_1107 : f32 = u_xlat10.y;
        u_xlat7.w = x_1107;
        let x_1110 : vec3<f32> = u_xlat25;
        let x_1113 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1116 : vec4<f32> = u_xlat7;
        u_xlat16 = ((vec2<f32>(x_1110.x, x_1110.y) * vec2<f32>(x_1113.x, x_1113.y)) + vec2<f32>(x_1116.x, x_1116.w));
        let x_1119 : vec4<f32> = u_xlat10;
        let x_1120 : vec3<f32> = vec3<f32>(x_1119.x, x_1119.z, x_1119.w);
        let x_1121 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1120.x, x_1121.y, x_1120.y, x_1120.z);
        let x_1123 : vec3<f32> = u_xlat25;
        let x_1126 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1129 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1123.x, x_1123.y, x_1123.x, x_1123.y) * vec4<f32>(x_1126.x, x_1126.y, x_1126.x, x_1126.y)) + vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1129.y));
        let x_1133 : vec3<f32> = u_xlat25;
        let x_1136 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1139 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1133.x, x_1133.y) * vec2<f32>(x_1136.x, x_1136.y)) + vec2<f32>(x_1139.w, x_1139.y));
        let x_1143 : f32 = u_xlat7.x;
        u_xlat9.x = x_1143;
        let x_1145 : vec3<f32> = u_xlat25;
        let x_1148 : vec4<f32> = x_267.x_MainLightShadowmapSize;
        let x_1151 : vec4<f32> = u_xlat9;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1145.x, x_1145.y) * vec2<f32>(x_1148.x, x_1148.y)) + vec2<f32>(x_1151.x, x_1151.y));
        let x_1154 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_1153.x, x_1153.y, x_1154.z);
        let x_1157 : vec4<f32> = u_xlat6;
        let x_1159 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1157.x, x_1157.x, x_1157.x, x_1157.x) * x_1159);
        let x_1162 : vec4<f32> = u_xlat6;
        let x_1164 : vec4<f32> = u_xlat8;
        u_xlat18 = (vec4<f32>(x_1162.y, x_1162.y, x_1162.y, x_1162.y) * x_1164);
        let x_1167 : vec4<f32> = u_xlat6;
        let x_1169 : vec4<f32> = u_xlat8;
        u_xlat19 = (vec4<f32>(x_1167.z, x_1167.z, x_1167.z, x_1167.z) * x_1169);
        let x_1171 : vec4<f32> = u_xlat6;
        let x_1173 : vec4<f32> = u_xlat8;
        u_xlat6 = (vec4<f32>(x_1171.w, x_1171.w, x_1171.w, x_1171.w) * x_1173);
        let x_1176 : vec4<f32> = u_xlat11;
        let x_1177 : vec2<f32> = vec2<f32>(x_1176.x, x_1176.y);
        let x_1179 : f32 = vs_TEXCOORD8.z;
        txVec13 = vec3<f32>(x_1177.x, x_1177.y, x_1179);
        let x_1186 : vec3<f32> = txVec13;
        let x_1188 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1186.xy, x_1186.z);
        u_xlat65 = x_1188;
        let x_1190 : vec4<f32> = u_xlat11;
        let x_1191 : vec2<f32> = vec2<f32>(x_1190.z, x_1190.w);
        let x_1193 : f32 = vs_TEXCOORD8.z;
        txVec14 = vec3<f32>(x_1191.x, x_1191.y, x_1193);
        let x_1200 : vec3<f32> = txVec14;
        let x_1202 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1200.xy, x_1200.z);
        u_xlat7.x = x_1202;
        let x_1205 : f32 = u_xlat7.x;
        let x_1207 : f32 = u_xlat17.y;
        u_xlat7.x = (x_1205 * x_1207);
        let x_1211 : f32 = u_xlat17.x;
        let x_1212 : f32 = u_xlat65;
        let x_1215 : f32 = u_xlat7.x;
        u_xlat65 = ((x_1211 * x_1212) + x_1215);
        let x_1218 : vec4<f32> = u_xlat12;
        let x_1219 : vec2<f32> = vec2<f32>(x_1218.x, x_1218.y);
        let x_1221 : f32 = vs_TEXCOORD8.z;
        txVec15 = vec3<f32>(x_1219.x, x_1219.y, x_1221);
        let x_1228 : vec3<f32> = txVec15;
        let x_1230 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1228.xy, x_1228.z);
        u_xlat7.x = x_1230;
        let x_1233 : f32 = u_xlat17.z;
        let x_1235 : f32 = u_xlat7.x;
        let x_1237 : f32 = u_xlat65;
        u_xlat65 = ((x_1233 * x_1235) + x_1237);
        let x_1240 : vec4<f32> = u_xlat14;
        let x_1241 : vec2<f32> = vec2<f32>(x_1240.x, x_1240.y);
        let x_1243 : f32 = vs_TEXCOORD8.z;
        txVec16 = vec3<f32>(x_1241.x, x_1241.y, x_1243);
        let x_1250 : vec3<f32> = txVec16;
        let x_1252 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1250.xy, x_1250.z);
        u_xlat7.x = x_1252;
        let x_1255 : f32 = u_xlat17.w;
        let x_1257 : f32 = u_xlat7.x;
        let x_1259 : f32 = u_xlat65;
        u_xlat65 = ((x_1255 * x_1257) + x_1259);
        let x_1262 : vec4<f32> = u_xlat13;
        let x_1263 : vec2<f32> = vec2<f32>(x_1262.x, x_1262.y);
        let x_1265 : f32 = vs_TEXCOORD8.z;
        txVec17 = vec3<f32>(x_1263.x, x_1263.y, x_1265);
        let x_1272 : vec3<f32> = txVec17;
        let x_1274 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1272.xy, x_1272.z);
        u_xlat7.x = x_1274;
        let x_1277 : f32 = u_xlat18.x;
        let x_1279 : f32 = u_xlat7.x;
        let x_1281 : f32 = u_xlat65;
        u_xlat65 = ((x_1277 * x_1279) + x_1281);
        let x_1284 : vec4<f32> = u_xlat13;
        let x_1285 : vec2<f32> = vec2<f32>(x_1284.z, x_1284.w);
        let x_1287 : f32 = vs_TEXCOORD8.z;
        txVec18 = vec3<f32>(x_1285.x, x_1285.y, x_1287);
        let x_1294 : vec3<f32> = txVec18;
        let x_1296 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1294.xy, x_1294.z);
        u_xlat7.x = x_1296;
        let x_1299 : f32 = u_xlat18.y;
        let x_1301 : f32 = u_xlat7.x;
        let x_1303 : f32 = u_xlat65;
        u_xlat65 = ((x_1299 * x_1301) + x_1303);
        let x_1306 : vec2<f32> = u_xlat52;
        let x_1308 : f32 = vs_TEXCOORD8.z;
        txVec19 = vec3<f32>(x_1306.x, x_1306.y, x_1308);
        let x_1315 : vec3<f32> = txVec19;
        let x_1317 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1315.xy, x_1315.z);
        u_xlat7.x = x_1317;
        let x_1320 : f32 = u_xlat18.z;
        let x_1322 : f32 = u_xlat7.x;
        let x_1324 : f32 = u_xlat65;
        u_xlat65 = ((x_1320 * x_1322) + x_1324);
        let x_1327 : vec4<f32> = u_xlat14;
        let x_1328 : vec2<f32> = vec2<f32>(x_1327.z, x_1327.w);
        let x_1330 : f32 = vs_TEXCOORD8.z;
        txVec20 = vec3<f32>(x_1328.x, x_1328.y, x_1330);
        let x_1337 : vec3<f32> = txVec20;
        let x_1339 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1337.xy, x_1337.z);
        u_xlat7.x = x_1339;
        let x_1342 : f32 = u_xlat18.w;
        let x_1344 : f32 = u_xlat7.x;
        let x_1346 : f32 = u_xlat65;
        u_xlat65 = ((x_1342 * x_1344) + x_1346);
        let x_1349 : vec4<f32> = u_xlat15;
        let x_1350 : vec2<f32> = vec2<f32>(x_1349.x, x_1349.y);
        let x_1352 : f32 = vs_TEXCOORD8.z;
        txVec21 = vec3<f32>(x_1350.x, x_1350.y, x_1352);
        let x_1359 : vec3<f32> = txVec21;
        let x_1361 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1359.xy, x_1359.z);
        u_xlat7.x = x_1361;
        let x_1364 : f32 = u_xlat19.x;
        let x_1366 : f32 = u_xlat7.x;
        let x_1368 : f32 = u_xlat65;
        u_xlat65 = ((x_1364 * x_1366) + x_1368);
        let x_1371 : vec4<f32> = u_xlat15;
        let x_1372 : vec2<f32> = vec2<f32>(x_1371.z, x_1371.w);
        let x_1374 : f32 = vs_TEXCOORD8.z;
        txVec22 = vec3<f32>(x_1372.x, x_1372.y, x_1374);
        let x_1381 : vec3<f32> = txVec22;
        let x_1383 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1381.xy, x_1381.z);
        u_xlat7.x = x_1383;
        let x_1386 : f32 = u_xlat19.y;
        let x_1388 : f32 = u_xlat7.x;
        let x_1390 : f32 = u_xlat65;
        u_xlat65 = ((x_1386 * x_1388) + x_1390);
        let x_1393 : vec2<f32> = u_xlat27;
        let x_1395 : f32 = vs_TEXCOORD8.z;
        txVec23 = vec3<f32>(x_1393.x, x_1393.y, x_1395);
        let x_1402 : vec3<f32> = txVec23;
        let x_1404 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1402.xy, x_1402.z);
        u_xlat7.x = x_1404;
        let x_1407 : f32 = u_xlat19.z;
        let x_1409 : f32 = u_xlat7.x;
        let x_1411 : f32 = u_xlat65;
        u_xlat65 = ((x_1407 * x_1409) + x_1411);
        let x_1414 : vec2<f32> = u_xlat16;
        let x_1416 : f32 = vs_TEXCOORD8.z;
        txVec24 = vec3<f32>(x_1414.x, x_1414.y, x_1416);
        let x_1423 : vec3<f32> = txVec24;
        let x_1425 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1423.xy, x_1423.z);
        u_xlat7.x = x_1425;
        let x_1428 : f32 = u_xlat19.w;
        let x_1430 : f32 = u_xlat7.x;
        let x_1432 : f32 = u_xlat65;
        u_xlat65 = ((x_1428 * x_1430) + x_1432);
        let x_1435 : vec4<f32> = u_xlat10;
        let x_1436 : vec2<f32> = vec2<f32>(x_1435.x, x_1435.y);
        let x_1438 : f32 = vs_TEXCOORD8.z;
        txVec25 = vec3<f32>(x_1436.x, x_1436.y, x_1438);
        let x_1445 : vec3<f32> = txVec25;
        let x_1447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1445.xy, x_1445.z);
        u_xlat7.x = x_1447;
        let x_1450 : f32 = u_xlat6.x;
        let x_1452 : f32 = u_xlat7.x;
        let x_1454 : f32 = u_xlat65;
        u_xlat65 = ((x_1450 * x_1452) + x_1454);
        let x_1457 : vec4<f32> = u_xlat10;
        let x_1458 : vec2<f32> = vec2<f32>(x_1457.z, x_1457.w);
        let x_1460 : f32 = vs_TEXCOORD8.z;
        txVec26 = vec3<f32>(x_1458.x, x_1458.y, x_1460);
        let x_1467 : vec3<f32> = txVec26;
        let x_1469 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1467.xy, x_1467.z);
        u_xlat6.x = x_1469;
        let x_1472 : f32 = u_xlat6.y;
        let x_1474 : f32 = u_xlat6.x;
        let x_1476 : f32 = u_xlat65;
        u_xlat65 = ((x_1472 * x_1474) + x_1476);
        let x_1479 : vec2<f32> = u_xlat49;
        let x_1481 : f32 = vs_TEXCOORD8.z;
        txVec27 = vec3<f32>(x_1479.x, x_1479.y, x_1481);
        let x_1488 : vec3<f32> = txVec27;
        let x_1490 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1488.xy, x_1488.z);
        u_xlat6.x = x_1490;
        let x_1493 : f32 = u_xlat6.z;
        let x_1495 : f32 = u_xlat6.x;
        let x_1497 : f32 = u_xlat65;
        u_xlat65 = ((x_1493 * x_1495) + x_1497);
        let x_1500 : vec3<f32> = u_xlat25;
        let x_1501 : vec2<f32> = vec2<f32>(x_1500.x, x_1500.y);
        let x_1503 : f32 = vs_TEXCOORD8.z;
        txVec28 = vec3<f32>(x_1501.x, x_1501.y, x_1503);
        let x_1510 : vec3<f32> = txVec28;
        let x_1512 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1510.xy, x_1510.z);
        u_xlat25.x = x_1512;
        let x_1515 : f32 = u_xlat6.w;
        let x_1517 : f32 = u_xlat25.x;
        let x_1519 : f32 = u_xlat65;
        u_xlat5.x = ((x_1515 * x_1517) + x_1519);
      }
    }
  } else {
    let x_1524 : vec4<f32> = vs_TEXCOORD8;
    let x_1525 : vec2<f32> = vec2<f32>(x_1524.x, x_1524.y);
    let x_1527 : f32 = vs_TEXCOORD8.z;
    txVec29 = vec3<f32>(x_1525.x, x_1525.y, x_1527);
    let x_1534 : vec3<f32> = txVec29;
    let x_1536 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1534.xy, x_1534.z);
    u_xlat5.x = x_1536;
  }
  let x_1539 : f32 = x_267.x_MainLightShadowParams.x;
  u_xlat25.x = (-(x_1539) + 1.0f);
  let x_1544 : f32 = u_xlat5.x;
  let x_1546 : f32 = x_267.x_MainLightShadowParams.x;
  let x_1549 : f32 = u_xlat25.x;
  u_xlat5.x = ((x_1544 * x_1546) + x_1549);
  let x_1553 : f32 = vs_TEXCOORD8.z;
  u_xlatb25.x = (0.0f >= x_1553);
  let x_1558 : f32 = vs_TEXCOORD8.z;
  u_xlatb45 = (x_1558 >= 1.0f);
  let x_1560 : bool = u_xlatb45;
  let x_1562 : bool = u_xlatb25.x;
  u_xlatb25.x = (x_1560 | x_1562);
  let x_1566 : bool = u_xlatb25.x;
  if (x_1566) {
    x_1567 = 1.0f;
  } else {
    let x_1572 : f32 = u_xlat5.x;
    x_1567 = x_1572;
  }
  let x_1573 : f32 = x_1567;
  u_xlat5.x = x_1573;
  let x_1575 : vec3<f32> = vs_TEXCOORD7;
  let x_1578 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat25 = (x_1575 + -(x_1578));
  let x_1581 : vec3<f32> = u_xlat25;
  let x_1582 : vec3<f32> = u_xlat25;
  u_xlat25.x = dot(x_1581, x_1582);
  let x_1586 : f32 = u_xlat25.x;
  let x_1588 : f32 = x_267.x_MainLightShadowParams.z;
  let x_1591 : f32 = x_267.x_MainLightShadowParams.w;
  u_xlat25.x = ((x_1586 * x_1588) + x_1591);
  let x_1595 : f32 = u_xlat25.x;
  u_xlat25.x = clamp(x_1595, 0.0f, 1.0f);
  let x_1599 : f32 = u_xlat5.x;
  u_xlat45 = (-(x_1599) + 1.0f);
  let x_1603 : f32 = u_xlat25.x;
  let x_1604 : f32 = u_xlat45;
  let x_1607 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_1603 * x_1604) + x_1607);
  let x_1616 : f32 = x_1614.x_MainLightCookieTextureFormat;
  u_xlatb25.x = !((x_1616 == -1.0f));
  let x_1620 : bool = u_xlatb25.x;
  if (x_1620) {
    let x_1623 : vec3<f32> = vs_TEXCOORD7;
    let x_1626 : vec4<f32> = x_1614.x_MainLightWorldToLight[1i];
    let x_1628 : vec2<f32> = (vec2<f32>(x_1623.y, x_1623.y) * vec2<f32>(x_1626.x, x_1626.y));
    let x_1629 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1628.x, x_1628.y, x_1629.z);
    let x_1632 : vec4<f32> = x_1614.x_MainLightWorldToLight[0i];
    let x_1634 : vec3<f32> = vs_TEXCOORD7;
    let x_1637 : vec3<f32> = u_xlat25;
    let x_1639 : vec2<f32> = ((vec2<f32>(x_1632.x, x_1632.y) * vec2<f32>(x_1634.x, x_1634.x)) + vec2<f32>(x_1637.x, x_1637.y));
    let x_1640 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1639.x, x_1639.y, x_1640.z);
    let x_1643 : vec4<f32> = x_1614.x_MainLightWorldToLight[2i];
    let x_1645 : vec3<f32> = vs_TEXCOORD7;
    let x_1648 : vec3<f32> = u_xlat25;
    let x_1650 : vec2<f32> = ((vec2<f32>(x_1643.x, x_1643.y) * vec2<f32>(x_1645.z, x_1645.z)) + vec2<f32>(x_1648.x, x_1648.y));
    let x_1651 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1650.x, x_1650.y, x_1651.z);
    let x_1653 : vec3<f32> = u_xlat25;
    let x_1656 : vec4<f32> = x_1614.x_MainLightWorldToLight[3i];
    let x_1658 : vec2<f32> = (vec2<f32>(x_1653.x, x_1653.y) + vec2<f32>(x_1656.x, x_1656.y));
    let x_1659 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1658.x, x_1658.y, x_1659.z);
    let x_1661 : vec3<f32> = u_xlat25;
    let x_1664 : vec2<f32> = ((vec2<f32>(x_1661.x, x_1661.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1665 : vec3<f32> = u_xlat25;
    u_xlat25 = vec3<f32>(x_1664.x, x_1664.y, x_1665.z);
    let x_1672 : vec3<f32> = u_xlat25;
    let x_1675 : f32 = x_44.x_GlobalMipBias.x;
    let x_1676 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1672.x, x_1672.y), x_1675);
    u_xlat6 = x_1676;
    let x_1678 : f32 = x_1614.x_MainLightCookieTextureFormat;
    let x_1680 : f32 = x_1614.x_MainLightCookieTextureFormat;
    let x_1682 : f32 = x_1614.x_MainLightCookieTextureFormat;
    let x_1684 : f32 = x_1614.x_MainLightCookieTextureFormat;
    let x_1685 : vec4<f32> = vec4<f32>(x_1678, x_1680, x_1682, x_1684);
    let x_1693 : vec4<bool> = (vec4<f32>(x_1685.x, x_1685.y, x_1685.z, x_1685.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb25 = vec2<bool>(x_1693.x, x_1693.y);
    let x_1696 : bool = u_xlatb25.y;
    if (x_1696) {
      let x_1701 : f32 = u_xlat6.w;
      x_1697 = x_1701;
    } else {
      let x_1704 : f32 = u_xlat6.x;
      x_1697 = x_1704;
    }
    let x_1705 : f32 = x_1697;
    u_xlat45 = x_1705;
    let x_1707 : bool = u_xlatb25.x;
    if (x_1707) {
      let x_1711 : vec4<f32> = u_xlat6;
      x_1708 = vec3<f32>(x_1711.x, x_1711.y, x_1711.z);
    } else {
      let x_1714 : f32 = u_xlat45;
      x_1708 = vec3<f32>(x_1714, x_1714, x_1714);
    }
    let x_1716 : vec3<f32> = x_1708;
    u_xlat25 = x_1716;
  } else {
    u_xlat25.x = 1.0f;
    u_xlat25.y = 1.0f;
    u_xlat25.z = 1.0f;
  }
  let x_1721 : vec3<f32> = u_xlat25;
  let x_1723 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat25 = (x_1721 * vec3<f32>(x_1723.x, x_1723.y, x_1723.z));
  let x_1726 : f32 = u_xlat43;
  let x_1728 : vec3<f32> = u_xlat25;
  u_xlat25 = (vec3<f32>(x_1726, x_1726, x_1726) * x_1728);
  let x_1731 : f32 = vs_TEXCOORD3.w;
  u_xlat6.x = x_1731;
  let x_1735 : f32 = vs_TEXCOORD4.w;
  u_xlat6.y = x_1735;
  let x_1739 : f32 = vs_TEXCOORD5.w;
  u_xlat6.z = x_1739;
  let x_1742 : vec4<f32> = u_xlat6;
  let x_1745 : vec3<f32> = u_xlat21;
  u_xlat66 = dot(-(vec3<f32>(x_1742.x, x_1742.y, x_1742.z)), x_1745);
  let x_1747 : f32 = u_xlat66;
  let x_1748 : f32 = u_xlat66;
  u_xlat66 = (x_1747 + x_1748);
  let x_1750 : vec3<f32> = u_xlat21;
  let x_1751 : f32 = u_xlat66;
  let x_1755 : vec4<f32> = u_xlat6;
  let x_1758 : vec3<f32> = ((x_1750 * -(vec3<f32>(x_1751, x_1751, x_1751))) + -(vec3<f32>(x_1755.x, x_1755.y, x_1755.z)));
  let x_1759 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1759.w);
  let x_1761 : vec3<f32> = u_xlat21;
  let x_1762 : vec4<f32> = u_xlat6;
  u_xlat66 = dot(x_1761, vec3<f32>(x_1762.x, x_1762.y, x_1762.z));
  let x_1765 : f32 = u_xlat66;
  u_xlat66 = clamp(x_1765, 0.0f, 1.0f);
  let x_1767 : f32 = u_xlat66;
  u_xlat66 = (-(x_1767) + 1.0f);
  let x_1770 : f32 = u_xlat66;
  let x_1771 : f32 = u_xlat66;
  u_xlat66 = (x_1770 * x_1771);
  let x_1773 : f32 = u_xlat66;
  let x_1774 : f32 = u_xlat66;
  u_xlat66 = (x_1773 * x_1774);
  let x_1777 : f32 = u_xlat1;
  u_xlat67 = ((-(x_1777) * 0.699999988f) + 1.700000048f);
  let x_1783 : f32 = u_xlat1;
  let x_1784 : f32 = u_xlat67;
  u_xlat1 = (x_1783 * x_1784);
  let x_1786 : f32 = u_xlat1;
  u_xlat1 = (x_1786 * 6.0f);
  let x_1797 : vec4<f32> = u_xlat7;
  let x_1799 : f32 = u_xlat1;
  let x_1800 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1797.x, x_1797.y, x_1797.z), x_1799);
  u_xlat7 = x_1800;
  let x_1802 : f32 = u_xlat7.w;
  u_xlat1 = (x_1802 + -1.0f);
  let x_1809 : f32 = x_1807.unity_SpecCube0_HDR.w;
  let x_1810 : f32 = u_xlat1;
  u_xlat1 = ((x_1809 * x_1810) + 1.0f);
  let x_1813 : f32 = u_xlat1;
  u_xlat1 = max(x_1813, 0.0f);
  let x_1815 : f32 = u_xlat1;
  u_xlat1 = log2(x_1815);
  let x_1817 : f32 = u_xlat1;
  let x_1819 : f32 = x_1807.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_1817 * x_1819);
  let x_1821 : f32 = u_xlat1;
  u_xlat1 = exp2(x_1821);
  let x_1823 : f32 = u_xlat1;
  let x_1825 : f32 = x_1807.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_1823 * x_1825);
  let x_1827 : vec4<f32> = u_xlat7;
  let x_1829 : f32 = u_xlat1;
  let x_1831 : vec3<f32> = (vec3<f32>(x_1827.x, x_1827.y, x_1827.z) * vec3<f32>(x_1829, x_1829, x_1829));
  let x_1832 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1831.x, x_1831.y, x_1831.z, x_1832.w);
  let x_1834 : f32 = u_xlat23;
  let x_1836 : f32 = u_xlat23;
  let x_1840 : vec2<f32> = ((vec2<f32>(x_1834, x_1834) * vec2<f32>(x_1836, x_1836)) + vec2<f32>(-1.0f, 1.0f));
  let x_1841 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1840.x, x_1840.y, x_1841.z, x_1841.w);
  let x_1844 : f32 = u_xlat8.y;
  u_xlat1 = (1.0f / x_1844);
  let x_1847 : vec4<f32> = u_xlat0;
  let x_1850 : f32 = u_xlat60;
  u_xlat28 = (-(vec3<f32>(x_1847.x, x_1847.y, x_1847.z)) + vec3<f32>(x_1850, x_1850, x_1850));
  let x_1853 : f32 = u_xlat66;
  let x_1855 : vec3<f32> = u_xlat28;
  let x_1857 : vec4<f32> = u_xlat0;
  u_xlat28 = ((vec3<f32>(x_1853, x_1853, x_1853) * x_1855) + vec3<f32>(x_1857.x, x_1857.y, x_1857.z));
  let x_1860 : f32 = u_xlat1;
  let x_1862 : vec3<f32> = u_xlat28;
  u_xlat28 = (vec3<f32>(x_1860, x_1860, x_1860) * x_1862);
  let x_1864 : vec4<f32> = u_xlat7;
  let x_1866 : vec3<f32> = u_xlat28;
  let x_1867 : vec3<f32> = (vec3<f32>(x_1864.x, x_1864.y, x_1864.z) * x_1866);
  let x_1868 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1867.x, x_1867.y, x_1867.z, x_1868.w);
  let x_1870 : vec3<f32> = u_xlat22;
  let x_1871 : vec3<f32> = u_xlat4;
  let x_1873 : vec4<f32> = u_xlat7;
  u_xlat22 = ((x_1870 * x_1871) + vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
  let x_1877 : f32 = u_xlat5.x;
  let x_1880 : f32 = x_1807.unity_LightData.z;
  u_xlat60 = (x_1877 * x_1880);
  let x_1882 : vec3<f32> = u_xlat21;
  let x_1884 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_1882, vec3<f32>(x_1884.x, x_1884.y, x_1884.z));
  let x_1887 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1887, 0.0f, 1.0f);
  let x_1889 : f32 = u_xlat60;
  let x_1890 : f32 = u_xlat1;
  u_xlat60 = (x_1889 * x_1890);
  let x_1892 : f32 = u_xlat60;
  let x_1894 : vec3<f32> = u_xlat25;
  let x_1895 : vec3<f32> = (vec3<f32>(x_1892, x_1892, x_1892) * x_1894);
  let x_1896 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1895.x, x_1895.y, x_1895.z, x_1896.w);
  let x_1898 : vec4<f32> = u_xlat6;
  let x_1901 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1903 : vec3<f32> = (vec3<f32>(x_1898.x, x_1898.y, x_1898.z) + vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
  let x_1904 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
  let x_1906 : vec4<f32> = u_xlat7;
  let x_1908 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(vec3<f32>(x_1906.x, x_1906.y, x_1906.z), vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
  let x_1911 : f32 = u_xlat60;
  u_xlat60 = max(x_1911, 1.17549435e-37f);
  let x_1914 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_1914);
  let x_1916 : f32 = u_xlat60;
  let x_1918 : vec4<f32> = u_xlat7;
  let x_1920 : vec3<f32> = (vec3<f32>(x_1916, x_1916, x_1916) * vec3<f32>(x_1918.x, x_1918.y, x_1918.z));
  let x_1921 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1920.x, x_1920.y, x_1920.z, x_1921.w);
  let x_1923 : vec3<f32> = u_xlat21;
  let x_1924 : vec4<f32> = u_xlat7;
  u_xlat60 = dot(x_1923, vec3<f32>(x_1924.x, x_1924.y, x_1924.z));
  let x_1927 : f32 = u_xlat60;
  u_xlat60 = clamp(x_1927, 0.0f, 1.0f);
  let x_1930 : vec4<f32> = x_44.x_MainLightPosition;
  let x_1932 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_1930.x, x_1930.y, x_1930.z), vec3<f32>(x_1932.x, x_1932.y, x_1932.z));
  let x_1935 : f32 = u_xlat1;
  u_xlat1 = clamp(x_1935, 0.0f, 1.0f);
  let x_1937 : f32 = u_xlat60;
  let x_1938 : f32 = u_xlat60;
  u_xlat60 = (x_1937 * x_1938);
  let x_1940 : f32 = u_xlat60;
  let x_1942 : f32 = u_xlat8.x;
  u_xlat60 = ((x_1940 * x_1942) + 1.000010014f);
  let x_1946 : f32 = u_xlat1;
  let x_1947 : f32 = u_xlat1;
  u_xlat1 = (x_1946 * x_1947);
  let x_1949 : f32 = u_xlat60;
  let x_1950 : f32 = u_xlat60;
  u_xlat60 = (x_1949 * x_1950);
  let x_1952 : f32 = u_xlat1;
  u_xlat1 = max(x_1952, 0.100000001f);
  let x_1955 : f32 = u_xlat60;
  let x_1956 : f32 = u_xlat1;
  u_xlat60 = (x_1955 * x_1956);
  let x_1958 : f32 = u_xlat63;
  let x_1959 : f32 = u_xlat60;
  u_xlat60 = (x_1958 * x_1959);
  let x_1961 : f32 = u_xlat64;
  let x_1962 : f32 = u_xlat60;
  u_xlat60 = (x_1961 / x_1962);
  let x_1964 : vec4<f32> = u_xlat0;
  let x_1966 : f32 = u_xlat60;
  let x_1969 : vec3<f32> = u_xlat4;
  let x_1970 : vec3<f32> = ((vec3<f32>(x_1964.x, x_1964.y, x_1964.z) * vec3<f32>(x_1966, x_1966, x_1966)) + x_1969);
  let x_1971 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1970.x, x_1970.y, x_1970.z, x_1971.w);
  let x_1973 : vec4<f32> = u_xlat5;
  let x_1975 : vec4<f32> = u_xlat7;
  let x_1977 : vec3<f32> = (vec3<f32>(x_1973.x, x_1973.y, x_1973.z) * vec3<f32>(x_1975.x, x_1975.y, x_1975.z));
  let x_1978 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1977.x, x_1977.y, x_1977.z, x_1978.w);
  let x_1981 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_1983 : f32 = x_1807.unity_LightData.y;
  u_xlat60 = min(x_1981, x_1983);
  let x_1987 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_1987));
  let x_1992 : f32 = x_1614.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1994 : f32 = x_1614.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1996 : f32 = x_1614.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1998 : f32 = x_1614.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1999 : vec4<f32> = vec4<f32>(x_1992, x_1994, x_1996, x_1998);
  let x_2005 : vec4<bool> = (vec4<f32>(x_1999.x, x_1999.y, x_1999.z, x_1999.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2005.x, x_2005.y);
  u_xlat28.x = 0.0f;
  u_xlat28.y = 0.0f;
  u_xlat28.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2016 : u32 = u_xlatu_loop_1;
    let x_2017 : u32 = u_xlatu60;
    if ((x_2016 < x_2017)) {
    } else {
      break;
    }
    let x_2020 : u32 = u_xlatu_loop_1;
    u_xlatu23 = (x_2020 >> 2u);
    let x_2024 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2024 & 3u));
    let x_2027 : u32 = u_xlatu23;
    let x_2030 : vec4<f32> = x_1807.unity_LightIndices[bitcast<i32>(x_2027)];
    let x_2040 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2045 : vec4<u32> = indexable[x_2040];
    u_xlat23 = dot(x_2030, bitcast<vec4<f32>>(x_2045));
    let x_2048 : f32 = u_xlat23;
    u_xlatu23 = bitcast<u32>(i32(x_2048));
    let x_2051 : vec3<f32> = vs_TEXCOORD7;
    let x_2063 : u32 = u_xlatu23;
    let x_2066 : vec4<f32> = x_2062.x_AdditionalLightsPosition[bitcast<i32>(x_2063)];
    let x_2069 : u32 = u_xlatu23;
    let x_2072 : vec4<f32> = x_2062.x_AdditionalLightsPosition[bitcast<i32>(x_2069)];
    let x_2074 : vec3<f32> = ((-(x_2051) * vec3<f32>(x_2066.w, x_2066.w, x_2066.w)) + vec3<f32>(x_2072.x, x_2072.y, x_2072.z));
    let x_2075 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2074.x, x_2074.y, x_2074.z, x_2075.w);
    let x_2077 : vec4<f32> = u_xlat9;
    let x_2079 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2077.x, x_2077.y, x_2077.z), vec3<f32>(x_2079.x, x_2079.y, x_2079.z));
    let x_2082 : f32 = u_xlat65;
    u_xlat65 = max(x_2082, 6.10351562e-05f);
    let x_2085 : f32 = u_xlat65;
    u_xlat66 = inverseSqrt(x_2085);
    let x_2087 : f32 = u_xlat66;
    let x_2089 : vec4<f32> = u_xlat9;
    let x_2091 : vec3<f32> = (vec3<f32>(x_2087, x_2087, x_2087) * vec3<f32>(x_2089.x, x_2089.y, x_2089.z));
    let x_2092 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2091.x, x_2091.y, x_2091.z, x_2092.w);
    let x_2095 : f32 = u_xlat65;
    u_xlat47.x = (1.0f / x_2095);
    let x_2098 : f32 = u_xlat65;
    let x_2099 : u32 = u_xlatu23;
    let x_2102 : f32 = x_2062.x_AdditionalLightsAttenuation[bitcast<i32>(x_2099)].x;
    u_xlat65 = (x_2098 * x_2102);
    let x_2104 : f32 = u_xlat65;
    let x_2106 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2104) * x_2106) + 1.0f);
    let x_2109 : f32 = u_xlat65;
    u_xlat65 = max(x_2109, 0.0f);
    let x_2111 : f32 = u_xlat65;
    let x_2112 : f32 = u_xlat65;
    u_xlat65 = (x_2111 * x_2112);
    let x_2114 : f32 = u_xlat65;
    let x_2116 : f32 = u_xlat47.x;
    u_xlat65 = (x_2114 * x_2116);
    let x_2118 : u32 = u_xlatu23;
    let x_2121 : vec4<f32> = x_2062.x_AdditionalLightsSpotDir[bitcast<i32>(x_2118)];
    let x_2123 : vec4<f32> = u_xlat10;
    u_xlat47.x = dot(vec3<f32>(x_2121.x, x_2121.y, x_2121.z), vec3<f32>(x_2123.x, x_2123.y, x_2123.z));
    let x_2128 : f32 = u_xlat47.x;
    let x_2129 : u32 = u_xlatu23;
    let x_2132 : f32 = x_2062.x_AdditionalLightsAttenuation[bitcast<i32>(x_2129)].z;
    let x_2134 : u32 = u_xlatu23;
    let x_2137 : f32 = x_2062.x_AdditionalLightsAttenuation[bitcast<i32>(x_2134)].w;
    u_xlat47.x = ((x_2128 * x_2132) + x_2137);
    let x_2141 : f32 = u_xlat47.x;
    u_xlat47.x = clamp(x_2141, 0.0f, 1.0f);
    let x_2145 : f32 = u_xlat47.x;
    let x_2147 : f32 = u_xlat47.x;
    u_xlat47.x = (x_2145 * x_2147);
    let x_2150 : f32 = u_xlat65;
    let x_2152 : f32 = u_xlat47.x;
    u_xlat65 = (x_2150 * x_2152);
    let x_2155 : u32 = u_xlatu23;
    u_xlatu47 = (x_2155 >> 5u);
    let x_2158 : u32 = u_xlatu23;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2158) & 31i)));
    let x_2164 : i32 = u_xlati67;
    let x_2166 : u32 = u_xlatu47;
    let x_2169 : f32 = x_1614.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2166)].el;
    u_xlati47 = bitcast<i32>((bitcast<u32>(x_2164) & bitcast<u32>(x_2169)));
    let x_2173 : i32 = u_xlati47;
    if ((x_2173 != 0i)) {
      let x_2183 : u32 = u_xlatu23;
      let x_2186 : f32 = x_2182.x_AdditionalLightsLightTypes[bitcast<i32>(x_2183)].el;
      u_xlati47 = i32(x_2186);
      let x_2188 : i32 = u_xlati47;
      u_xlati67 = select(1i, 0i, (x_2188 != 0i));
      let x_2192 : u32 = u_xlatu23;
      u_xlati69 = (bitcast<i32>(x_2192) << bitcast<u32>(2i));
      let x_2195 : i32 = u_xlati67;
      if ((x_2195 != 0i)) {
        let x_2199 : vec3<f32> = vs_TEXCOORD7;
        let x_2201 : i32 = u_xlati69;
        let x_2204 : i32 = u_xlati69;
        let x_2208 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2201 + 1i) / 4i)][((x_2204 + 1i) % 4i)];
        let x_2210 : vec3<f32> = (vec3<f32>(x_2199.y, x_2199.y, x_2199.y) * vec3<f32>(x_2208.x, x_2208.y, x_2208.w));
        let x_2211 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2210.x, x_2210.y, x_2210.z, x_2211.w);
        let x_2213 : i32 = u_xlati69;
        let x_2215 : i32 = u_xlati69;
        let x_2218 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[(x_2213 / 4i)][(x_2215 % 4i)];
        let x_2220 : vec3<f32> = vs_TEXCOORD7;
        let x_2223 : vec4<f32> = u_xlat11;
        let x_2225 : vec3<f32> = ((vec3<f32>(x_2218.x, x_2218.y, x_2218.w) * vec3<f32>(x_2220.x, x_2220.x, x_2220.x)) + vec3<f32>(x_2223.x, x_2223.y, x_2223.z));
        let x_2226 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2225.x, x_2225.y, x_2225.z, x_2226.w);
        let x_2228 : i32 = u_xlati69;
        let x_2231 : i32 = u_xlati69;
        let x_2235 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2228 + 2i) / 4i)][((x_2231 + 2i) % 4i)];
        let x_2237 : vec3<f32> = vs_TEXCOORD7;
        let x_2240 : vec4<f32> = u_xlat11;
        let x_2242 : vec3<f32> = ((vec3<f32>(x_2235.x, x_2235.y, x_2235.w) * vec3<f32>(x_2237.z, x_2237.z, x_2237.z)) + vec3<f32>(x_2240.x, x_2240.y, x_2240.z));
        let x_2243 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2242.x, x_2242.y, x_2242.z, x_2243.w);
        let x_2245 : vec4<f32> = u_xlat11;
        let x_2247 : i32 = u_xlati69;
        let x_2250 : i32 = u_xlati69;
        let x_2254 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2247 + 3i) / 4i)][((x_2250 + 3i) % 4i)];
        let x_2256 : vec3<f32> = (vec3<f32>(x_2245.x, x_2245.y, x_2245.z) + vec3<f32>(x_2254.x, x_2254.y, x_2254.w));
        let x_2257 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2256.x, x_2256.y, x_2256.z, x_2257.w);
        let x_2259 : vec4<f32> = u_xlat11;
        let x_2261 : vec4<f32> = u_xlat11;
        let x_2263 : vec2<f32> = (vec2<f32>(x_2259.x, x_2259.y) / vec2<f32>(x_2261.z, x_2261.z));
        let x_2264 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2263.x, x_2263.y, x_2264.z, x_2264.w);
        let x_2266 : vec4<f32> = u_xlat11;
        let x_2269 : vec2<f32> = ((vec2<f32>(x_2266.x, x_2266.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2270 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2269.x, x_2269.y, x_2270.z, x_2270.w);
        let x_2272 : vec4<f32> = u_xlat11;
        let x_2276 : vec2<f32> = clamp(vec2<f32>(x_2272.x, x_2272.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2277 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2276.x, x_2276.y, x_2277.z, x_2277.w);
        let x_2279 : u32 = u_xlatu23;
        let x_2282 : vec4<f32> = x_2182.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2279)];
        let x_2284 : vec4<f32> = u_xlat11;
        let x_2287 : u32 = u_xlatu23;
        let x_2290 : vec4<f32> = x_2182.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2287)];
        let x_2292 : vec2<f32> = ((vec2<f32>(x_2282.x, x_2282.y) * vec2<f32>(x_2284.x, x_2284.y)) + vec2<f32>(x_2290.z, x_2290.w));
        let x_2293 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2292.x, x_2292.y, x_2293.z, x_2293.w);
      } else {
        let x_2297 : i32 = u_xlati47;
        u_xlatb47 = (x_2297 == 1i);
        let x_2299 : bool = u_xlatb47;
        u_xlati47 = select(0i, 1i, x_2299);
        let x_2301 : i32 = u_xlati47;
        if ((x_2301 != 0i)) {
          let x_2305 : vec3<f32> = vs_TEXCOORD7;
          let x_2307 : i32 = u_xlati69;
          let x_2310 : i32 = u_xlati69;
          let x_2314 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2307 + 1i) / 4i)][((x_2310 + 1i) % 4i)];
          u_xlat47 = (vec2<f32>(x_2305.y, x_2305.y) * vec2<f32>(x_2314.x, x_2314.y));
          let x_2317 : i32 = u_xlati69;
          let x_2319 : i32 = u_xlati69;
          let x_2322 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[(x_2317 / 4i)][(x_2319 % 4i)];
          let x_2324 : vec3<f32> = vs_TEXCOORD7;
          let x_2327 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2322.x, x_2322.y) * vec2<f32>(x_2324.x, x_2324.x)) + x_2327);
          let x_2329 : i32 = u_xlati69;
          let x_2332 : i32 = u_xlati69;
          let x_2336 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2329 + 2i) / 4i)][((x_2332 + 2i) % 4i)];
          let x_2338 : vec3<f32> = vs_TEXCOORD7;
          let x_2341 : vec2<f32> = u_xlat47;
          u_xlat47 = ((vec2<f32>(x_2336.x, x_2336.y) * vec2<f32>(x_2338.z, x_2338.z)) + x_2341);
          let x_2343 : vec2<f32> = u_xlat47;
          let x_2344 : i32 = u_xlati69;
          let x_2347 : i32 = u_xlati69;
          let x_2351 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2344 + 3i) / 4i)][((x_2347 + 3i) % 4i)];
          u_xlat47 = (x_2343 + vec2<f32>(x_2351.x, x_2351.y));
          let x_2354 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2354 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2357 : vec2<f32> = u_xlat47;
          u_xlat47 = fract(x_2357);
          let x_2359 : u32 = u_xlatu23;
          let x_2362 : vec4<f32> = x_2182.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2359)];
          let x_2364 : vec2<f32> = u_xlat47;
          let x_2366 : u32 = u_xlatu23;
          let x_2369 : vec4<f32> = x_2182.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2366)];
          let x_2371 : vec2<f32> = ((vec2<f32>(x_2362.x, x_2362.y) * x_2364) + vec2<f32>(x_2369.z, x_2369.w));
          let x_2372 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2371.x, x_2371.y, x_2372.z, x_2372.w);
        } else {
          let x_2375 : vec3<f32> = vs_TEXCOORD7;
          let x_2377 : i32 = u_xlati69;
          let x_2380 : i32 = u_xlati69;
          let x_2384 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2377 + 1i) / 4i)][((x_2380 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2375.y, x_2375.y, x_2375.y, x_2375.y) * x_2384);
          let x_2386 : i32 = u_xlati69;
          let x_2388 : i32 = u_xlati69;
          let x_2391 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[(x_2386 / 4i)][(x_2388 % 4i)];
          let x_2392 : vec3<f32> = vs_TEXCOORD7;
          let x_2395 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2391 * vec4<f32>(x_2392.x, x_2392.x, x_2392.x, x_2392.x)) + x_2395);
          let x_2397 : i32 = u_xlati69;
          let x_2400 : i32 = u_xlati69;
          let x_2404 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2397 + 2i) / 4i)][((x_2400 + 2i) % 4i)];
          let x_2405 : vec3<f32> = vs_TEXCOORD7;
          let x_2408 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2404 * vec4<f32>(x_2405.z, x_2405.z, x_2405.z, x_2405.z)) + x_2408);
          let x_2410 : vec4<f32> = u_xlat12;
          let x_2411 : i32 = u_xlati69;
          let x_2414 : i32 = u_xlati69;
          let x_2418 : vec4<f32> = x_2182.x_AdditionalLightsWorldToLights[((x_2411 + 3i) / 4i)][((x_2414 + 3i) % 4i)];
          u_xlat12 = (x_2410 + x_2418);
          let x_2420 : vec4<f32> = u_xlat12;
          let x_2422 : vec4<f32> = u_xlat12;
          let x_2424 : vec3<f32> = (vec3<f32>(x_2420.x, x_2420.y, x_2420.z) / vec3<f32>(x_2422.w, x_2422.w, x_2422.w));
          let x_2425 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2424.x, x_2424.y, x_2424.z, x_2425.w);
          let x_2427 : vec4<f32> = u_xlat12;
          let x_2429 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(vec3<f32>(x_2427.x, x_2427.y, x_2427.z), vec3<f32>(x_2429.x, x_2429.y, x_2429.z));
          let x_2434 : f32 = u_xlat47.x;
          u_xlat47.x = inverseSqrt(x_2434);
          let x_2437 : vec2<f32> = u_xlat47;
          let x_2439 : vec4<f32> = u_xlat12;
          let x_2441 : vec3<f32> = (vec3<f32>(x_2437.x, x_2437.x, x_2437.x) * vec3<f32>(x_2439.x, x_2439.y, x_2439.z));
          let x_2442 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2441.x, x_2441.y, x_2441.z, x_2442.w);
          let x_2444 : vec4<f32> = u_xlat12;
          u_xlat47.x = dot(abs(vec3<f32>(x_2444.x, x_2444.y, x_2444.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2451 : f32 = u_xlat47.x;
          u_xlat47.x = max(x_2451, 0.000001f);
          let x_2456 : f32 = u_xlat47.x;
          u_xlat47.x = (1.0f / x_2456);
          let x_2459 : vec2<f32> = u_xlat47;
          let x_2461 : vec4<f32> = u_xlat12;
          let x_2463 : vec3<f32> = (vec3<f32>(x_2459.x, x_2459.x, x_2459.x) * vec3<f32>(x_2461.z, x_2461.x, x_2461.y));
          let x_2464 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2463.x, x_2463.y, x_2463.z, x_2464.w);
          let x_2467 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2467);
          let x_2471 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2471, 0.0f, 1.0f);
          let x_2475 : vec4<f32> = u_xlat13;
          let x_2478 : vec4<bool> = (vec4<f32>(x_2475.y, x_2475.z, x_2475.y, x_2475.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2478.x, x_2478.y);
          let x_2482 : bool = u_xlatb51.x;
          if (x_2482) {
            let x_2487 : f32 = u_xlat13.x;
            x_2483 = x_2487;
          } else {
            let x_2490 : f32 = u_xlat13.x;
            x_2483 = -(x_2490);
          }
          let x_2492 : f32 = x_2483;
          u_xlat51.x = x_2492;
          let x_2495 : bool = u_xlatb51.y;
          if (x_2495) {
            let x_2500 : f32 = u_xlat13.x;
            x_2496 = x_2500;
          } else {
            let x_2503 : f32 = u_xlat13.x;
            x_2496 = -(x_2503);
          }
          let x_2505 : f32 = x_2496;
          u_xlat51.y = x_2505;
          let x_2507 : vec4<f32> = u_xlat12;
          let x_2509 : vec2<f32> = u_xlat47;
          let x_2512 : vec2<f32> = u_xlat51;
          u_xlat47 = ((vec2<f32>(x_2507.x, x_2507.y) * vec2<f32>(x_2509.x, x_2509.x)) + x_2512);
          let x_2514 : vec2<f32> = u_xlat47;
          u_xlat47 = ((x_2514 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2517 : vec2<f32> = u_xlat47;
          u_xlat47 = clamp(x_2517, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2521 : u32 = u_xlatu23;
          let x_2524 : vec4<f32> = x_2182.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2521)];
          let x_2526 : vec2<f32> = u_xlat47;
          let x_2528 : u32 = u_xlatu23;
          let x_2531 : vec4<f32> = x_2182.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2528)];
          let x_2533 : vec2<f32> = ((vec2<f32>(x_2524.x, x_2524.y) * x_2526) + vec2<f32>(x_2531.z, x_2531.w));
          let x_2534 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2533.x, x_2533.y, x_2534.z, x_2534.w);
        }
      }
      let x_2541 : vec4<f32> = u_xlat11;
      let x_2544 : f32 = x_44.x_GlobalMipBias.x;
      let x_2545 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2541.x, x_2541.y), x_2544);
      u_xlat11 = x_2545;
      let x_2547 : bool = u_xlatb7.y;
      if (x_2547) {
        let x_2552 : f32 = u_xlat11.w;
        x_2548 = x_2552;
      } else {
        let x_2555 : f32 = u_xlat11.x;
        x_2548 = x_2555;
      }
      let x_2556 : f32 = x_2548;
      u_xlat47.x = x_2556;
      let x_2559 : bool = u_xlatb7.x;
      if (x_2559) {
        let x_2563 : vec4<f32> = u_xlat11;
        x_2560 = vec3<f32>(x_2563.x, x_2563.y, x_2563.z);
      } else {
        let x_2566 : vec2<f32> = u_xlat47;
        x_2560 = vec3<f32>(x_2566.x, x_2566.x, x_2566.x);
      }
      let x_2568 : vec3<f32> = x_2560;
      let x_2569 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2568.x, x_2568.y, x_2568.z, x_2569.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2575 : vec4<f32> = u_xlat11;
    let x_2577 : u32 = u_xlatu23;
    let x_2580 : vec4<f32> = x_2062.x_AdditionalLightsColor[bitcast<i32>(x_2577)];
    let x_2582 : vec3<f32> = (vec3<f32>(x_2575.x, x_2575.y, x_2575.z) * vec3<f32>(x_2580.x, x_2580.y, x_2580.z));
    let x_2583 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2582.x, x_2582.y, x_2582.z, x_2583.w);
    let x_2585 : f32 = u_xlat43;
    let x_2587 : vec4<f32> = u_xlat11;
    let x_2589 : vec3<f32> = (vec3<f32>(x_2585, x_2585, x_2585) * vec3<f32>(x_2587.x, x_2587.y, x_2587.z));
    let x_2590 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2589.x, x_2589.y, x_2589.z, x_2590.w);
    let x_2592 : vec3<f32> = u_xlat21;
    let x_2593 : vec4<f32> = u_xlat10;
    u_xlat23 = dot(x_2592, vec3<f32>(x_2593.x, x_2593.y, x_2593.z));
    let x_2596 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2596, 0.0f, 1.0f);
    let x_2598 : f32 = u_xlat23;
    let x_2599 : f32 = u_xlat65;
    u_xlat23 = (x_2598 * x_2599);
    let x_2601 : f32 = u_xlat23;
    let x_2603 : vec4<f32> = u_xlat11;
    let x_2605 : vec3<f32> = (vec3<f32>(x_2601, x_2601, x_2601) * vec3<f32>(x_2603.x, x_2603.y, x_2603.z));
    let x_2606 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2605.x, x_2605.y, x_2605.z, x_2606.w);
    let x_2608 : vec4<f32> = u_xlat9;
    let x_2610 : f32 = u_xlat66;
    let x_2613 : vec4<f32> = u_xlat6;
    let x_2615 : vec3<f32> = ((vec3<f32>(x_2608.x, x_2608.y, x_2608.z) * vec3<f32>(x_2610, x_2610, x_2610)) + vec3<f32>(x_2613.x, x_2613.y, x_2613.z));
    let x_2616 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2615.x, x_2615.y, x_2615.z, x_2616.w);
    let x_2618 : vec4<f32> = u_xlat9;
    let x_2620 : vec4<f32> = u_xlat9;
    u_xlat23 = dot(vec3<f32>(x_2618.x, x_2618.y, x_2618.z), vec3<f32>(x_2620.x, x_2620.y, x_2620.z));
    let x_2623 : f32 = u_xlat23;
    u_xlat23 = max(x_2623, 1.17549435e-37f);
    let x_2625 : f32 = u_xlat23;
    u_xlat23 = inverseSqrt(x_2625);
    let x_2627 : f32 = u_xlat23;
    let x_2629 : vec4<f32> = u_xlat9;
    let x_2631 : vec3<f32> = (vec3<f32>(x_2627, x_2627, x_2627) * vec3<f32>(x_2629.x, x_2629.y, x_2629.z));
    let x_2632 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2631.x, x_2631.y, x_2631.z, x_2632.w);
    let x_2634 : vec3<f32> = u_xlat21;
    let x_2635 : vec4<f32> = u_xlat9;
    u_xlat23 = dot(x_2634, vec3<f32>(x_2635.x, x_2635.y, x_2635.z));
    let x_2638 : f32 = u_xlat23;
    u_xlat23 = clamp(x_2638, 0.0f, 1.0f);
    let x_2640 : vec4<f32> = u_xlat10;
    let x_2642 : vec4<f32> = u_xlat9;
    u_xlat65 = dot(vec3<f32>(x_2640.x, x_2640.y, x_2640.z), vec3<f32>(x_2642.x, x_2642.y, x_2642.z));
    let x_2645 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2645, 0.0f, 1.0f);
    let x_2647 : f32 = u_xlat23;
    let x_2648 : f32 = u_xlat23;
    u_xlat23 = (x_2647 * x_2648);
    let x_2650 : f32 = u_xlat23;
    let x_2652 : f32 = u_xlat8.x;
    u_xlat23 = ((x_2650 * x_2652) + 1.000010014f);
    let x_2655 : f32 = u_xlat65;
    let x_2656 : f32 = u_xlat65;
    u_xlat65 = (x_2655 * x_2656);
    let x_2658 : f32 = u_xlat23;
    let x_2659 : f32 = u_xlat23;
    u_xlat23 = (x_2658 * x_2659);
    let x_2661 : f32 = u_xlat65;
    u_xlat65 = max(x_2661, 0.100000001f);
    let x_2663 : f32 = u_xlat23;
    let x_2664 : f32 = u_xlat65;
    u_xlat23 = (x_2663 * x_2664);
    let x_2666 : f32 = u_xlat63;
    let x_2667 : f32 = u_xlat23;
    u_xlat23 = (x_2666 * x_2667);
    let x_2669 : f32 = u_xlat64;
    let x_2670 : f32 = u_xlat23;
    u_xlat23 = (x_2669 / x_2670);
    let x_2672 : vec4<f32> = u_xlat0;
    let x_2674 : f32 = u_xlat23;
    let x_2677 : vec3<f32> = u_xlat4;
    let x_2678 : vec3<f32> = ((vec3<f32>(x_2672.x, x_2672.y, x_2672.z) * vec3<f32>(x_2674, x_2674, x_2674)) + x_2677);
    let x_2679 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2678.x, x_2678.y, x_2678.z, x_2679.w);
    let x_2681 : vec4<f32> = u_xlat9;
    let x_2683 : vec4<f32> = u_xlat11;
    let x_2686 : vec3<f32> = u_xlat28;
    u_xlat28 = ((vec3<f32>(x_2681.x, x_2681.y, x_2681.z) * vec3<f32>(x_2683.x, x_2683.y, x_2683.z)) + x_2686);

    continuing {
      let x_2688 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2688 + bitcast<u32>(1i));
    }
  }
  let x_2690 : vec3<f32> = u_xlat22;
  let x_2691 : vec3<f32> = u_xlat3;
  let x_2694 : vec4<f32> = u_xlat5;
  let x_2696 : vec3<f32> = ((x_2690 * vec3<f32>(x_2691.x, x_2691.x, x_2691.x)) + vec3<f32>(x_2694.x, x_2694.y, x_2694.z));
  let x_2697 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2696.x, x_2696.y, x_2696.z, x_2697.w);
  let x_2699 : vec3<f32> = u_xlat28;
  let x_2700 : vec4<f32> = u_xlat0;
  let x_2702 : vec3<f32> = (x_2699 + vec3<f32>(x_2700.x, x_2700.y, x_2700.z));
  let x_2703 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2702.x, x_2702.y, x_2702.z, x_2703.w);
  let x_2705 : f32 = u_xlat2;
  let x_2706 : f32 = u_xlat2;
  u_xlat60 = (x_2705 * -(x_2706));
  let x_2709 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2709);
  let x_2711 : vec4<f32> = u_xlat0;
  let x_2715 : vec4<f32> = x_44.unity_FogColor;
  let x_2718 : vec3<f32> = (vec3<f32>(x_2711.x, x_2711.y, x_2711.z) + -(vec3<f32>(x_2715.x, x_2715.y, x_2715.z)));
  let x_2719 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2718.x, x_2718.y, x_2718.z, x_2719.w);
  let x_2723 : f32 = u_xlat60;
  let x_2725 : vec4<f32> = u_xlat0;
  let x_2729 : vec4<f32> = x_44.unity_FogColor;
  let x_2731 : vec3<f32> = ((vec3<f32>(x_2723, x_2723, x_2723) * vec3<f32>(x_2725.x, x_2725.y, x_2725.z)) + vec3<f32>(x_2729.x, x_2729.y, x_2729.z));
  let x_2732 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2731.x, x_2731.y, x_2731.z, x_2732.w);
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

