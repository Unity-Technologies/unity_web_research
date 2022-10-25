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

@group(0) @binding(2) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

@group(0) @binding(7) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_154 : MainLightShadows;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(10) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1798 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_2026 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2135 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlat55 : f32;
  var u_xlatu55 : u32;
  var u_xlati55 : i32;
  var u_xlat56 : f32;
  var u_xlatb57 : bool;
  var txVec0 : vec3<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat57 : f32;
  var u_xlatb4 : vec2<bool>;
  var u_xlat40 : vec2<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat42 : vec2<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat22 : f32;
  var txVec5 : vec3<f32>;
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
  var u_xlat60 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat58 : f32;
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
  var u_xlatb20 : vec2<bool>;
  var u_xlatb38 : bool;
  var x_1745 : f32;
  var u_xlat20 : vec2<f32>;
  var u_xlat38 : f32;
  var x_1865 : f32;
  var x_1876 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu40 : u32;
  var u_xlati58 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat59 : f32;
  var u_xlatu59 : u32;
  var u_xlati60 : i32;
  var u_xlati59 : i32;
  var u_xlati7 : i32;
  var u_xlat25 : vec3<f32>;
  var u_xlatb59 : bool;
  var u_xlatb7 : vec4<bool>;
  var x_2437 : f32;
  var x_2450 : f32;
  var x_2512 : f32;
  var x_2523 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_2612 : f32;
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
  let x_149 : vec3<f32> = vs_TEXCOORD1;
  let x_156 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres0;
  let x_159 : vec3<f32> = (x_149 + -(vec3<f32>(x_156.x, x_156.y, x_156.z)));
  let x_160 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
  let x_163 : vec3<f32> = vs_TEXCOORD1;
  let x_165 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres1;
  let x_168 : vec3<f32> = (x_163 + -(vec3<f32>(x_165.x, x_165.y, x_165.z)));
  let x_169 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec3<f32> = vs_TEXCOORD1;
  let x_175 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres2;
  let x_178 : vec3<f32> = (x_172 + -(vec3<f32>(x_175.x, x_175.y, x_175.z)));
  let x_179 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_182 : vec3<f32> = vs_TEXCOORD1;
  let x_185 : vec4<f32> = x_154.x_CascadeShadowSplitSpheres3;
  let x_188 : vec3<f32> = (x_182 + -(vec3<f32>(x_185.x, x_185.y, x_185.z)));
  let x_189 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
  let x_191 : vec4<f32> = u_xlat2;
  let x_193 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_191.x, x_191.y, x_191.z), vec3<f32>(x_193.x, x_193.y, x_193.z));
  let x_197 : vec4<f32> = u_xlat3;
  let x_199 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_197.x, x_197.y, x_197.z), vec3<f32>(x_199.x, x_199.y, x_199.z));
  let x_204 : vec4<f32> = u_xlat4;
  let x_206 : vec4<f32> = u_xlat4;
  u_xlat2.z = dot(vec3<f32>(x_204.x, x_204.y, x_204.z), vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_210 : vec4<f32> = u_xlat5;
  let x_212 : vec4<f32> = u_xlat5;
  u_xlat2.w = dot(vec3<f32>(x_210.x, x_210.y, x_210.z), vec3<f32>(x_212.x, x_212.y, x_212.z));
  let x_219 : vec4<f32> = u_xlat2;
  let x_222 : vec4<f32> = x_154.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_219 < x_222);
  let x_225 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_225);
  let x_229 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_229);
  let x_233 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_233);
  let x_237 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_237);
  let x_241 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_241);
  let x_247 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_247);
  let x_251 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_251);
  let x_254 : vec4<f32> = u_xlat2;
  let x_256 : vec4<f32> = u_xlat3;
  let x_258 : vec3<f32> = (vec3<f32>(x_254.x, x_254.y, x_254.z) + vec3<f32>(x_256.y, x_256.z, x_256.w));
  let x_259 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
  let x_261 : vec4<f32> = u_xlat2;
  let x_264 : vec3<f32> = max(vec3<f32>(x_261.x, x_261.y, x_261.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_265 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_265.x, x_264.x, x_264.y, x_264.z);
  let x_268 : vec4<f32> = u_xlat3;
  u_xlat55 = dot(x_268, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_274 : f32 = u_xlat55;
  u_xlat55 = (-(x_274) + 4.0f);
  let x_279 : f32 = u_xlat55;
  u_xlatu55 = u32(x_279);
  let x_283 : u32 = u_xlatu55;
  u_xlati55 = (bitcast<i32>(x_283) << bitcast<u32>(2i));
  let x_286 : vec3<f32> = vs_TEXCOORD1;
  let x_288 : i32 = u_xlati55;
  let x_291 : i32 = u_xlati55;
  let x_295 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_288 + 1i) / 4i)][((x_291 + 1i) % 4i)];
  let x_297 : vec3<f32> = (vec3<f32>(x_286.y, x_286.y, x_286.y) * vec3<f32>(x_295.x, x_295.y, x_295.z));
  let x_298 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_297.x, x_297.y, x_297.z, x_298.w);
  let x_300 : i32 = u_xlati55;
  let x_302 : i32 = u_xlati55;
  let x_305 : vec4<f32> = x_154.x_MainLightWorldToShadow[(x_300 / 4i)][(x_302 % 4i)];
  let x_307 : vec3<f32> = vs_TEXCOORD1;
  let x_310 : vec4<f32> = u_xlat2;
  let x_312 : vec3<f32> = ((vec3<f32>(x_305.x, x_305.y, x_305.z) * vec3<f32>(x_307.x, x_307.x, x_307.x)) + vec3<f32>(x_310.x, x_310.y, x_310.z));
  let x_313 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_315 : i32 = u_xlati55;
  let x_318 : i32 = u_xlati55;
  let x_322 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_315 + 2i) / 4i)][((x_318 + 2i) % 4i)];
  let x_324 : vec3<f32> = vs_TEXCOORD1;
  let x_327 : vec4<f32> = u_xlat2;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.x, x_322.y, x_322.z) * vec3<f32>(x_324.z, x_324.z, x_324.z)) + vec3<f32>(x_327.x, x_327.y, x_327.z));
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_332 : vec4<f32> = u_xlat2;
  let x_334 : i32 = u_xlati55;
  let x_337 : i32 = u_xlati55;
  let x_341 : vec4<f32> = x_154.x_MainLightWorldToShadow[((x_334 + 3i) / 4i)][((x_337 + 3i) % 4i)];
  let x_343 : vec3<f32> = (vec3<f32>(x_332.x, x_332.y, x_332.z) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_352 : vec2<f32> = vs_TEXCOORD7;
  let x_354 : f32 = x_43.x_GlobalMipBias.x;
  let x_355 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_352, x_354);
  u_xlat3 = x_355;
  let x_360 : vec2<f32> = vs_TEXCOORD7;
  let x_362 : f32 = x_43.x_GlobalMipBias.x;
  let x_363 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_360, x_362);
  let x_364 : vec3<f32> = vec3<f32>(x_363.x, x_363.y, x_363.z);
  let x_365 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_367 : vec4<f32> = u_xlat3;
  let x_371 : vec3<f32> = (vec3<f32>(x_367.x, x_367.y, x_367.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_372 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec3<f32> = u_xlat1;
  let x_375 : vec4<f32> = u_xlat3;
  u_xlat55 = dot(x_374, vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : f32 = u_xlat55;
  u_xlat55 = (x_378 + 0.5f);
  let x_381 : f32 = u_xlat55;
  let x_383 : vec4<f32> = u_xlat4;
  let x_385 : vec3<f32> = (vec3<f32>(x_381, x_381, x_381) * vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_389 : f32 = u_xlat3.w;
  u_xlat55 = max(x_389, 0.0001f);
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : f32 = u_xlat55;
  let x_396 : vec3<f32> = (vec3<f32>(x_392.x, x_392.y, x_392.z) / vec3<f32>(x_394, x_394, x_394));
  let x_397 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_396.x, x_396.y, x_396.z, x_397.w);
  let x_401 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_402 : vec2<f32> = vec2<f32>(x_401.x, x_401.y);
  let x_406 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_402.x, x_402.y));
  let x_407 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_406.x, x_406.y, x_407.z, x_407.w);
  let x_409 : vec4<f32> = u_xlat4;
  let x_411 : vec4<f32> = hlslcc_FragCoord;
  let x_413 : vec2<f32> = (vec2<f32>(x_409.x, x_409.y) * vec2<f32>(x_411.x, x_411.y));
  let x_414 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_413.x, x_413.y, x_414.z, x_414.w);
  let x_417 : f32 = u_xlat4.y;
  let x_420 : f32 = x_43.x_ScaleBiasRt.x;
  let x_423 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat55 = ((x_417 * x_420) + x_423);
  let x_425 : f32 = u_xlat55;
  u_xlat4.z = (-(x_425) + 1.0f);
  let x_434 : vec4<f32> = u_xlat4;
  let x_437 : f32 = x_43.x_GlobalMipBias.x;
  let x_438 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_434.x, x_434.z), x_437);
  u_xlat55 = x_438.x;
  let x_441 : f32 = u_xlat55;
  u_xlat56 = (x_441 + -1.0f);
  let x_444 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_445 : f32 = u_xlat56;
  u_xlat56 = ((x_444 * x_445) + 1.0f);
  let x_448 : f32 = u_xlat55;
  u_xlat55 = min(x_448, 1.0f);
  let x_452 : f32 = x_154.x_MainLightShadowParams.y;
  u_xlatb57 = (0.0f < x_452);
  let x_454 : bool = u_xlatb57;
  if (x_454) {
    let x_458 : f32 = x_154.x_MainLightShadowParams.y;
    u_xlatb57 = (x_458 == 1.0f);
    let x_460 : bool = u_xlatb57;
    if (x_460) {
      let x_463 : vec4<f32> = u_xlat2;
      let x_467 : vec4<f32> = x_154.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_463.x, x_463.y, x_463.x, x_463.y) + x_467);
      let x_470 : vec4<f32> = u_xlat4;
      let x_471 : vec2<f32> = vec2<f32>(x_470.x, x_470.y);
      let x_473 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_471.x, x_471.y, x_473);
      let x_485 : vec3<f32> = txVec0;
      let x_487 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_485.xy, x_485.z);
      u_xlat5.x = x_487;
      let x_490 : vec4<f32> = u_xlat4;
      let x_491 : vec2<f32> = vec2<f32>(x_490.z, x_490.w);
      let x_493 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_491.x, x_491.y, x_493);
      let x_500 : vec3<f32> = txVec1;
      let x_502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_500.xy, x_500.z);
      u_xlat5.y = x_502;
      let x_504 : vec4<f32> = u_xlat2;
      let x_507 : vec4<f32> = x_154.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_504.x, x_504.y, x_504.x, x_504.y) + x_507);
      let x_510 : vec4<f32> = u_xlat4;
      let x_511 : vec2<f32> = vec2<f32>(x_510.x, x_510.y);
      let x_513 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_511.x, x_511.y, x_513);
      let x_520 : vec3<f32> = txVec2;
      let x_522 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_520.xy, x_520.z);
      u_xlat5.z = x_522;
      let x_525 : vec4<f32> = u_xlat4;
      let x_526 : vec2<f32> = vec2<f32>(x_525.z, x_525.w);
      let x_528 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_526.x, x_526.y, x_528);
      let x_535 : vec3<f32> = txVec3;
      let x_537 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_535.xy, x_535.z);
      u_xlat5.w = x_537;
      let x_540 : vec4<f32> = u_xlat5;
      u_xlat57 = dot(x_540, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_549 : f32 = x_154.x_MainLightShadowParams.y;
      u_xlatb4.x = (x_549 == 2.0f);
      let x_553 : bool = u_xlatb4.x;
      if (x_553) {
        let x_556 : vec4<f32> = u_xlat2;
        let x_560 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_564 : vec2<f32> = ((vec2<f32>(x_556.x, x_556.y) * vec2<f32>(x_560.z, x_560.w)) + vec2<f32>(0.5f, 0.5f));
        let x_565 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_564.x, x_564.y, x_565.z, x_565.w);
        let x_567 : vec4<f32> = u_xlat4;
        let x_569 : vec2<f32> = floor(vec2<f32>(x_567.x, x_567.y));
        let x_570 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_569.x, x_569.y, x_570.z, x_570.w);
        let x_574 : vec4<f32> = u_xlat2;
        let x_577 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_580 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_574.x, x_574.y) * vec2<f32>(x_577.z, x_577.w)) + -(vec2<f32>(x_580.x, x_580.y)));
        let x_584 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_584.x, x_584.x, x_584.y, x_584.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_589 : vec4<f32> = u_xlat5;
        let x_591 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_589.x, x_589.x, x_589.z, x_589.z) * vec4<f32>(x_591.x, x_591.x, x_591.z, x_591.z));
        let x_594 : vec4<f32> = u_xlat6;
        let x_598 : vec2<f32> = (vec2<f32>(x_594.y, x_594.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_599 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_598.x, x_599.y, x_598.y, x_599.w);
        let x_601 : vec4<f32> = u_xlat6;
        let x_604 : vec2<f32> = u_xlat40;
        let x_606 : vec2<f32> = ((vec2<f32>(x_601.x, x_601.z) * vec2<f32>(0.5f, 0.5f)) + -(x_604));
        let x_607 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_606.x, x_606.y, x_607.z, x_607.w);
        let x_610 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_610) + vec2<f32>(1.0f, 1.0f));
        let x_614 : vec2<f32> = u_xlat40;
        let x_616 : vec2<f32> = min(x_614, vec2<f32>(0.0f, 0.0f));
        let x_617 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_616.x, x_616.y, x_617.z, x_617.w);
        let x_619 : vec4<f32> = u_xlat7;
        let x_622 : vec4<f32> = u_xlat7;
        let x_625 : vec2<f32> = u_xlat42;
        let x_626 : vec2<f32> = ((-(vec2<f32>(x_619.x, x_619.y)) * vec2<f32>(x_622.x, x_622.y)) + x_625);
        let x_627 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_626.x, x_626.y, x_627.z, x_627.w);
        let x_629 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_629, vec2<f32>(0.0f, 0.0f));
        let x_631 : vec2<f32> = u_xlat40;
        let x_633 : vec2<f32> = u_xlat40;
        let x_635 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_631) * x_633) + vec2<f32>(x_635.y, x_635.w));
        let x_638 : vec4<f32> = u_xlat7;
        let x_640 : vec2<f32> = (vec2<f32>(x_638.x, x_638.y) + vec2<f32>(1.0f, 1.0f));
        let x_641 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_640.x, x_640.y, x_641.z, x_641.w);
        let x_643 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_643 + vec2<f32>(1.0f, 1.0f));
        let x_646 : vec4<f32> = u_xlat6;
        let x_650 : vec2<f32> = (vec2<f32>(x_646.x, x_646.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_651 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_650.x, x_650.y, x_651.z, x_651.w);
        let x_653 : vec2<f32> = u_xlat42;
        let x_654 : vec2<f32> = (x_653 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_655 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_654.x, x_654.y, x_655.z, x_655.w);
        let x_657 : vec4<f32> = u_xlat7;
        let x_659 : vec2<f32> = (vec2<f32>(x_657.x, x_657.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_660 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_659.x, x_659.y, x_660.z, x_660.w);
        let x_663 : vec2<f32> = u_xlat40;
        let x_664 : vec2<f32> = (x_663 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_665 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_664.x, x_664.y, x_665.z, x_665.w);
        let x_667 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_667.y, x_667.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_671 : f32 = u_xlat7.x;
        u_xlat8.z = x_671;
        let x_674 : f32 = u_xlat40.x;
        u_xlat8.w = x_674;
        let x_677 : f32 = u_xlat9.x;
        u_xlat6.z = x_677;
        let x_680 : f32 = u_xlat5.x;
        u_xlat6.w = x_680;
        let x_683 : vec4<f32> = u_xlat6;
        let x_685 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_683.z, x_683.w, x_683.x, x_683.z) + vec4<f32>(x_685.z, x_685.w, x_685.x, x_685.z));
        let x_689 : f32 = u_xlat8.y;
        u_xlat7.z = x_689;
        let x_692 : f32 = u_xlat40.y;
        u_xlat7.w = x_692;
        let x_695 : f32 = u_xlat6.y;
        u_xlat9.z = x_695;
        let x_698 : f32 = u_xlat5.z;
        u_xlat9.w = x_698;
        let x_700 : vec4<f32> = u_xlat7;
        let x_702 : vec4<f32> = u_xlat9;
        let x_704 : vec3<f32> = (vec3<f32>(x_700.z, x_700.y, x_700.w) + vec3<f32>(x_702.z, x_702.y, x_702.w));
        let x_705 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
        let x_707 : vec4<f32> = u_xlat6;
        let x_709 : vec4<f32> = u_xlat10;
        let x_711 : vec3<f32> = (vec3<f32>(x_707.x, x_707.z, x_707.w) / vec3<f32>(x_709.z, x_709.w, x_709.y));
        let x_712 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
        let x_714 : vec4<f32> = u_xlat6;
        let x_719 : vec3<f32> = (vec3<f32>(x_714.x, x_714.y, x_714.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_720 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
        let x_722 : vec4<f32> = u_xlat9;
        let x_724 : vec4<f32> = u_xlat5;
        let x_726 : vec3<f32> = (vec3<f32>(x_722.z, x_722.y, x_722.w) / vec3<f32>(x_724.x, x_724.y, x_724.z));
        let x_727 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_726.x, x_726.y, x_726.z, x_727.w);
        let x_729 : vec4<f32> = u_xlat7;
        let x_731 : vec3<f32> = (vec3<f32>(x_729.x, x_729.y, x_729.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_732 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
        let x_734 : vec4<f32> = u_xlat6;
        let x_737 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_739 : vec3<f32> = (vec3<f32>(x_734.y, x_734.x, x_734.z) * vec3<f32>(x_737.x, x_737.x, x_737.x));
        let x_740 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
        let x_742 : vec4<f32> = u_xlat7;
        let x_745 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_747 : vec3<f32> = (vec3<f32>(x_742.x, x_742.y, x_742.z) * vec3<f32>(x_745.y, x_745.y, x_745.y));
        let x_748 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
        let x_751 : f32 = u_xlat7.x;
        u_xlat6.w = x_751;
        let x_753 : vec4<f32> = u_xlat4;
        let x_756 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_759 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_753.x, x_753.y, x_753.x, x_753.y) * vec4<f32>(x_756.x, x_756.y, x_756.x, x_756.y)) + vec4<f32>(x_759.y, x_759.w, x_759.x, x_759.w));
        let x_762 : vec4<f32> = u_xlat4;
        let x_765 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_768 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_762.x, x_762.y) * vec2<f32>(x_765.x, x_765.y)) + vec2<f32>(x_768.z, x_768.w));
        let x_772 : f32 = u_xlat6.y;
        u_xlat7.w = x_772;
        let x_774 : vec4<f32> = u_xlat7;
        let x_775 : vec2<f32> = vec2<f32>(x_774.y, x_774.z);
        let x_776 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_776.x, x_775.x, x_776.z, x_775.y);
        let x_778 : vec4<f32> = u_xlat4;
        let x_781 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_784 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_778.x, x_778.y, x_778.x, x_778.y) * vec4<f32>(x_781.x, x_781.y, x_781.x, x_781.y)) + vec4<f32>(x_784.x, x_784.y, x_784.z, x_784.y));
        let x_787 : vec4<f32> = u_xlat4;
        let x_790 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_793 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_787.x, x_787.y, x_787.x, x_787.y) * vec4<f32>(x_790.x, x_790.y, x_790.x, x_790.y)) + vec4<f32>(x_793.w, x_793.y, x_793.w, x_793.z));
        let x_796 : vec4<f32> = u_xlat4;
        let x_799 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_802 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_796.x, x_796.y, x_796.x, x_796.y) * vec4<f32>(x_799.x, x_799.y, x_799.x, x_799.y)) + vec4<f32>(x_802.x, x_802.w, x_802.z, x_802.w));
        let x_806 : vec4<f32> = u_xlat5;
        let x_808 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_806.x, x_806.x, x_806.x, x_806.y) * vec4<f32>(x_808.z, x_808.w, x_808.y, x_808.z));
        let x_812 : vec4<f32> = u_xlat5;
        let x_814 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_812.y, x_812.y, x_812.z, x_812.z) * x_814);
        let x_817 : f32 = u_xlat5.z;
        let x_819 : f32 = u_xlat10.y;
        u_xlat4.x = (x_817 * x_819);
        let x_823 : vec4<f32> = u_xlat8;
        let x_824 : vec2<f32> = vec2<f32>(x_823.x, x_823.y);
        let x_826 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_824.x, x_824.y, x_826);
        let x_834 : vec3<f32> = txVec4;
        let x_836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_834.xy, x_834.z);
        u_xlat22 = x_836;
        let x_838 : vec4<f32> = u_xlat8;
        let x_839 : vec2<f32> = vec2<f32>(x_838.z, x_838.w);
        let x_841 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_839.x, x_839.y, x_841);
        let x_848 : vec3<f32> = txVec5;
        let x_850 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_848.xy, x_848.z);
        u_xlat5.x = x_850;
        let x_853 : f32 = u_xlat5.x;
        let x_855 : f32 = u_xlat11.y;
        u_xlat5.x = (x_853 * x_855);
        let x_859 : f32 = u_xlat11.x;
        let x_860 : f32 = u_xlat22;
        let x_863 : f32 = u_xlat5.x;
        u_xlat22 = ((x_859 * x_860) + x_863);
        let x_866 : vec2<f32> = u_xlat40;
        let x_868 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_866.x, x_866.y, x_868);
        let x_875 : vec3<f32> = txVec6;
        let x_877 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_875.xy, x_875.z);
        u_xlat40.x = x_877;
        let x_880 : f32 = u_xlat11.z;
        let x_882 : f32 = u_xlat40.x;
        let x_884 : f32 = u_xlat22;
        u_xlat22 = ((x_880 * x_882) + x_884);
        let x_887 : vec4<f32> = u_xlat7;
        let x_888 : vec2<f32> = vec2<f32>(x_887.x, x_887.y);
        let x_890 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_888.x, x_888.y, x_890);
        let x_897 : vec3<f32> = txVec7;
        let x_899 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_897.xy, x_897.z);
        u_xlat40.x = x_899;
        let x_902 : f32 = u_xlat11.w;
        let x_904 : f32 = u_xlat40.x;
        let x_906 : f32 = u_xlat22;
        u_xlat22 = ((x_902 * x_904) + x_906);
        let x_909 : vec4<f32> = u_xlat9;
        let x_910 : vec2<f32> = vec2<f32>(x_909.x, x_909.y);
        let x_912 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_910.x, x_910.y, x_912);
        let x_919 : vec3<f32> = txVec8;
        let x_921 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_919.xy, x_919.z);
        u_xlat40.x = x_921;
        let x_924 : f32 = u_xlat12.x;
        let x_926 : f32 = u_xlat40.x;
        let x_928 : f32 = u_xlat22;
        u_xlat22 = ((x_924 * x_926) + x_928);
        let x_931 : vec4<f32> = u_xlat9;
        let x_932 : vec2<f32> = vec2<f32>(x_931.z, x_931.w);
        let x_934 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_932.x, x_932.y, x_934);
        let x_941 : vec3<f32> = txVec9;
        let x_943 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_941.xy, x_941.z);
        u_xlat40.x = x_943;
        let x_946 : f32 = u_xlat12.y;
        let x_948 : f32 = u_xlat40.x;
        let x_950 : f32 = u_xlat22;
        u_xlat22 = ((x_946 * x_948) + x_950);
        let x_953 : vec4<f32> = u_xlat7;
        let x_954 : vec2<f32> = vec2<f32>(x_953.z, x_953.w);
        let x_956 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_954.x, x_954.y, x_956);
        let x_963 : vec3<f32> = txVec10;
        let x_965 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_963.xy, x_963.z);
        u_xlat40.x = x_965;
        let x_968 : f32 = u_xlat12.z;
        let x_970 : f32 = u_xlat40.x;
        let x_972 : f32 = u_xlat22;
        u_xlat22 = ((x_968 * x_970) + x_972);
        let x_975 : vec4<f32> = u_xlat6;
        let x_976 : vec2<f32> = vec2<f32>(x_975.x, x_975.y);
        let x_978 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_976.x, x_976.y, x_978);
        let x_985 : vec3<f32> = txVec11;
        let x_987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_985.xy, x_985.z);
        u_xlat40.x = x_987;
        let x_990 : f32 = u_xlat12.w;
        let x_992 : f32 = u_xlat40.x;
        let x_994 : f32 = u_xlat22;
        u_xlat22 = ((x_990 * x_992) + x_994);
        let x_997 : vec4<f32> = u_xlat6;
        let x_998 : vec2<f32> = vec2<f32>(x_997.z, x_997.w);
        let x_1000 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_998.x, x_998.y, x_1000);
        let x_1007 : vec3<f32> = txVec12;
        let x_1009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1007.xy, x_1007.z);
        u_xlat40.x = x_1009;
        let x_1012 : f32 = u_xlat4.x;
        let x_1014 : f32 = u_xlat40.x;
        let x_1016 : f32 = u_xlat22;
        u_xlat57 = ((x_1012 * x_1014) + x_1016);
      } else {
        let x_1019 : vec4<f32> = u_xlat2;
        let x_1022 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1025 : vec2<f32> = ((vec2<f32>(x_1019.x, x_1019.y) * vec2<f32>(x_1022.z, x_1022.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1026 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1025.x, x_1025.y, x_1026.z, x_1026.w);
        let x_1028 : vec4<f32> = u_xlat4;
        let x_1030 : vec2<f32> = floor(vec2<f32>(x_1028.x, x_1028.y));
        let x_1031 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1031.w);
        let x_1033 : vec4<f32> = u_xlat2;
        let x_1036 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1039 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_1033.x, x_1033.y) * vec2<f32>(x_1036.z, x_1036.w)) + -(vec2<f32>(x_1039.x, x_1039.y)));
        let x_1043 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_1043.x, x_1043.x, x_1043.y, x_1043.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1046 : vec4<f32> = u_xlat5;
        let x_1048 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1046.x, x_1046.x, x_1046.z, x_1046.z) * vec4<f32>(x_1048.x, x_1048.x, x_1048.z, x_1048.z));
        let x_1051 : vec4<f32> = u_xlat6;
        let x_1055 : vec2<f32> = (vec2<f32>(x_1051.y, x_1051.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1056 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1056.x, x_1055.x, x_1056.z, x_1055.y);
        let x_1058 : vec4<f32> = u_xlat6;
        let x_1061 : vec2<f32> = u_xlat40;
        let x_1063 : vec2<f32> = ((vec2<f32>(x_1058.x, x_1058.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1061));
        let x_1064 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1063.x, x_1064.y, x_1063.y, x_1064.w);
        let x_1066 : vec2<f32> = u_xlat40;
        let x_1068 : vec2<f32> = (-(x_1066) + vec2<f32>(1.0f, 1.0f));
        let x_1069 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1068.x, x_1068.y, x_1069.z, x_1069.w);
        let x_1071 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_1071, vec2<f32>(0.0f, 0.0f));
        let x_1073 : vec2<f32> = u_xlat42;
        let x_1075 : vec2<f32> = u_xlat42;
        let x_1077 : vec4<f32> = u_xlat6;
        let x_1079 : vec2<f32> = ((-(x_1073) * x_1075) + vec2<f32>(x_1077.x, x_1077.y));
        let x_1080 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1079.x, x_1079.y, x_1080.z, x_1080.w);
        let x_1082 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_1082, vec2<f32>(0.0f, 0.0f));
        let x_1085 : vec2<f32> = u_xlat42;
        let x_1087 : vec2<f32> = u_xlat42;
        let x_1089 : vec4<f32> = u_xlat5;
        let x_1091 : vec2<f32> = ((-(x_1085) * x_1087) + vec2<f32>(x_1089.y, x_1089.w));
        let x_1092 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1091.x, x_1092.y, x_1091.y);
        let x_1094 : vec4<f32> = u_xlat6;
        let x_1097 : vec2<f32> = (vec2<f32>(x_1094.x, x_1094.y) + vec2<f32>(2.0f, 2.0f));
        let x_1098 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1097.x, x_1097.y, x_1098.z, x_1098.w);
        let x_1100 : vec3<f32> = u_xlat23;
        let x_1102 : vec2<f32> = (vec2<f32>(x_1100.x, x_1100.z) + vec2<f32>(2.0f, 2.0f));
        let x_1103 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1103.x, x_1102.x, x_1103.z, x_1102.y);
        let x_1106 : f32 = u_xlat5.y;
        u_xlat8.z = (x_1106 * 0.081632003f);
        let x_1110 : vec4<f32> = u_xlat5;
        let x_1113 : vec3<f32> = (vec3<f32>(x_1110.z, x_1110.x, x_1110.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1114 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1113.x, x_1113.y, x_1113.z, x_1114.w);
        let x_1116 : vec4<f32> = u_xlat6;
        let x_1119 : vec2<f32> = (vec2<f32>(x_1116.x, x_1116.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1120 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1119.x, x_1119.y, x_1120.z, x_1120.w);
        let x_1123 : f32 = u_xlat9.y;
        u_xlat8.x = x_1123;
        let x_1125 : vec2<f32> = u_xlat40;
        let x_1132 : vec2<f32> = ((vec2<f32>(x_1125.x, x_1125.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1133 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1133.x, x_1132.x, x_1133.z, x_1132.y);
        let x_1135 : vec2<f32> = u_xlat40;
        let x_1139 : vec2<f32> = ((vec2<f32>(x_1135.x, x_1135.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1140 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1139.x, x_1140.y, x_1139.y, x_1140.w);
        let x_1143 : f32 = u_xlat5.x;
        u_xlat6.y = x_1143;
        let x_1146 : f32 = u_xlat7.y;
        u_xlat6.w = x_1146;
        let x_1148 : vec4<f32> = u_xlat6;
        let x_1149 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1148 + x_1149);
        let x_1151 : vec2<f32> = u_xlat40;
        let x_1154 : vec2<f32> = ((vec2<f32>(x_1151.y, x_1151.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1155 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1155.x, x_1154.x, x_1155.z, x_1154.y);
        let x_1157 : vec2<f32> = u_xlat40;
        let x_1160 : vec2<f32> = ((vec2<f32>(x_1157.y, x_1157.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1161 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1160.x, x_1161.y, x_1160.y, x_1161.w);
        let x_1164 : f32 = u_xlat5.y;
        u_xlat7.y = x_1164;
        let x_1166 : vec4<f32> = u_xlat7;
        let x_1167 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1166 + x_1167);
        let x_1169 : vec4<f32> = u_xlat6;
        let x_1170 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1169 / x_1170);
        let x_1172 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1172 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1178 : vec4<f32> = u_xlat7;
        let x_1179 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1178 / x_1179);
        let x_1181 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1181 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1183 : vec4<f32> = u_xlat6;
        let x_1186 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1183.w, x_1183.x, x_1183.y, x_1183.z) * vec4<f32>(x_1186.x, x_1186.x, x_1186.x, x_1186.x));
        let x_1189 : vec4<f32> = u_xlat7;
        let x_1192 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1189.x, x_1189.w, x_1189.y, x_1189.z) * vec4<f32>(x_1192.y, x_1192.y, x_1192.y, x_1192.y));
        let x_1195 : vec4<f32> = u_xlat6;
        let x_1196 : vec3<f32> = vec3<f32>(x_1195.y, x_1195.z, x_1195.w);
        let x_1197 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1196.x, x_1197.y, x_1196.y, x_1196.z);
        let x_1200 : f32 = u_xlat7.x;
        u_xlat9.y = x_1200;
        let x_1202 : vec4<f32> = u_xlat4;
        let x_1205 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1208 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1202.x, x_1202.y, x_1202.x, x_1202.y) * vec4<f32>(x_1205.x, x_1205.y, x_1205.x, x_1205.y)) + vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1208.y));
        let x_1211 : vec4<f32> = u_xlat4;
        let x_1214 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1217 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1211.x, x_1211.y) * vec2<f32>(x_1214.x, x_1214.y)) + vec2<f32>(x_1217.w, x_1217.y));
        let x_1221 : f32 = u_xlat9.y;
        u_xlat6.y = x_1221;
        let x_1224 : f32 = u_xlat7.z;
        u_xlat9.y = x_1224;
        let x_1226 : vec4<f32> = u_xlat4;
        let x_1229 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1232 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1226.x, x_1226.y, x_1226.x, x_1226.y) * vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y)) + vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1232.y));
        let x_1235 : vec4<f32> = u_xlat4;
        let x_1238 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1241 : vec4<f32> = u_xlat9;
        let x_1243 : vec2<f32> = ((vec2<f32>(x_1235.x, x_1235.y) * vec2<f32>(x_1238.x, x_1238.y)) + vec2<f32>(x_1241.w, x_1241.y));
        let x_1244 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1243.x, x_1243.y, x_1244.z, x_1244.w);
        let x_1247 : f32 = u_xlat9.y;
        u_xlat6.z = x_1247;
        let x_1250 : vec4<f32> = u_xlat4;
        let x_1253 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1256 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1250.x, x_1250.y, x_1250.x, x_1250.y) * vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.y)) + vec4<f32>(x_1256.x, x_1256.y, x_1256.x, x_1256.z));
        let x_1260 : f32 = u_xlat7.w;
        u_xlat9.y = x_1260;
        let x_1263 : vec4<f32> = u_xlat4;
        let x_1266 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1269 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1263.x, x_1263.y, x_1263.x, x_1263.y) * vec4<f32>(x_1266.x, x_1266.y, x_1266.x, x_1266.y)) + vec4<f32>(x_1269.x, x_1269.y, x_1269.z, x_1269.y));
        let x_1273 : vec4<f32> = u_xlat4;
        let x_1276 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1279 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1273.x, x_1273.y) * vec2<f32>(x_1276.x, x_1276.y)) + vec2<f32>(x_1279.w, x_1279.y));
        let x_1283 : f32 = u_xlat9.y;
        u_xlat6.w = x_1283;
        let x_1286 : vec4<f32> = u_xlat4;
        let x_1289 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1292 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1286.x, x_1286.y) * vec2<f32>(x_1289.x, x_1289.y)) + vec2<f32>(x_1292.x, x_1292.w));
        let x_1295 : vec4<f32> = u_xlat9;
        let x_1296 : vec3<f32> = vec3<f32>(x_1295.x, x_1295.z, x_1295.w);
        let x_1297 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1296.x, x_1297.y, x_1296.y, x_1296.z);
        let x_1299 : vec4<f32> = u_xlat4;
        let x_1302 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1305 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1299.x, x_1299.y, x_1299.x, x_1299.y) * vec4<f32>(x_1302.x, x_1302.y, x_1302.x, x_1302.y)) + vec4<f32>(x_1305.x, x_1305.y, x_1305.z, x_1305.y));
        let x_1309 : vec4<f32> = u_xlat4;
        let x_1312 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1315 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1309.x, x_1309.y) * vec2<f32>(x_1312.x, x_1312.y)) + vec2<f32>(x_1315.w, x_1315.y));
        let x_1319 : f32 = u_xlat6.x;
        u_xlat7.x = x_1319;
        let x_1321 : vec4<f32> = u_xlat4;
        let x_1324 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1327 : vec4<f32> = u_xlat7;
        let x_1329 : vec2<f32> = ((vec2<f32>(x_1321.x, x_1321.y) * vec2<f32>(x_1324.x, x_1324.y)) + vec2<f32>(x_1327.x, x_1327.y));
        let x_1330 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1329.x, x_1329.y, x_1330.z, x_1330.w);
        let x_1333 : vec4<f32> = u_xlat5;
        let x_1335 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1333.x, x_1333.x, x_1333.x, x_1333.x) * x_1335);
        let x_1338 : vec4<f32> = u_xlat5;
        let x_1340 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1338.y, x_1338.y, x_1338.y, x_1338.y) * x_1340);
        let x_1343 : vec4<f32> = u_xlat5;
        let x_1345 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1343.z, x_1343.z, x_1343.z, x_1343.z) * x_1345);
        let x_1347 : vec4<f32> = u_xlat5;
        let x_1349 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1347.w, x_1347.w, x_1347.w, x_1347.w) * x_1349);
        let x_1352 : vec4<f32> = u_xlat10;
        let x_1353 : vec2<f32> = vec2<f32>(x_1352.x, x_1352.y);
        let x_1355 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1353.x, x_1353.y, x_1355);
        let x_1362 : vec3<f32> = txVec13;
        let x_1364 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1362.xy, x_1362.z);
        u_xlat6.x = x_1364;
        let x_1367 : vec4<f32> = u_xlat10;
        let x_1368 : vec2<f32> = vec2<f32>(x_1367.z, x_1367.w);
        let x_1370 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1368.x, x_1368.y, x_1370);
        let x_1378 : vec3<f32> = txVec14;
        let x_1380 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1378.xy, x_1378.z);
        u_xlat60 = x_1380;
        let x_1381 : f32 = u_xlat60;
        let x_1383 : f32 = u_xlat15.y;
        u_xlat60 = (x_1381 * x_1383);
        let x_1386 : f32 = u_xlat15.x;
        let x_1388 : f32 = u_xlat6.x;
        let x_1390 : f32 = u_xlat60;
        u_xlat6.x = ((x_1386 * x_1388) + x_1390);
        let x_1394 : vec2<f32> = u_xlat40;
        let x_1396 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec15;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1403.xy, x_1403.z);
        u_xlat40.x = x_1405;
        let x_1408 : f32 = u_xlat15.z;
        let x_1410 : f32 = u_xlat40.x;
        let x_1413 : f32 = u_xlat6.x;
        u_xlat40.x = ((x_1408 * x_1410) + x_1413);
        let x_1417 : vec4<f32> = u_xlat13;
        let x_1418 : vec2<f32> = vec2<f32>(x_1417.x, x_1417.y);
        let x_1420 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1418.x, x_1418.y, x_1420);
        let x_1428 : vec3<f32> = txVec16;
        let x_1430 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1428.xy, x_1428.z);
        u_xlat58 = x_1430;
        let x_1432 : f32 = u_xlat15.w;
        let x_1433 : f32 = u_xlat58;
        let x_1436 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1432 * x_1433) + x_1436);
        let x_1440 : vec4<f32> = u_xlat11;
        let x_1441 : vec2<f32> = vec2<f32>(x_1440.x, x_1440.y);
        let x_1443 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1441.x, x_1441.y, x_1443);
        let x_1450 : vec3<f32> = txVec17;
        let x_1452 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1450.xy, x_1450.z);
        u_xlat58 = x_1452;
        let x_1454 : f32 = u_xlat16.x;
        let x_1455 : f32 = u_xlat58;
        let x_1458 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1454 * x_1455) + x_1458);
        let x_1462 : vec4<f32> = u_xlat11;
        let x_1463 : vec2<f32> = vec2<f32>(x_1462.z, x_1462.w);
        let x_1465 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1463.x, x_1463.y, x_1465);
        let x_1472 : vec3<f32> = txVec18;
        let x_1474 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1472.xy, x_1472.z);
        u_xlat58 = x_1474;
        let x_1476 : f32 = u_xlat16.y;
        let x_1477 : f32 = u_xlat58;
        let x_1480 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1476 * x_1477) + x_1480);
        let x_1484 : vec4<f32> = u_xlat12;
        let x_1485 : vec2<f32> = vec2<f32>(x_1484.x, x_1484.y);
        let x_1487 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1485.x, x_1485.y, x_1487);
        let x_1494 : vec3<f32> = txVec19;
        let x_1496 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1494.xy, x_1494.z);
        u_xlat58 = x_1496;
        let x_1498 : f32 = u_xlat16.z;
        let x_1499 : f32 = u_xlat58;
        let x_1502 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1498 * x_1499) + x_1502);
        let x_1506 : vec4<f32> = u_xlat13;
        let x_1507 : vec2<f32> = vec2<f32>(x_1506.z, x_1506.w);
        let x_1509 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1507.x, x_1507.y, x_1509);
        let x_1516 : vec3<f32> = txVec20;
        let x_1518 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1516.xy, x_1516.z);
        u_xlat58 = x_1518;
        let x_1520 : f32 = u_xlat16.w;
        let x_1521 : f32 = u_xlat58;
        let x_1524 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1520 * x_1521) + x_1524);
        let x_1528 : vec4<f32> = u_xlat14;
        let x_1529 : vec2<f32> = vec2<f32>(x_1528.x, x_1528.y);
        let x_1531 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1529.x, x_1529.y, x_1531);
        let x_1538 : vec3<f32> = txVec21;
        let x_1540 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1538.xy, x_1538.z);
        u_xlat58 = x_1540;
        let x_1542 : f32 = u_xlat17.x;
        let x_1543 : f32 = u_xlat58;
        let x_1546 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1542 * x_1543) + x_1546);
        let x_1550 : vec4<f32> = u_xlat14;
        let x_1551 : vec2<f32> = vec2<f32>(x_1550.z, x_1550.w);
        let x_1553 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1551.x, x_1551.y, x_1553);
        let x_1560 : vec3<f32> = txVec22;
        let x_1562 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1560.xy, x_1560.z);
        u_xlat58 = x_1562;
        let x_1564 : f32 = u_xlat17.y;
        let x_1565 : f32 = u_xlat58;
        let x_1568 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1564 * x_1565) + x_1568);
        let x_1572 : vec2<f32> = u_xlat24;
        let x_1574 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1572.x, x_1572.y, x_1574);
        let x_1581 : vec3<f32> = txVec23;
        let x_1583 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1581.xy, x_1581.z);
        u_xlat58 = x_1583;
        let x_1585 : f32 = u_xlat17.z;
        let x_1586 : f32 = u_xlat58;
        let x_1589 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1585 * x_1586) + x_1589);
        let x_1593 : vec2<f32> = u_xlat48;
        let x_1595 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1593.x, x_1593.y, x_1595);
        let x_1602 : vec3<f32> = txVec24;
        let x_1604 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1602.xy, x_1602.z);
        u_xlat58 = x_1604;
        let x_1606 : f32 = u_xlat17.w;
        let x_1607 : f32 = u_xlat58;
        let x_1610 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1606 * x_1607) + x_1610);
        let x_1614 : vec4<f32> = u_xlat9;
        let x_1615 : vec2<f32> = vec2<f32>(x_1614.x, x_1614.y);
        let x_1617 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1615.x, x_1615.y, x_1617);
        let x_1624 : vec3<f32> = txVec25;
        let x_1626 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1624.xy, x_1624.z);
        u_xlat58 = x_1626;
        let x_1628 : f32 = u_xlat5.x;
        let x_1629 : f32 = u_xlat58;
        let x_1632 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1628 * x_1629) + x_1632);
        let x_1636 : vec4<f32> = u_xlat9;
        let x_1637 : vec2<f32> = vec2<f32>(x_1636.z, x_1636.w);
        let x_1639 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1637.x, x_1637.y, x_1639);
        let x_1646 : vec3<f32> = txVec26;
        let x_1648 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1646.xy, x_1646.z);
        u_xlat58 = x_1648;
        let x_1650 : f32 = u_xlat5.y;
        let x_1651 : f32 = u_xlat58;
        let x_1654 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1650 * x_1651) + x_1654);
        let x_1658 : vec2<f32> = u_xlat43;
        let x_1660 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1658.x, x_1658.y, x_1660);
        let x_1667 : vec3<f32> = txVec27;
        let x_1669 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1667.xy, x_1667.z);
        u_xlat58 = x_1669;
        let x_1671 : f32 = u_xlat5.z;
        let x_1672 : f32 = u_xlat58;
        let x_1675 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1671 * x_1672) + x_1675);
        let x_1679 : vec4<f32> = u_xlat4;
        let x_1680 : vec2<f32> = vec2<f32>(x_1679.x, x_1679.y);
        let x_1682 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1680.x, x_1680.y, x_1682);
        let x_1689 : vec3<f32> = txVec28;
        let x_1691 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1689.xy, x_1689.z);
        u_xlat4.x = x_1691;
        let x_1694 : f32 = u_xlat5.w;
        let x_1696 : f32 = u_xlat4.x;
        let x_1699 : f32 = u_xlat40.x;
        u_xlat57 = ((x_1694 * x_1696) + x_1699);
      }
    }
  } else {
    let x_1703 : vec4<f32> = u_xlat2;
    let x_1704 : vec2<f32> = vec2<f32>(x_1703.x, x_1703.y);
    let x_1706 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1704.x, x_1704.y, x_1706);
    let x_1713 : vec3<f32> = txVec29;
    let x_1715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1713.xy, x_1713.z);
    u_xlat57 = x_1715;
  }
  let x_1717 : f32 = x_154.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1717) + 1.0f);
  let x_1721 : f32 = u_xlat57;
  let x_1723 : f32 = x_154.x_MainLightShadowParams.x;
  let x_1726 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1721 * x_1723) + x_1726);
  let x_1731 : f32 = u_xlat2.z;
  u_xlatb20.x = (0.0f >= x_1731);
  let x_1736 : f32 = u_xlat2.z;
  u_xlatb38 = (x_1736 >= 1.0f);
  let x_1738 : bool = u_xlatb38;
  let x_1740 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_1738 | x_1740);
  let x_1744 : bool = u_xlatb20.x;
  if (x_1744) {
    x_1745 = 1.0f;
  } else {
    let x_1750 : f32 = u_xlat2.x;
    x_1745 = x_1750;
  }
  let x_1751 : f32 = x_1745;
  u_xlat2.x = x_1751;
  let x_1753 : vec3<f32> = vs_TEXCOORD1;
  let x_1756 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1758 : vec3<f32> = (x_1753 + -(x_1756));
  let x_1759 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1758.x, x_1758.y, x_1758.z, x_1759.w);
  let x_1762 : vec4<f32> = u_xlat4;
  let x_1764 : vec4<f32> = u_xlat4;
  u_xlat20.x = dot(vec3<f32>(x_1762.x, x_1762.y, x_1762.z), vec3<f32>(x_1764.x, x_1764.y, x_1764.z));
  let x_1769 : f32 = u_xlat20.x;
  let x_1771 : f32 = x_154.x_MainLightShadowParams.z;
  let x_1774 : f32 = x_154.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_1769 * x_1771) + x_1774);
  let x_1778 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_1778, 0.0f, 1.0f);
  let x_1783 : f32 = u_xlat2.x;
  u_xlat38 = (-(x_1783) + 1.0f);
  let x_1787 : f32 = u_xlat20.x;
  let x_1788 : f32 = u_xlat38;
  let x_1791 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1787 * x_1788) + x_1791);
  let x_1800 : f32 = x_1798.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_1800 == -1.0f));
  let x_1804 : bool = u_xlatb20.x;
  if (x_1804) {
    let x_1807 : vec3<f32> = vs_TEXCOORD1;
    let x_1810 : vec4<f32> = x_1798.x_MainLightWorldToLight[1i];
    u_xlat20 = (vec2<f32>(x_1807.y, x_1807.y) * vec2<f32>(x_1810.x, x_1810.y));
    let x_1814 : vec4<f32> = x_1798.x_MainLightWorldToLight[0i];
    let x_1816 : vec3<f32> = vs_TEXCOORD1;
    let x_1819 : vec2<f32> = u_xlat20;
    u_xlat20 = ((vec2<f32>(x_1814.x, x_1814.y) * vec2<f32>(x_1816.x, x_1816.x)) + x_1819);
    let x_1822 : vec4<f32> = x_1798.x_MainLightWorldToLight[2i];
    let x_1824 : vec3<f32> = vs_TEXCOORD1;
    let x_1827 : vec2<f32> = u_xlat20;
    u_xlat20 = ((vec2<f32>(x_1822.x, x_1822.y) * vec2<f32>(x_1824.z, x_1824.z)) + x_1827);
    let x_1829 : vec2<f32> = u_xlat20;
    let x_1831 : vec4<f32> = x_1798.x_MainLightWorldToLight[3i];
    u_xlat20 = (x_1829 + vec2<f32>(x_1831.x, x_1831.y));
    let x_1834 : vec2<f32> = u_xlat20;
    u_xlat20 = ((x_1834 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1842 : vec2<f32> = u_xlat20;
    let x_1844 : f32 = x_43.x_GlobalMipBias.x;
    let x_1845 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1842, x_1844);
    u_xlat4 = x_1845;
    let x_1847 : f32 = x_1798.x_MainLightCookieTextureFormat;
    let x_1849 : f32 = x_1798.x_MainLightCookieTextureFormat;
    let x_1851 : f32 = x_1798.x_MainLightCookieTextureFormat;
    let x_1853 : f32 = x_1798.x_MainLightCookieTextureFormat;
    let x_1854 : vec4<f32> = vec4<f32>(x_1847, x_1849, x_1851, x_1853);
    let x_1861 : vec4<bool> = (vec4<f32>(x_1854.x, x_1854.y, x_1854.z, x_1854.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1861.x, x_1861.y);
    let x_1864 : bool = u_xlatb20.y;
    if (x_1864) {
      let x_1869 : f32 = u_xlat4.w;
      x_1865 = x_1869;
    } else {
      let x_1872 : f32 = u_xlat4.x;
      x_1865 = x_1872;
    }
    let x_1873 : f32 = x_1865;
    u_xlat38 = x_1873;
    let x_1875 : bool = u_xlatb20.x;
    if (x_1875) {
      let x_1879 : vec4<f32> = u_xlat4;
      x_1876 = vec3<f32>(x_1879.x, x_1879.y, x_1879.z);
    } else {
      let x_1882 : f32 = u_xlat38;
      x_1876 = vec3<f32>(x_1882, x_1882, x_1882);
    }
    let x_1884 : vec3<f32> = x_1876;
    let x_1885 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1891 : vec4<f32> = u_xlat4;
  let x_1894 : vec4<f32> = x_43.x_MainLightColor;
  let x_1896 : vec3<f32> = (vec3<f32>(x_1891.x, x_1891.y, x_1891.z) * vec3<f32>(x_1894.x, x_1894.y, x_1894.z));
  let x_1897 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1896.x, x_1896.y, x_1896.z, x_1897.w);
  let x_1899 : f32 = u_xlat56;
  let x_1901 : vec4<f32> = u_xlat4;
  let x_1903 : vec3<f32> = (vec3<f32>(x_1899, x_1899, x_1899) * vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
  let x_1904 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
  let x_1906 : f32 = u_xlat55;
  let x_1908 : vec4<f32> = u_xlat3;
  let x_1910 : vec3<f32> = (vec3<f32>(x_1906, x_1906, x_1906) * vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
  let x_1911 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
  let x_1914 : f32 = u_xlat2.x;
  let x_1916 : f32 = x_93.unity_LightData.z;
  u_xlat55 = (x_1914 * x_1916);
  let x_1918 : f32 = u_xlat55;
  let x_1920 : vec4<f32> = u_xlat4;
  let x_1922 : vec3<f32> = (vec3<f32>(x_1918, x_1918, x_1918) * vec3<f32>(x_1920.x, x_1920.y, x_1920.z));
  let x_1923 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1922.x, x_1922.y, x_1922.z, x_1923.w);
  let x_1925 : vec3<f32> = u_xlat1;
  let x_1927 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(x_1925, vec3<f32>(x_1927.x, x_1927.y, x_1927.z));
  let x_1930 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1930, 0.0f, 1.0f);
  let x_1932 : f32 = u_xlat55;
  let x_1934 : vec4<f32> = u_xlat2;
  let x_1936 : vec3<f32> = (vec3<f32>(x_1932, x_1932, x_1932) * vec3<f32>(x_1934.x, x_1934.y, x_1934.z));
  let x_1937 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1936.x, x_1936.y, x_1936.z, x_1937.w);
  let x_1939 : vec4<f32> = u_xlat0;
  let x_1941 : vec4<f32> = u_xlat2;
  let x_1943 : vec3<f32> = (vec3<f32>(x_1939.y, x_1939.z, x_1939.w) * vec3<f32>(x_1941.x, x_1941.y, x_1941.z));
  let x_1944 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1943.x, x_1943.y, x_1943.z, x_1944.w);
  let x_1947 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1949 : f32 = x_93.unity_LightData.y;
  u_xlat55 = min(x_1947, x_1949);
  let x_1951 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1951));
  let x_1955 : f32 = x_1798.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1957 : f32 = x_1798.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1959 : f32 = x_1798.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1961 : f32 = x_1798.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1962 : vec4<f32> = vec4<f32>(x_1955, x_1957, x_1959, x_1961);
  let x_1968 : vec4<bool> = (vec4<f32>(x_1962.x, x_1962.y, x_1962.z, x_1962.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1968.x, x_1968.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1979 : u32 = u_xlatu_loop_1;
    let x_1980 : u32 = u_xlatu55;
    if ((x_1979 < x_1980)) {
    } else {
      break;
    }
    let x_1983 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1983 >> 2u);
    let x_1986 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_1986 & 3u));
    let x_1989 : u32 = u_xlatu40;
    let x_1992 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_1989)];
    let x_2002 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2007 : vec4<u32> = indexable[x_2002];
    u_xlat40.x = dot(x_1992, bitcast<vec4<f32>>(x_2007));
    let x_2012 : f32 = u_xlat40.x;
    u_xlatu40 = bitcast<u32>(i32(x_2012));
    let x_2015 : vec3<f32> = vs_TEXCOORD1;
    let x_2027 : u32 = u_xlatu40;
    let x_2030 : vec4<f32> = x_2026.x_AdditionalLightsPosition[bitcast<i32>(x_2027)];
    let x_2033 : u32 = u_xlatu40;
    let x_2036 : vec4<f32> = x_2026.x_AdditionalLightsPosition[bitcast<i32>(x_2033)];
    let x_2038 : vec3<f32> = ((-(x_2015) * vec3<f32>(x_2030.w, x_2030.w, x_2030.w)) + vec3<f32>(x_2036.x, x_2036.y, x_2036.z));
    let x_2039 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2038.x, x_2038.y, x_2038.z, x_2039.w);
    let x_2041 : vec4<f32> = u_xlat6;
    let x_2043 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_2041.x, x_2041.y, x_2041.z), vec3<f32>(x_2043.x, x_2043.y, x_2043.z));
    let x_2046 : f32 = u_xlat58;
    u_xlat58 = max(x_2046, 6.10351562e-05f);
    let x_2050 : f32 = u_xlat58;
    u_xlat59 = inverseSqrt(x_2050);
    let x_2052 : f32 = u_xlat59;
    let x_2054 : vec4<f32> = u_xlat6;
    let x_2056 : vec3<f32> = (vec3<f32>(x_2052, x_2052, x_2052) * vec3<f32>(x_2054.x, x_2054.y, x_2054.z));
    let x_2057 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2056.x, x_2056.y, x_2056.z, x_2057.w);
    let x_2059 : f32 = u_xlat58;
    u_xlat59 = (1.0f / x_2059);
    let x_2061 : f32 = u_xlat58;
    let x_2062 : u32 = u_xlatu40;
    let x_2065 : f32 = x_2026.x_AdditionalLightsAttenuation[bitcast<i32>(x_2062)].x;
    u_xlat58 = (x_2061 * x_2065);
    let x_2067 : f32 = u_xlat58;
    let x_2069 : f32 = u_xlat58;
    u_xlat58 = ((-(x_2067) * x_2069) + 1.0f);
    let x_2072 : f32 = u_xlat58;
    u_xlat58 = max(x_2072, 0.0f);
    let x_2074 : f32 = u_xlat58;
    let x_2075 : f32 = u_xlat58;
    u_xlat58 = (x_2074 * x_2075);
    let x_2077 : f32 = u_xlat58;
    let x_2078 : f32 = u_xlat59;
    u_xlat58 = (x_2077 * x_2078);
    let x_2080 : u32 = u_xlatu40;
    let x_2083 : vec4<f32> = x_2026.x_AdditionalLightsSpotDir[bitcast<i32>(x_2080)];
    let x_2085 : vec4<f32> = u_xlat6;
    u_xlat59 = dot(vec3<f32>(x_2083.x, x_2083.y, x_2083.z), vec3<f32>(x_2085.x, x_2085.y, x_2085.z));
    let x_2088 : f32 = u_xlat59;
    let x_2089 : u32 = u_xlatu40;
    let x_2092 : f32 = x_2026.x_AdditionalLightsAttenuation[bitcast<i32>(x_2089)].z;
    let x_2094 : u32 = u_xlatu40;
    let x_2097 : f32 = x_2026.x_AdditionalLightsAttenuation[bitcast<i32>(x_2094)].w;
    u_xlat59 = ((x_2088 * x_2092) + x_2097);
    let x_2099 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2099, 0.0f, 1.0f);
    let x_2101 : f32 = u_xlat59;
    let x_2102 : f32 = u_xlat59;
    u_xlat59 = (x_2101 * x_2102);
    let x_2104 : f32 = u_xlat58;
    let x_2105 : f32 = u_xlat59;
    u_xlat58 = (x_2104 * x_2105);
    let x_2108 : u32 = u_xlatu40;
    u_xlatu59 = (x_2108 >> 5u);
    let x_2111 : u32 = u_xlatu40;
    u_xlati60 = (1i << bitcast<u32>((bitcast<i32>(x_2111) & 31i)));
    let x_2117 : i32 = u_xlati60;
    let x_2119 : u32 = u_xlatu59;
    let x_2122 : f32 = x_1798.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2119)].el;
    u_xlati59 = bitcast<i32>((bitcast<u32>(x_2117) & bitcast<u32>(x_2122)));
    let x_2126 : i32 = u_xlati59;
    if ((x_2126 != 0i)) {
      let x_2136 : u32 = u_xlatu40;
      let x_2139 : f32 = x_2135.x_AdditionalLightsLightTypes[bitcast<i32>(x_2136)].el;
      u_xlati59 = i32(x_2139);
      let x_2141 : i32 = u_xlati59;
      u_xlati60 = select(1i, 0i, (x_2141 != 0i));
      let x_2145 : u32 = u_xlatu40;
      u_xlati7 = (bitcast<i32>(x_2145) << bitcast<u32>(2i));
      let x_2148 : i32 = u_xlati60;
      if ((x_2148 != 0i)) {
        let x_2153 : vec3<f32> = vs_TEXCOORD1;
        let x_2155 : i32 = u_xlati7;
        let x_2158 : i32 = u_xlati7;
        let x_2162 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_2155 + 1i) / 4i)][((x_2158 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_2153.y, x_2153.y, x_2153.y) * vec3<f32>(x_2162.x, x_2162.y, x_2162.w));
        let x_2165 : i32 = u_xlati7;
        let x_2167 : i32 = u_xlati7;
        let x_2170 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[(x_2165 / 4i)][(x_2167 % 4i)];
        let x_2172 : vec3<f32> = vs_TEXCOORD1;
        let x_2175 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_2170.x, x_2170.y, x_2170.w) * vec3<f32>(x_2172.x, x_2172.x, x_2172.x)) + x_2175);
        let x_2177 : i32 = u_xlati7;
        let x_2180 : i32 = u_xlati7;
        let x_2184 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_2177 + 2i) / 4i)][((x_2180 + 2i) % 4i)];
        let x_2186 : vec3<f32> = vs_TEXCOORD1;
        let x_2189 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_2184.x, x_2184.y, x_2184.w) * vec3<f32>(x_2186.z, x_2186.z, x_2186.z)) + x_2189);
        let x_2191 : vec3<f32> = u_xlat25;
        let x_2192 : i32 = u_xlati7;
        let x_2195 : i32 = u_xlati7;
        let x_2199 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_2192 + 3i) / 4i)][((x_2195 + 3i) % 4i)];
        u_xlat25 = (x_2191 + vec3<f32>(x_2199.x, x_2199.y, x_2199.w));
        let x_2202 : vec3<f32> = u_xlat25;
        let x_2204 : vec3<f32> = u_xlat25;
        let x_2206 : vec2<f32> = (vec2<f32>(x_2202.x, x_2202.y) / vec2<f32>(x_2204.z, x_2204.z));
        let x_2207 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2206.x, x_2206.y, x_2207.z);
        let x_2209 : vec3<f32> = u_xlat25;
        let x_2212 : vec2<f32> = ((vec2<f32>(x_2209.x, x_2209.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2213 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2212.x, x_2212.y, x_2213.z);
        let x_2215 : vec3<f32> = u_xlat25;
        let x_2219 : vec2<f32> = clamp(vec2<f32>(x_2215.x, x_2215.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2220 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2219.x, x_2219.y, x_2220.z);
        let x_2222 : u32 = u_xlatu40;
        let x_2225 : vec4<f32> = x_2135.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2222)];
        let x_2227 : vec3<f32> = u_xlat25;
        let x_2230 : u32 = u_xlatu40;
        let x_2233 : vec4<f32> = x_2135.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2230)];
        let x_2235 : vec2<f32> = ((vec2<f32>(x_2225.x, x_2225.y) * vec2<f32>(x_2227.x, x_2227.y)) + vec2<f32>(x_2233.z, x_2233.w));
        let x_2236 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2235.x, x_2235.y, x_2236.z);
      } else {
        let x_2240 : i32 = u_xlati59;
        u_xlatb59 = (x_2240 == 1i);
        let x_2242 : bool = u_xlatb59;
        u_xlati59 = select(0i, 1i, x_2242);
        let x_2244 : i32 = u_xlati59;
        if ((x_2244 != 0i)) {
          let x_2248 : vec3<f32> = vs_TEXCOORD1;
          let x_2250 : i32 = u_xlati7;
          let x_2253 : i32 = u_xlati7;
          let x_2257 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_2250 + 1i) / 4i)][((x_2253 + 1i) % 4i)];
          let x_2259 : vec2<f32> = (vec2<f32>(x_2248.y, x_2248.y) * vec2<f32>(x_2257.x, x_2257.y));
          let x_2260 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2259.x, x_2259.y, x_2260.z, x_2260.w);
          let x_2262 : i32 = u_xlati7;
          let x_2264 : i32 = u_xlati7;
          let x_2267 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[(x_2262 / 4i)][(x_2264 % 4i)];
          let x_2269 : vec3<f32> = vs_TEXCOORD1;
          let x_2272 : vec4<f32> = u_xlat8;
          let x_2274 : vec2<f32> = ((vec2<f32>(x_2267.x, x_2267.y) * vec2<f32>(x_2269.x, x_2269.x)) + vec2<f32>(x_2272.x, x_2272.y));
          let x_2275 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2274.x, x_2274.y, x_2275.z, x_2275.w);
          let x_2277 : i32 = u_xlati7;
          let x_2280 : i32 = u_xlati7;
          let x_2284 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_2277 + 2i) / 4i)][((x_2280 + 2i) % 4i)];
          let x_2286 : vec3<f32> = vs_TEXCOORD1;
          let x_2289 : vec4<f32> = u_xlat8;
          let x_2291 : vec2<f32> = ((vec2<f32>(x_2284.x, x_2284.y) * vec2<f32>(x_2286.z, x_2286.z)) + vec2<f32>(x_2289.x, x_2289.y));
          let x_2292 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2291.x, x_2291.y, x_2292.z, x_2292.w);
          let x_2294 : vec4<f32> = u_xlat8;
          let x_2296 : i32 = u_xlati7;
          let x_2299 : i32 = u_xlati7;
          let x_2303 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_2296 + 3i) / 4i)][((x_2299 + 3i) % 4i)];
          let x_2305 : vec2<f32> = (vec2<f32>(x_2294.x, x_2294.y) + vec2<f32>(x_2303.x, x_2303.y));
          let x_2306 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2305.x, x_2305.y, x_2306.z, x_2306.w);
          let x_2308 : vec4<f32> = u_xlat8;
          let x_2311 : vec2<f32> = ((vec2<f32>(x_2308.x, x_2308.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2312 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2311.x, x_2311.y, x_2312.z, x_2312.w);
          let x_2314 : vec4<f32> = u_xlat8;
          let x_2316 : vec2<f32> = fract(vec2<f32>(x_2314.x, x_2314.y));
          let x_2317 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2316.x, x_2316.y, x_2317.z, x_2317.w);
          let x_2319 : u32 = u_xlatu40;
          let x_2322 : vec4<f32> = x_2135.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2319)];
          let x_2324 : vec4<f32> = u_xlat8;
          let x_2327 : u32 = u_xlatu40;
          let x_2330 : vec4<f32> = x_2135.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2327)];
          let x_2332 : vec2<f32> = ((vec2<f32>(x_2322.x, x_2322.y) * vec2<f32>(x_2324.x, x_2324.y)) + vec2<f32>(x_2330.z, x_2330.w));
          let x_2333 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2332.x, x_2332.y, x_2333.z);
        } else {
          let x_2336 : vec3<f32> = vs_TEXCOORD1;
          let x_2338 : i32 = u_xlati7;
          let x_2341 : i32 = u_xlati7;
          let x_2345 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_2338 + 1i) / 4i)][((x_2341 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_2336.y, x_2336.y, x_2336.y, x_2336.y) * x_2345);
          let x_2347 : i32 = u_xlati7;
          let x_2349 : i32 = u_xlati7;
          let x_2352 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[(x_2347 / 4i)][(x_2349 % 4i)];
          let x_2353 : vec3<f32> = vs_TEXCOORD1;
          let x_2356 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2352 * vec4<f32>(x_2353.x, x_2353.x, x_2353.x, x_2353.x)) + x_2356);
          let x_2358 : i32 = u_xlati7;
          let x_2361 : i32 = u_xlati7;
          let x_2365 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_2358 + 2i) / 4i)][((x_2361 + 2i) % 4i)];
          let x_2366 : vec3<f32> = vs_TEXCOORD1;
          let x_2369 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2365 * vec4<f32>(x_2366.z, x_2366.z, x_2366.z, x_2366.z)) + x_2369);
          let x_2371 : vec4<f32> = u_xlat8;
          let x_2372 : i32 = u_xlati7;
          let x_2375 : i32 = u_xlati7;
          let x_2379 : vec4<f32> = x_2135.x_AdditionalLightsWorldToLights[((x_2372 + 3i) / 4i)][((x_2375 + 3i) % 4i)];
          u_xlat8 = (x_2371 + x_2379);
          let x_2381 : vec4<f32> = u_xlat8;
          let x_2383 : vec4<f32> = u_xlat8;
          let x_2385 : vec3<f32> = (vec3<f32>(x_2381.x, x_2381.y, x_2381.z) / vec3<f32>(x_2383.w, x_2383.w, x_2383.w));
          let x_2386 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2385.x, x_2385.y, x_2385.z, x_2386.w);
          let x_2388 : vec4<f32> = u_xlat8;
          let x_2390 : vec4<f32> = u_xlat8;
          u_xlat59 = dot(vec3<f32>(x_2388.x, x_2388.y, x_2388.z), vec3<f32>(x_2390.x, x_2390.y, x_2390.z));
          let x_2393 : f32 = u_xlat59;
          u_xlat59 = inverseSqrt(x_2393);
          let x_2395 : f32 = u_xlat59;
          let x_2397 : vec4<f32> = u_xlat8;
          let x_2399 : vec3<f32> = (vec3<f32>(x_2395, x_2395, x_2395) * vec3<f32>(x_2397.x, x_2397.y, x_2397.z));
          let x_2400 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2399.x, x_2399.y, x_2399.z, x_2400.w);
          let x_2402 : vec4<f32> = u_xlat8;
          u_xlat59 = dot(abs(vec3<f32>(x_2402.x, x_2402.y, x_2402.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2407 : f32 = u_xlat59;
          u_xlat59 = max(x_2407, 0.000001f);
          let x_2410 : f32 = u_xlat59;
          u_xlat59 = (1.0f / x_2410);
          let x_2412 : f32 = u_xlat59;
          let x_2414 : vec4<f32> = u_xlat8;
          let x_2416 : vec3<f32> = (vec3<f32>(x_2412, x_2412, x_2412) * vec3<f32>(x_2414.z, x_2414.x, x_2414.y));
          let x_2417 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2416.x, x_2416.y, x_2416.z, x_2417.w);
          let x_2420 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_2420);
          let x_2424 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_2424, 0.0f, 1.0f);
          let x_2428 : vec4<f32> = u_xlat9;
          let x_2431 : vec4<bool> = (vec4<f32>(x_2428.y, x_2428.y, x_2428.y, x_2428.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2432 : vec2<bool> = vec2<bool>(x_2431.x, x_2431.w);
          let x_2433 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_2432.x, x_2433.y, x_2433.z, x_2432.y);
          let x_2436 : bool = u_xlatb7.x;
          if (x_2436) {
            let x_2441 : f32 = u_xlat9.x;
            x_2437 = x_2441;
          } else {
            let x_2444 : f32 = u_xlat9.x;
            x_2437 = -(x_2444);
          }
          let x_2446 : f32 = x_2437;
          u_xlat7.x = x_2446;
          let x_2449 : bool = u_xlatb7.w;
          if (x_2449) {
            let x_2454 : f32 = u_xlat9.x;
            x_2450 = x_2454;
          } else {
            let x_2457 : f32 = u_xlat9.x;
            x_2450 = -(x_2457);
          }
          let x_2459 : f32 = x_2450;
          u_xlat7.w = x_2459;
          let x_2461 : vec4<f32> = u_xlat8;
          let x_2463 : f32 = u_xlat59;
          let x_2466 : vec4<f32> = u_xlat7;
          let x_2468 : vec2<f32> = ((vec2<f32>(x_2461.x, x_2461.y) * vec2<f32>(x_2463, x_2463)) + vec2<f32>(x_2466.x, x_2466.w));
          let x_2469 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2468.x, x_2469.y, x_2469.z, x_2468.y);
          let x_2471 : vec4<f32> = u_xlat7;
          let x_2474 : vec2<f32> = ((vec2<f32>(x_2471.x, x_2471.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2475 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2474.x, x_2475.y, x_2475.z, x_2474.y);
          let x_2477 : vec4<f32> = u_xlat7;
          let x_2481 : vec2<f32> = clamp(vec2<f32>(x_2477.x, x_2477.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2482 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2481.x, x_2482.y, x_2482.z, x_2481.y);
          let x_2484 : u32 = u_xlatu40;
          let x_2487 : vec4<f32> = x_2135.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2484)];
          let x_2489 : vec4<f32> = u_xlat7;
          let x_2492 : u32 = u_xlatu40;
          let x_2495 : vec4<f32> = x_2135.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2492)];
          let x_2497 : vec2<f32> = ((vec2<f32>(x_2487.x, x_2487.y) * vec2<f32>(x_2489.x, x_2489.w)) + vec2<f32>(x_2495.z, x_2495.w));
          let x_2498 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2497.x, x_2497.y, x_2498.z);
        }
      }
      let x_2505 : vec3<f32> = u_xlat25;
      let x_2508 : f32 = x_43.x_GlobalMipBias.x;
      let x_2509 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2505.x, x_2505.y), x_2508);
      u_xlat7 = x_2509;
      let x_2511 : bool = u_xlatb4.y;
      if (x_2511) {
        let x_2516 : f32 = u_xlat7.w;
        x_2512 = x_2516;
      } else {
        let x_2519 : f32 = u_xlat7.x;
        x_2512 = x_2519;
      }
      let x_2520 : f32 = x_2512;
      u_xlat59 = x_2520;
      let x_2522 : bool = u_xlatb4.x;
      if (x_2522) {
        let x_2526 : vec4<f32> = u_xlat7;
        x_2523 = vec3<f32>(x_2526.x, x_2526.y, x_2526.z);
      } else {
        let x_2529 : f32 = u_xlat59;
        x_2523 = vec3<f32>(x_2529, x_2529, x_2529);
      }
      let x_2531 : vec3<f32> = x_2523;
      let x_2532 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2531.x, x_2531.y, x_2531.z, x_2532.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_2538 : vec4<f32> = u_xlat7;
    let x_2540 : u32 = u_xlatu40;
    let x_2543 : vec4<f32> = x_2026.x_AdditionalLightsColor[bitcast<i32>(x_2540)];
    let x_2545 : vec3<f32> = (vec3<f32>(x_2538.x, x_2538.y, x_2538.z) * vec3<f32>(x_2543.x, x_2543.y, x_2543.z));
    let x_2546 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2545.x, x_2545.y, x_2545.z, x_2546.w);
    let x_2548 : f32 = u_xlat56;
    let x_2550 : vec4<f32> = u_xlat7;
    let x_2552 : vec3<f32> = (vec3<f32>(x_2548, x_2548, x_2548) * vec3<f32>(x_2550.x, x_2550.y, x_2550.z));
    let x_2553 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2552.x, x_2552.y, x_2552.z, x_2553.w);
    let x_2555 : f32 = u_xlat58;
    let x_2557 : vec4<f32> = u_xlat7;
    let x_2559 : vec3<f32> = (vec3<f32>(x_2555, x_2555, x_2555) * vec3<f32>(x_2557.x, x_2557.y, x_2557.z));
    let x_2560 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2559.x, x_2559.y, x_2559.z, x_2560.w);
    let x_2562 : vec3<f32> = u_xlat1;
    let x_2563 : vec4<f32> = u_xlat6;
    u_xlat40.x = dot(x_2562, vec3<f32>(x_2563.x, x_2563.y, x_2563.z));
    let x_2568 : f32 = u_xlat40.x;
    u_xlat40.x = clamp(x_2568, 0.0f, 1.0f);
    let x_2571 : vec2<f32> = u_xlat40;
    let x_2573 : vec4<f32> = u_xlat7;
    let x_2575 : vec3<f32> = (vec3<f32>(x_2571.x, x_2571.x, x_2571.x) * vec3<f32>(x_2573.x, x_2573.y, x_2573.z));
    let x_2576 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2575.x, x_2575.y, x_2575.z, x_2576.w);
    let x_2578 : vec4<f32> = u_xlat6;
    let x_2580 : vec4<f32> = u_xlat0;
    let x_2583 : vec4<f32> = u_xlat5;
    let x_2585 : vec3<f32> = ((vec3<f32>(x_2578.x, x_2578.y, x_2578.z) * vec3<f32>(x_2580.y, x_2580.z, x_2580.w)) + vec3<f32>(x_2583.x, x_2583.y, x_2583.z));
    let x_2586 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2585.x, x_2585.y, x_2585.z, x_2586.w);

    continuing {
      let x_2588 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2588 + bitcast<u32>(1i));
    }
  }
  let x_2591 : vec4<f32> = u_xlat3;
  let x_2593 : vec4<f32> = u_xlat0;
  let x_2596 : vec4<f32> = u_xlat2;
  u_xlat18 = ((vec3<f32>(x_2591.x, x_2591.y, x_2591.z) * vec3<f32>(x_2593.y, x_2593.z, x_2593.w)) + vec3<f32>(x_2596.x, x_2596.y, x_2596.z));
  let x_2601 : vec4<f32> = u_xlat5;
  let x_2603 : vec3<f32> = u_xlat18;
  let x_2604 : vec3<f32> = (vec3<f32>(x_2601.x, x_2601.y, x_2601.z) + x_2603);
  let x_2605 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2604.x, x_2604.y, x_2604.z, x_2605.w);
  let x_2609 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_2609 == 1.0f);
  let x_2611 : bool = u_xlatb18;
  if (x_2611) {
    let x_2616 : f32 = u_xlat0.x;
    x_2612 = x_2616;
  } else {
    x_2612 = 1.0f;
  }
  let x_2618 : f32 = x_2612;
  SV_Target0.w = x_2618;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD7_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  main_1();
  return main_out(SV_Target0);
}

