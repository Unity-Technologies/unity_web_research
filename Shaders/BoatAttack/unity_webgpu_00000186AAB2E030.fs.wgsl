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

@group(0) @binding(1) var x_BaseMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_BaseMap : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_43 : PGlobals;

@group(1) @binding(3) var<uniform> x_55 : UnityPerMaterial;

@group(0) @binding(6) var x_DitheringTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_DitheringTexture : sampler;

@group(1) @binding(2) var<uniform> x_93 : UnityPerDraw;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(1) @binding(4) var<uniform> x_154 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(7) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD7 : vec2<f32>;

@group(0) @binding(2) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(5) var<uniform> x_1760 : LightCookies;

@group(0) @binding(4) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

@group(1) @binding(1) var<uniform> x_1988 : AdditionalLights;

@group(1) @binding(6) var<uniform> x_2097 : AdditionalLightsCookies;

@group(0) @binding(5) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_1707 : f32;
  var u_xlat20 : vec2<f32>;
  var u_xlat38 : f32;
  var x_1827 : f32;
  var x_1838 : vec3<f32>;
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
  var x_2399 : f32;
  var x_2412 : f32;
  var x_2474 : f32;
  var x_2485 : vec3<f32>;
  var u_xlat18 : vec3<f32>;
  var u_xlatb18 : bool;
  var x_2574 : f32;
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
  let x_355 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_352, x_354);
  let x_356 : vec3<f32> = vec3<f32>(x_355.x, x_355.y, x_355.z);
  let x_357 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_361 : vec4<f32> = x_43.x_ScaledScreenParams;
  let x_362 : vec2<f32> = vec2<f32>(x_361.x, x_361.y);
  let x_366 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_362.x, x_362.y));
  let x_367 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_366.x, x_366.y, x_367.z, x_367.w);
  let x_369 : vec4<f32> = u_xlat4;
  let x_371 : vec4<f32> = hlslcc_FragCoord;
  let x_373 : vec2<f32> = (vec2<f32>(x_369.x, x_369.y) * vec2<f32>(x_371.x, x_371.y));
  let x_374 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_373.x, x_373.y, x_374.z, x_374.w);
  let x_377 : f32 = u_xlat4.y;
  let x_380 : f32 = x_43.x_ScaleBiasRt.x;
  let x_383 : f32 = x_43.x_ScaleBiasRt.y;
  u_xlat55 = ((x_377 * x_380) + x_383);
  let x_385 : f32 = u_xlat55;
  u_xlat4.z = (-(x_385) + 1.0f);
  let x_394 : vec4<f32> = u_xlat4;
  let x_397 : f32 = x_43.x_GlobalMipBias.x;
  let x_398 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_394.x, x_394.z), x_397);
  u_xlat55 = x_398.x;
  let x_401 : f32 = u_xlat55;
  u_xlat56 = (x_401 + -1.0f);
  let x_404 : f32 = x_43.x_AmbientOcclusionParam.w;
  let x_405 : f32 = u_xlat56;
  u_xlat56 = ((x_404 * x_405) + 1.0f);
  let x_408 : f32 = u_xlat55;
  u_xlat55 = min(x_408, 1.0f);
  let x_412 : f32 = x_154.x_MainLightShadowParams.y;
  u_xlatb57 = (0.0f < x_412);
  let x_414 : bool = u_xlatb57;
  if (x_414) {
    let x_418 : f32 = x_154.x_MainLightShadowParams.y;
    u_xlatb57 = (x_418 == 1.0f);
    let x_420 : bool = u_xlatb57;
    if (x_420) {
      let x_423 : vec4<f32> = u_xlat2;
      let x_427 : vec4<f32> = x_154.x_MainLightShadowOffset0;
      u_xlat4 = (vec4<f32>(x_423.x, x_423.y, x_423.x, x_423.y) + x_427);
      let x_430 : vec4<f32> = u_xlat4;
      let x_431 : vec2<f32> = vec2<f32>(x_430.x, x_430.y);
      let x_433 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_431.x, x_431.y, x_433);
      let x_445 : vec3<f32> = txVec0;
      let x_447 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_445.xy, x_445.z);
      u_xlat5.x = x_447;
      let x_450 : vec4<f32> = u_xlat4;
      let x_451 : vec2<f32> = vec2<f32>(x_450.z, x_450.w);
      let x_453 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_451.x, x_451.y, x_453);
      let x_460 : vec3<f32> = txVec1;
      let x_462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_460.xy, x_460.z);
      u_xlat5.y = x_462;
      let x_464 : vec4<f32> = u_xlat2;
      let x_467 : vec4<f32> = x_154.x_MainLightShadowOffset1;
      u_xlat4 = (vec4<f32>(x_464.x, x_464.y, x_464.x, x_464.y) + x_467);
      let x_470 : vec4<f32> = u_xlat4;
      let x_471 : vec2<f32> = vec2<f32>(x_470.x, x_470.y);
      let x_473 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_471.x, x_471.y, x_473);
      let x_480 : vec3<f32> = txVec2;
      let x_482 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_480.xy, x_480.z);
      u_xlat5.z = x_482;
      let x_485 : vec4<f32> = u_xlat4;
      let x_486 : vec2<f32> = vec2<f32>(x_485.z, x_485.w);
      let x_488 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_486.x, x_486.y, x_488);
      let x_495 : vec3<f32> = txVec3;
      let x_497 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_495.xy, x_495.z);
      u_xlat5.w = x_497;
      let x_500 : vec4<f32> = u_xlat5;
      u_xlat57 = dot(x_500, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_509 : f32 = x_154.x_MainLightShadowParams.y;
      u_xlatb4.x = (x_509 == 2.0f);
      let x_513 : bool = u_xlatb4.x;
      if (x_513) {
        let x_516 : vec4<f32> = u_xlat2;
        let x_520 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_525 : vec2<f32> = ((vec2<f32>(x_516.x, x_516.y) * vec2<f32>(x_520.z, x_520.w)) + vec2<f32>(0.5f, 0.5f));
        let x_526 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_525.x, x_525.y, x_526.z, x_526.w);
        let x_528 : vec4<f32> = u_xlat4;
        let x_530 : vec2<f32> = floor(vec2<f32>(x_528.x, x_528.y));
        let x_531 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_530.x, x_530.y, x_531.z, x_531.w);
        let x_535 : vec4<f32> = u_xlat2;
        let x_538 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_541 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_535.x, x_535.y) * vec2<f32>(x_538.z, x_538.w)) + -(vec2<f32>(x_541.x, x_541.y)));
        let x_545 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_545.x, x_545.x, x_545.y, x_545.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_550 : vec4<f32> = u_xlat5;
        let x_552 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_550.x, x_550.x, x_550.z, x_550.z) * vec4<f32>(x_552.x, x_552.x, x_552.z, x_552.z));
        let x_555 : vec4<f32> = u_xlat6;
        let x_559 : vec2<f32> = (vec2<f32>(x_555.y, x_555.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_560 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_559.x, x_560.y, x_559.y, x_560.w);
        let x_562 : vec4<f32> = u_xlat6;
        let x_565 : vec2<f32> = u_xlat40;
        let x_567 : vec2<f32> = ((vec2<f32>(x_562.x, x_562.z) * vec2<f32>(0.5f, 0.5f)) + -(x_565));
        let x_568 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_567.x, x_567.y, x_568.z, x_568.w);
        let x_571 : vec2<f32> = u_xlat40;
        u_xlat42 = (-(x_571) + vec2<f32>(1.0f, 1.0f));
        let x_575 : vec2<f32> = u_xlat40;
        let x_577 : vec2<f32> = min(x_575, vec2<f32>(0.0f, 0.0f));
        let x_578 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_577.x, x_577.y, x_578.z, x_578.w);
        let x_580 : vec4<f32> = u_xlat7;
        let x_583 : vec4<f32> = u_xlat7;
        let x_586 : vec2<f32> = u_xlat42;
        let x_587 : vec2<f32> = ((-(vec2<f32>(x_580.x, x_580.y)) * vec2<f32>(x_583.x, x_583.y)) + x_586);
        let x_588 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_587.x, x_587.y, x_588.z, x_588.w);
        let x_590 : vec2<f32> = u_xlat40;
        u_xlat40 = max(x_590, vec2<f32>(0.0f, 0.0f));
        let x_592 : vec2<f32> = u_xlat40;
        let x_594 : vec2<f32> = u_xlat40;
        let x_596 : vec4<f32> = u_xlat5;
        u_xlat40 = ((-(x_592) * x_594) + vec2<f32>(x_596.y, x_596.w));
        let x_599 : vec4<f32> = u_xlat7;
        let x_601 : vec2<f32> = (vec2<f32>(x_599.x, x_599.y) + vec2<f32>(1.0f, 1.0f));
        let x_602 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
        let x_604 : vec2<f32> = u_xlat40;
        u_xlat40 = (x_604 + vec2<f32>(1.0f, 1.0f));
        let x_607 : vec4<f32> = u_xlat6;
        let x_611 : vec2<f32> = (vec2<f32>(x_607.x, x_607.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_612 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_611.x, x_611.y, x_612.z, x_612.w);
        let x_614 : vec2<f32> = u_xlat42;
        let x_615 : vec2<f32> = (x_614 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_616 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_616.w);
        let x_618 : vec4<f32> = u_xlat7;
        let x_620 : vec2<f32> = (vec2<f32>(x_618.x, x_618.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_621 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_620.x, x_620.y, x_621.z, x_621.w);
        let x_624 : vec2<f32> = u_xlat40;
        let x_625 : vec2<f32> = (x_624 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_626 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_625.x, x_625.y, x_626.z, x_626.w);
        let x_628 : vec4<f32> = u_xlat5;
        u_xlat40 = (vec2<f32>(x_628.y, x_628.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_632 : f32 = u_xlat7.x;
        u_xlat8.z = x_632;
        let x_635 : f32 = u_xlat40.x;
        u_xlat8.w = x_635;
        let x_638 : f32 = u_xlat9.x;
        u_xlat6.z = x_638;
        let x_641 : f32 = u_xlat5.x;
        u_xlat6.w = x_641;
        let x_644 : vec4<f32> = u_xlat6;
        let x_646 : vec4<f32> = u_xlat8;
        u_xlat10 = (vec4<f32>(x_644.z, x_644.w, x_644.x, x_644.z) + vec4<f32>(x_646.z, x_646.w, x_646.x, x_646.z));
        let x_650 : f32 = u_xlat8.y;
        u_xlat7.z = x_650;
        let x_653 : f32 = u_xlat40.y;
        u_xlat7.w = x_653;
        let x_656 : f32 = u_xlat6.y;
        u_xlat9.z = x_656;
        let x_659 : f32 = u_xlat5.z;
        u_xlat9.w = x_659;
        let x_661 : vec4<f32> = u_xlat7;
        let x_663 : vec4<f32> = u_xlat9;
        let x_665 : vec3<f32> = (vec3<f32>(x_661.z, x_661.y, x_661.w) + vec3<f32>(x_663.z, x_663.y, x_663.w));
        let x_666 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_665.x, x_665.y, x_665.z, x_666.w);
        let x_668 : vec4<f32> = u_xlat6;
        let x_670 : vec4<f32> = u_xlat10;
        let x_672 : vec3<f32> = (vec3<f32>(x_668.x, x_668.z, x_668.w) / vec3<f32>(x_670.z, x_670.w, x_670.y));
        let x_673 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
        let x_675 : vec4<f32> = u_xlat6;
        let x_681 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_682 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
        let x_684 : vec4<f32> = u_xlat9;
        let x_686 : vec4<f32> = u_xlat5;
        let x_688 : vec3<f32> = (vec3<f32>(x_684.z, x_684.y, x_684.w) / vec3<f32>(x_686.x, x_686.y, x_686.z));
        let x_689 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_688.x, x_688.y, x_688.z, x_689.w);
        let x_691 : vec4<f32> = u_xlat7;
        let x_693 : vec3<f32> = (vec3<f32>(x_691.x, x_691.y, x_691.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_694 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_693.x, x_693.y, x_693.z, x_694.w);
        let x_696 : vec4<f32> = u_xlat6;
        let x_699 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_701 : vec3<f32> = (vec3<f32>(x_696.y, x_696.x, x_696.z) * vec3<f32>(x_699.x, x_699.x, x_699.x));
        let x_702 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_701.x, x_701.y, x_701.z, x_702.w);
        let x_704 : vec4<f32> = u_xlat7;
        let x_707 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_709 : vec3<f32> = (vec3<f32>(x_704.x, x_704.y, x_704.z) * vec3<f32>(x_707.y, x_707.y, x_707.y));
        let x_710 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
        let x_713 : f32 = u_xlat7.x;
        u_xlat6.w = x_713;
        let x_715 : vec4<f32> = u_xlat4;
        let x_718 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_721 : vec4<f32> = u_xlat6;
        u_xlat8 = ((vec4<f32>(x_715.x, x_715.y, x_715.x, x_715.y) * vec4<f32>(x_718.x, x_718.y, x_718.x, x_718.y)) + vec4<f32>(x_721.y, x_721.w, x_721.x, x_721.w));
        let x_724 : vec4<f32> = u_xlat4;
        let x_727 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_730 : vec4<f32> = u_xlat6;
        u_xlat40 = ((vec2<f32>(x_724.x, x_724.y) * vec2<f32>(x_727.x, x_727.y)) + vec2<f32>(x_730.z, x_730.w));
        let x_734 : f32 = u_xlat6.y;
        u_xlat7.w = x_734;
        let x_736 : vec4<f32> = u_xlat7;
        let x_737 : vec2<f32> = vec2<f32>(x_736.y, x_736.z);
        let x_738 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_738.x, x_737.x, x_738.z, x_737.y);
        let x_740 : vec4<f32> = u_xlat4;
        let x_743 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_746 : vec4<f32> = u_xlat6;
        u_xlat9 = ((vec4<f32>(x_740.x, x_740.y, x_740.x, x_740.y) * vec4<f32>(x_743.x, x_743.y, x_743.x, x_743.y)) + vec4<f32>(x_746.x, x_746.y, x_746.z, x_746.y));
        let x_749 : vec4<f32> = u_xlat4;
        let x_752 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_755 : vec4<f32> = u_xlat7;
        u_xlat7 = ((vec4<f32>(x_749.x, x_749.y, x_749.x, x_749.y) * vec4<f32>(x_752.x, x_752.y, x_752.x, x_752.y)) + vec4<f32>(x_755.w, x_755.y, x_755.w, x_755.z));
        let x_758 : vec4<f32> = u_xlat4;
        let x_761 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_764 : vec4<f32> = u_xlat6;
        u_xlat6 = ((vec4<f32>(x_758.x, x_758.y, x_758.x, x_758.y) * vec4<f32>(x_761.x, x_761.y, x_761.x, x_761.y)) + vec4<f32>(x_764.x, x_764.w, x_764.z, x_764.w));
        let x_768 : vec4<f32> = u_xlat5;
        let x_770 : vec4<f32> = u_xlat10;
        u_xlat11 = (vec4<f32>(x_768.x, x_768.x, x_768.x, x_768.y) * vec4<f32>(x_770.z, x_770.w, x_770.y, x_770.z));
        let x_774 : vec4<f32> = u_xlat5;
        let x_776 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_774.y, x_774.y, x_774.z, x_774.z) * x_776);
        let x_779 : f32 = u_xlat5.z;
        let x_781 : f32 = u_xlat10.y;
        u_xlat4.x = (x_779 * x_781);
        let x_785 : vec4<f32> = u_xlat8;
        let x_786 : vec2<f32> = vec2<f32>(x_785.x, x_785.y);
        let x_788 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_786.x, x_786.y, x_788);
        let x_796 : vec3<f32> = txVec4;
        let x_798 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_796.xy, x_796.z);
        u_xlat22 = x_798;
        let x_800 : vec4<f32> = u_xlat8;
        let x_801 : vec2<f32> = vec2<f32>(x_800.z, x_800.w);
        let x_803 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_801.x, x_801.y, x_803);
        let x_810 : vec3<f32> = txVec5;
        let x_812 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_810.xy, x_810.z);
        u_xlat5.x = x_812;
        let x_815 : f32 = u_xlat5.x;
        let x_817 : f32 = u_xlat11.y;
        u_xlat5.x = (x_815 * x_817);
        let x_821 : f32 = u_xlat11.x;
        let x_822 : f32 = u_xlat22;
        let x_825 : f32 = u_xlat5.x;
        u_xlat22 = ((x_821 * x_822) + x_825);
        let x_828 : vec2<f32> = u_xlat40;
        let x_830 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_828.x, x_828.y, x_830);
        let x_837 : vec3<f32> = txVec6;
        let x_839 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_837.xy, x_837.z);
        u_xlat40.x = x_839;
        let x_842 : f32 = u_xlat11.z;
        let x_844 : f32 = u_xlat40.x;
        let x_846 : f32 = u_xlat22;
        u_xlat22 = ((x_842 * x_844) + x_846);
        let x_849 : vec4<f32> = u_xlat7;
        let x_850 : vec2<f32> = vec2<f32>(x_849.x, x_849.y);
        let x_852 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_850.x, x_850.y, x_852);
        let x_859 : vec3<f32> = txVec7;
        let x_861 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_859.xy, x_859.z);
        u_xlat40.x = x_861;
        let x_864 : f32 = u_xlat11.w;
        let x_866 : f32 = u_xlat40.x;
        let x_868 : f32 = u_xlat22;
        u_xlat22 = ((x_864 * x_866) + x_868);
        let x_871 : vec4<f32> = u_xlat9;
        let x_872 : vec2<f32> = vec2<f32>(x_871.x, x_871.y);
        let x_874 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_872.x, x_872.y, x_874);
        let x_881 : vec3<f32> = txVec8;
        let x_883 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_881.xy, x_881.z);
        u_xlat40.x = x_883;
        let x_886 : f32 = u_xlat12.x;
        let x_888 : f32 = u_xlat40.x;
        let x_890 : f32 = u_xlat22;
        u_xlat22 = ((x_886 * x_888) + x_890);
        let x_893 : vec4<f32> = u_xlat9;
        let x_894 : vec2<f32> = vec2<f32>(x_893.z, x_893.w);
        let x_896 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_894.x, x_894.y, x_896);
        let x_903 : vec3<f32> = txVec9;
        let x_905 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_903.xy, x_903.z);
        u_xlat40.x = x_905;
        let x_908 : f32 = u_xlat12.y;
        let x_910 : f32 = u_xlat40.x;
        let x_912 : f32 = u_xlat22;
        u_xlat22 = ((x_908 * x_910) + x_912);
        let x_915 : vec4<f32> = u_xlat7;
        let x_916 : vec2<f32> = vec2<f32>(x_915.z, x_915.w);
        let x_918 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_916.x, x_916.y, x_918);
        let x_925 : vec3<f32> = txVec10;
        let x_927 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_925.xy, x_925.z);
        u_xlat40.x = x_927;
        let x_930 : f32 = u_xlat12.z;
        let x_932 : f32 = u_xlat40.x;
        let x_934 : f32 = u_xlat22;
        u_xlat22 = ((x_930 * x_932) + x_934);
        let x_937 : vec4<f32> = u_xlat6;
        let x_938 : vec2<f32> = vec2<f32>(x_937.x, x_937.y);
        let x_940 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_938.x, x_938.y, x_940);
        let x_947 : vec3<f32> = txVec11;
        let x_949 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_947.xy, x_947.z);
        u_xlat40.x = x_949;
        let x_952 : f32 = u_xlat12.w;
        let x_954 : f32 = u_xlat40.x;
        let x_956 : f32 = u_xlat22;
        u_xlat22 = ((x_952 * x_954) + x_956);
        let x_959 : vec4<f32> = u_xlat6;
        let x_960 : vec2<f32> = vec2<f32>(x_959.z, x_959.w);
        let x_962 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_960.x, x_960.y, x_962);
        let x_969 : vec3<f32> = txVec12;
        let x_971 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_969.xy, x_969.z);
        u_xlat40.x = x_971;
        let x_974 : f32 = u_xlat4.x;
        let x_976 : f32 = u_xlat40.x;
        let x_978 : f32 = u_xlat22;
        u_xlat57 = ((x_974 * x_976) + x_978);
      } else {
        let x_981 : vec4<f32> = u_xlat2;
        let x_984 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_987 : vec2<f32> = ((vec2<f32>(x_981.x, x_981.y) * vec2<f32>(x_984.z, x_984.w)) + vec2<f32>(0.5f, 0.5f));
        let x_988 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_987.x, x_987.y, x_988.z, x_988.w);
        let x_990 : vec4<f32> = u_xlat4;
        let x_992 : vec2<f32> = floor(vec2<f32>(x_990.x, x_990.y));
        let x_993 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_992.x, x_992.y, x_993.z, x_993.w);
        let x_995 : vec4<f32> = u_xlat2;
        let x_998 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1001 : vec4<f32> = u_xlat4;
        u_xlat40 = ((vec2<f32>(x_995.x, x_995.y) * vec2<f32>(x_998.z, x_998.w)) + -(vec2<f32>(x_1001.x, x_1001.y)));
        let x_1005 : vec2<f32> = u_xlat40;
        u_xlat5 = (vec4<f32>(x_1005.x, x_1005.x, x_1005.y, x_1005.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1008 : vec4<f32> = u_xlat5;
        let x_1010 : vec4<f32> = u_xlat5;
        u_xlat6 = (vec4<f32>(x_1008.x, x_1008.x, x_1008.z, x_1008.z) * vec4<f32>(x_1010.x, x_1010.x, x_1010.z, x_1010.z));
        let x_1013 : vec4<f32> = u_xlat6;
        let x_1017 : vec2<f32> = (vec2<f32>(x_1013.y, x_1013.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1018 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1018.x, x_1017.x, x_1018.z, x_1017.y);
        let x_1020 : vec4<f32> = u_xlat6;
        let x_1023 : vec2<f32> = u_xlat40;
        let x_1025 : vec2<f32> = ((vec2<f32>(x_1020.x, x_1020.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1023));
        let x_1026 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1025.x, x_1026.y, x_1025.y, x_1026.w);
        let x_1028 : vec2<f32> = u_xlat40;
        let x_1030 : vec2<f32> = (-(x_1028) + vec2<f32>(1.0f, 1.0f));
        let x_1031 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1030.x, x_1030.y, x_1031.z, x_1031.w);
        let x_1033 : vec2<f32> = u_xlat40;
        u_xlat42 = min(x_1033, vec2<f32>(0.0f, 0.0f));
        let x_1035 : vec2<f32> = u_xlat42;
        let x_1037 : vec2<f32> = u_xlat42;
        let x_1039 : vec4<f32> = u_xlat6;
        let x_1041 : vec2<f32> = ((-(x_1035) * x_1037) + vec2<f32>(x_1039.x, x_1039.y));
        let x_1042 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1041.x, x_1041.y, x_1042.z, x_1042.w);
        let x_1044 : vec2<f32> = u_xlat40;
        u_xlat42 = max(x_1044, vec2<f32>(0.0f, 0.0f));
        let x_1047 : vec2<f32> = u_xlat42;
        let x_1049 : vec2<f32> = u_xlat42;
        let x_1051 : vec4<f32> = u_xlat5;
        let x_1053 : vec2<f32> = ((-(x_1047) * x_1049) + vec2<f32>(x_1051.y, x_1051.w));
        let x_1054 : vec3<f32> = u_xlat23;
        u_xlat23 = vec3<f32>(x_1053.x, x_1054.y, x_1053.y);
        let x_1056 : vec4<f32> = u_xlat6;
        let x_1059 : vec2<f32> = (vec2<f32>(x_1056.x, x_1056.y) + vec2<f32>(2.0f, 2.0f));
        let x_1060 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1059.x, x_1059.y, x_1060.z, x_1060.w);
        let x_1062 : vec3<f32> = u_xlat23;
        let x_1064 : vec2<f32> = (vec2<f32>(x_1062.x, x_1062.z) + vec2<f32>(2.0f, 2.0f));
        let x_1065 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1065.x, x_1064.x, x_1065.z, x_1064.y);
        let x_1068 : f32 = u_xlat5.y;
        u_xlat8.z = (x_1068 * 0.081632003f);
        let x_1072 : vec4<f32> = u_xlat5;
        let x_1075 : vec3<f32> = (vec3<f32>(x_1072.z, x_1072.x, x_1072.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1076 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
        let x_1078 : vec4<f32> = u_xlat6;
        let x_1081 : vec2<f32> = (vec2<f32>(x_1078.x, x_1078.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1082 : vec4<f32> = u_xlat5;
        u_xlat5 = vec4<f32>(x_1081.x, x_1081.y, x_1082.z, x_1082.w);
        let x_1085 : f32 = u_xlat9.y;
        u_xlat8.x = x_1085;
        let x_1087 : vec2<f32> = u_xlat40;
        let x_1094 : vec2<f32> = ((vec2<f32>(x_1087.x, x_1087.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1095 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1095.x, x_1094.x, x_1095.z, x_1094.y);
        let x_1097 : vec2<f32> = u_xlat40;
        let x_1101 : vec2<f32> = ((vec2<f32>(x_1097.x, x_1097.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1102 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1101.x, x_1102.y, x_1101.y, x_1102.w);
        let x_1105 : f32 = u_xlat5.x;
        u_xlat6.y = x_1105;
        let x_1108 : f32 = u_xlat7.y;
        u_xlat6.w = x_1108;
        let x_1110 : vec4<f32> = u_xlat6;
        let x_1111 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1110 + x_1111);
        let x_1113 : vec2<f32> = u_xlat40;
        let x_1116 : vec2<f32> = ((vec2<f32>(x_1113.y, x_1113.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1117 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1117.x, x_1116.x, x_1117.z, x_1116.y);
        let x_1119 : vec2<f32> = u_xlat40;
        let x_1122 : vec2<f32> = ((vec2<f32>(x_1119.y, x_1119.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1123 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1122.x, x_1123.y, x_1122.y, x_1123.w);
        let x_1126 : f32 = u_xlat5.y;
        u_xlat7.y = x_1126;
        let x_1128 : vec4<f32> = u_xlat7;
        let x_1129 : vec4<f32> = u_xlat9;
        u_xlat5 = (x_1128 + x_1129);
        let x_1131 : vec4<f32> = u_xlat6;
        let x_1132 : vec4<f32> = u_xlat8;
        u_xlat6 = (x_1131 / x_1132);
        let x_1134 : vec4<f32> = u_xlat6;
        u_xlat6 = (x_1134 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1140 : vec4<f32> = u_xlat7;
        let x_1141 : vec4<f32> = u_xlat5;
        u_xlat7 = (x_1140 / x_1141);
        let x_1143 : vec4<f32> = u_xlat7;
        u_xlat7 = (x_1143 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1145 : vec4<f32> = u_xlat6;
        let x_1148 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        u_xlat6 = (vec4<f32>(x_1145.w, x_1145.x, x_1145.y, x_1145.z) * vec4<f32>(x_1148.x, x_1148.x, x_1148.x, x_1148.x));
        let x_1151 : vec4<f32> = u_xlat7;
        let x_1154 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        u_xlat7 = (vec4<f32>(x_1151.x, x_1151.w, x_1151.y, x_1151.z) * vec4<f32>(x_1154.y, x_1154.y, x_1154.y, x_1154.y));
        let x_1157 : vec4<f32> = u_xlat6;
        let x_1158 : vec3<f32> = vec3<f32>(x_1157.y, x_1157.z, x_1157.w);
        let x_1159 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1158.x, x_1159.y, x_1158.y, x_1158.z);
        let x_1162 : f32 = u_xlat7.x;
        u_xlat9.y = x_1162;
        let x_1164 : vec4<f32> = u_xlat4;
        let x_1167 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1170 : vec4<f32> = u_xlat9;
        u_xlat10 = ((vec4<f32>(x_1164.x, x_1164.y, x_1164.x, x_1164.y) * vec4<f32>(x_1167.x, x_1167.y, x_1167.x, x_1167.y)) + vec4<f32>(x_1170.x, x_1170.y, x_1170.z, x_1170.y));
        let x_1173 : vec4<f32> = u_xlat4;
        let x_1176 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1179 : vec4<f32> = u_xlat9;
        u_xlat40 = ((vec2<f32>(x_1173.x, x_1173.y) * vec2<f32>(x_1176.x, x_1176.y)) + vec2<f32>(x_1179.w, x_1179.y));
        let x_1183 : f32 = u_xlat9.y;
        u_xlat6.y = x_1183;
        let x_1186 : f32 = u_xlat7.z;
        u_xlat9.y = x_1186;
        let x_1188 : vec4<f32> = u_xlat4;
        let x_1191 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1194 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1188.x, x_1188.y, x_1188.x, x_1188.y) * vec4<f32>(x_1191.x, x_1191.y, x_1191.x, x_1191.y)) + vec4<f32>(x_1194.x, x_1194.y, x_1194.z, x_1194.y));
        let x_1197 : vec4<f32> = u_xlat4;
        let x_1200 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1203 : vec4<f32> = u_xlat9;
        let x_1205 : vec2<f32> = ((vec2<f32>(x_1197.x, x_1197.y) * vec2<f32>(x_1200.x, x_1200.y)) + vec2<f32>(x_1203.w, x_1203.y));
        let x_1206 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1205.x, x_1205.y, x_1206.z, x_1206.w);
        let x_1209 : f32 = u_xlat9.y;
        u_xlat6.z = x_1209;
        let x_1212 : vec4<f32> = u_xlat4;
        let x_1215 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1218 : vec4<f32> = u_xlat6;
        u_xlat13 = ((vec4<f32>(x_1212.x, x_1212.y, x_1212.x, x_1212.y) * vec4<f32>(x_1215.x, x_1215.y, x_1215.x, x_1215.y)) + vec4<f32>(x_1218.x, x_1218.y, x_1218.x, x_1218.z));
        let x_1222 : f32 = u_xlat7.w;
        u_xlat9.y = x_1222;
        let x_1225 : vec4<f32> = u_xlat4;
        let x_1228 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1231 : vec4<f32> = u_xlat9;
        u_xlat14 = ((vec4<f32>(x_1225.x, x_1225.y, x_1225.x, x_1225.y) * vec4<f32>(x_1228.x, x_1228.y, x_1228.x, x_1228.y)) + vec4<f32>(x_1231.x, x_1231.y, x_1231.z, x_1231.y));
        let x_1235 : vec4<f32> = u_xlat4;
        let x_1238 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1241 : vec4<f32> = u_xlat9;
        u_xlat24 = ((vec2<f32>(x_1235.x, x_1235.y) * vec2<f32>(x_1238.x, x_1238.y)) + vec2<f32>(x_1241.w, x_1241.y));
        let x_1245 : f32 = u_xlat9.y;
        u_xlat6.w = x_1245;
        let x_1248 : vec4<f32> = u_xlat4;
        let x_1251 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1254 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1248.x, x_1248.y) * vec2<f32>(x_1251.x, x_1251.y)) + vec2<f32>(x_1254.x, x_1254.w));
        let x_1257 : vec4<f32> = u_xlat9;
        let x_1258 : vec3<f32> = vec3<f32>(x_1257.x, x_1257.z, x_1257.w);
        let x_1259 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1258.x, x_1259.y, x_1258.y, x_1258.z);
        let x_1261 : vec4<f32> = u_xlat4;
        let x_1264 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1267 : vec4<f32> = u_xlat7;
        u_xlat9 = ((vec4<f32>(x_1261.x, x_1261.y, x_1261.x, x_1261.y) * vec4<f32>(x_1264.x, x_1264.y, x_1264.x, x_1264.y)) + vec4<f32>(x_1267.x, x_1267.y, x_1267.z, x_1267.y));
        let x_1271 : vec4<f32> = u_xlat4;
        let x_1274 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1277 : vec4<f32> = u_xlat7;
        u_xlat43 = ((vec2<f32>(x_1271.x, x_1271.y) * vec2<f32>(x_1274.x, x_1274.y)) + vec2<f32>(x_1277.w, x_1277.y));
        let x_1281 : f32 = u_xlat6.x;
        u_xlat7.x = x_1281;
        let x_1283 : vec4<f32> = u_xlat4;
        let x_1286 : vec4<f32> = x_154.x_MainLightShadowmapSize;
        let x_1289 : vec4<f32> = u_xlat7;
        let x_1291 : vec2<f32> = ((vec2<f32>(x_1283.x, x_1283.y) * vec2<f32>(x_1286.x, x_1286.y)) + vec2<f32>(x_1289.x, x_1289.y));
        let x_1292 : vec4<f32> = u_xlat4;
        u_xlat4 = vec4<f32>(x_1291.x, x_1291.y, x_1292.z, x_1292.w);
        let x_1295 : vec4<f32> = u_xlat5;
        let x_1297 : vec4<f32> = u_xlat8;
        u_xlat15 = (vec4<f32>(x_1295.x, x_1295.x, x_1295.x, x_1295.x) * x_1297);
        let x_1300 : vec4<f32> = u_xlat5;
        let x_1302 : vec4<f32> = u_xlat8;
        u_xlat16 = (vec4<f32>(x_1300.y, x_1300.y, x_1300.y, x_1300.y) * x_1302);
        let x_1305 : vec4<f32> = u_xlat5;
        let x_1307 : vec4<f32> = u_xlat8;
        u_xlat17 = (vec4<f32>(x_1305.z, x_1305.z, x_1305.z, x_1305.z) * x_1307);
        let x_1309 : vec4<f32> = u_xlat5;
        let x_1311 : vec4<f32> = u_xlat8;
        u_xlat5 = (vec4<f32>(x_1309.w, x_1309.w, x_1309.w, x_1309.w) * x_1311);
        let x_1314 : vec4<f32> = u_xlat10;
        let x_1315 : vec2<f32> = vec2<f32>(x_1314.x, x_1314.y);
        let x_1317 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1315.x, x_1315.y, x_1317);
        let x_1324 : vec3<f32> = txVec13;
        let x_1326 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1324.xy, x_1324.z);
        u_xlat6.x = x_1326;
        let x_1329 : vec4<f32> = u_xlat10;
        let x_1330 : vec2<f32> = vec2<f32>(x_1329.z, x_1329.w);
        let x_1332 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1330.x, x_1330.y, x_1332);
        let x_1340 : vec3<f32> = txVec14;
        let x_1342 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1340.xy, x_1340.z);
        u_xlat60 = x_1342;
        let x_1343 : f32 = u_xlat60;
        let x_1345 : f32 = u_xlat15.y;
        u_xlat60 = (x_1343 * x_1345);
        let x_1348 : f32 = u_xlat15.x;
        let x_1350 : f32 = u_xlat6.x;
        let x_1352 : f32 = u_xlat60;
        u_xlat6.x = ((x_1348 * x_1350) + x_1352);
        let x_1356 : vec2<f32> = u_xlat40;
        let x_1358 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1356.x, x_1356.y, x_1358);
        let x_1365 : vec3<f32> = txVec15;
        let x_1367 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1365.xy, x_1365.z);
        u_xlat40.x = x_1367;
        let x_1370 : f32 = u_xlat15.z;
        let x_1372 : f32 = u_xlat40.x;
        let x_1375 : f32 = u_xlat6.x;
        u_xlat40.x = ((x_1370 * x_1372) + x_1375);
        let x_1379 : vec4<f32> = u_xlat13;
        let x_1380 : vec2<f32> = vec2<f32>(x_1379.x, x_1379.y);
        let x_1382 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1390 : vec3<f32> = txVec16;
        let x_1392 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1390.xy, x_1390.z);
        u_xlat58 = x_1392;
        let x_1394 : f32 = u_xlat15.w;
        let x_1395 : f32 = u_xlat58;
        let x_1398 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1394 * x_1395) + x_1398);
        let x_1402 : vec4<f32> = u_xlat11;
        let x_1403 : vec2<f32> = vec2<f32>(x_1402.x, x_1402.y);
        let x_1405 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1403.x, x_1403.y, x_1405);
        let x_1412 : vec3<f32> = txVec17;
        let x_1414 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1412.xy, x_1412.z);
        u_xlat58 = x_1414;
        let x_1416 : f32 = u_xlat16.x;
        let x_1417 : f32 = u_xlat58;
        let x_1420 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1416 * x_1417) + x_1420);
        let x_1424 : vec4<f32> = u_xlat11;
        let x_1425 : vec2<f32> = vec2<f32>(x_1424.z, x_1424.w);
        let x_1427 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1425.x, x_1425.y, x_1427);
        let x_1434 : vec3<f32> = txVec18;
        let x_1436 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1434.xy, x_1434.z);
        u_xlat58 = x_1436;
        let x_1438 : f32 = u_xlat16.y;
        let x_1439 : f32 = u_xlat58;
        let x_1442 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1438 * x_1439) + x_1442);
        let x_1446 : vec4<f32> = u_xlat12;
        let x_1447 : vec2<f32> = vec2<f32>(x_1446.x, x_1446.y);
        let x_1449 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1447.x, x_1447.y, x_1449);
        let x_1456 : vec3<f32> = txVec19;
        let x_1458 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1456.xy, x_1456.z);
        u_xlat58 = x_1458;
        let x_1460 : f32 = u_xlat16.z;
        let x_1461 : f32 = u_xlat58;
        let x_1464 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1460 * x_1461) + x_1464);
        let x_1468 : vec4<f32> = u_xlat13;
        let x_1469 : vec2<f32> = vec2<f32>(x_1468.z, x_1468.w);
        let x_1471 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1469.x, x_1469.y, x_1471);
        let x_1478 : vec3<f32> = txVec20;
        let x_1480 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1478.xy, x_1478.z);
        u_xlat58 = x_1480;
        let x_1482 : f32 = u_xlat16.w;
        let x_1483 : f32 = u_xlat58;
        let x_1486 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1482 * x_1483) + x_1486);
        let x_1490 : vec4<f32> = u_xlat14;
        let x_1491 : vec2<f32> = vec2<f32>(x_1490.x, x_1490.y);
        let x_1493 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1491.x, x_1491.y, x_1493);
        let x_1500 : vec3<f32> = txVec21;
        let x_1502 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1500.xy, x_1500.z);
        u_xlat58 = x_1502;
        let x_1504 : f32 = u_xlat17.x;
        let x_1505 : f32 = u_xlat58;
        let x_1508 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1504 * x_1505) + x_1508);
        let x_1512 : vec4<f32> = u_xlat14;
        let x_1513 : vec2<f32> = vec2<f32>(x_1512.z, x_1512.w);
        let x_1515 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1513.x, x_1513.y, x_1515);
        let x_1522 : vec3<f32> = txVec22;
        let x_1524 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1522.xy, x_1522.z);
        u_xlat58 = x_1524;
        let x_1526 : f32 = u_xlat17.y;
        let x_1527 : f32 = u_xlat58;
        let x_1530 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1526 * x_1527) + x_1530);
        let x_1534 : vec2<f32> = u_xlat24;
        let x_1536 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1534.x, x_1534.y, x_1536);
        let x_1543 : vec3<f32> = txVec23;
        let x_1545 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1543.xy, x_1543.z);
        u_xlat58 = x_1545;
        let x_1547 : f32 = u_xlat17.z;
        let x_1548 : f32 = u_xlat58;
        let x_1551 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1547 * x_1548) + x_1551);
        let x_1555 : vec2<f32> = u_xlat48;
        let x_1557 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1555.x, x_1555.y, x_1557);
        let x_1564 : vec3<f32> = txVec24;
        let x_1566 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1564.xy, x_1564.z);
        u_xlat58 = x_1566;
        let x_1568 : f32 = u_xlat17.w;
        let x_1569 : f32 = u_xlat58;
        let x_1572 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1568 * x_1569) + x_1572);
        let x_1576 : vec4<f32> = u_xlat9;
        let x_1577 : vec2<f32> = vec2<f32>(x_1576.x, x_1576.y);
        let x_1579 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1577.x, x_1577.y, x_1579);
        let x_1586 : vec3<f32> = txVec25;
        let x_1588 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1586.xy, x_1586.z);
        u_xlat58 = x_1588;
        let x_1590 : f32 = u_xlat5.x;
        let x_1591 : f32 = u_xlat58;
        let x_1594 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1590 * x_1591) + x_1594);
        let x_1598 : vec4<f32> = u_xlat9;
        let x_1599 : vec2<f32> = vec2<f32>(x_1598.z, x_1598.w);
        let x_1601 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1599.x, x_1599.y, x_1601);
        let x_1608 : vec3<f32> = txVec26;
        let x_1610 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1608.xy, x_1608.z);
        u_xlat58 = x_1610;
        let x_1612 : f32 = u_xlat5.y;
        let x_1613 : f32 = u_xlat58;
        let x_1616 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1612 * x_1613) + x_1616);
        let x_1620 : vec2<f32> = u_xlat43;
        let x_1622 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
        let x_1629 : vec3<f32> = txVec27;
        let x_1631 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1629.xy, x_1629.z);
        u_xlat58 = x_1631;
        let x_1633 : f32 = u_xlat5.z;
        let x_1634 : f32 = u_xlat58;
        let x_1637 : f32 = u_xlat40.x;
        u_xlat40.x = ((x_1633 * x_1634) + x_1637);
        let x_1641 : vec4<f32> = u_xlat4;
        let x_1642 : vec2<f32> = vec2<f32>(x_1641.x, x_1641.y);
        let x_1644 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1642.x, x_1642.y, x_1644);
        let x_1651 : vec3<f32> = txVec28;
        let x_1653 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1651.xy, x_1651.z);
        u_xlat4.x = x_1653;
        let x_1656 : f32 = u_xlat5.w;
        let x_1658 : f32 = u_xlat4.x;
        let x_1661 : f32 = u_xlat40.x;
        u_xlat57 = ((x_1656 * x_1658) + x_1661);
      }
    }
  } else {
    let x_1665 : vec4<f32> = u_xlat2;
    let x_1666 : vec2<f32> = vec2<f32>(x_1665.x, x_1665.y);
    let x_1668 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1666.x, x_1666.y, x_1668);
    let x_1675 : vec3<f32> = txVec29;
    let x_1677 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1675.xy, x_1675.z);
    u_xlat57 = x_1677;
  }
  let x_1679 : f32 = x_154.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1679) + 1.0f);
  let x_1683 : f32 = u_xlat57;
  let x_1685 : f32 = x_154.x_MainLightShadowParams.x;
  let x_1688 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1683 * x_1685) + x_1688);
  let x_1693 : f32 = u_xlat2.z;
  u_xlatb20.x = (0.0f >= x_1693);
  let x_1698 : f32 = u_xlat2.z;
  u_xlatb38 = (x_1698 >= 1.0f);
  let x_1700 : bool = u_xlatb38;
  let x_1702 : bool = u_xlatb20.x;
  u_xlatb20.x = (x_1700 | x_1702);
  let x_1706 : bool = u_xlatb20.x;
  if (x_1706) {
    x_1707 = 1.0f;
  } else {
    let x_1712 : f32 = u_xlat2.x;
    x_1707 = x_1712;
  }
  let x_1713 : f32 = x_1707;
  u_xlat2.x = x_1713;
  let x_1715 : vec3<f32> = vs_TEXCOORD1;
  let x_1718 : vec3<f32> = x_43.x_WorldSpaceCameraPos;
  let x_1720 : vec3<f32> = (x_1715 + -(x_1718));
  let x_1721 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1720.x, x_1720.y, x_1720.z, x_1721.w);
  let x_1724 : vec4<f32> = u_xlat4;
  let x_1726 : vec4<f32> = u_xlat4;
  u_xlat20.x = dot(vec3<f32>(x_1724.x, x_1724.y, x_1724.z), vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
  let x_1731 : f32 = u_xlat20.x;
  let x_1733 : f32 = x_154.x_MainLightShadowParams.z;
  let x_1736 : f32 = x_154.x_MainLightShadowParams.w;
  u_xlat20.x = ((x_1731 * x_1733) + x_1736);
  let x_1740 : f32 = u_xlat20.x;
  u_xlat20.x = clamp(x_1740, 0.0f, 1.0f);
  let x_1745 : f32 = u_xlat2.x;
  u_xlat38 = (-(x_1745) + 1.0f);
  let x_1749 : f32 = u_xlat20.x;
  let x_1750 : f32 = u_xlat38;
  let x_1753 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1749 * x_1750) + x_1753);
  let x_1762 : f32 = x_1760.x_MainLightCookieTextureFormat;
  u_xlatb20.x = !((x_1762 == -1.0f));
  let x_1766 : bool = u_xlatb20.x;
  if (x_1766) {
    let x_1769 : vec3<f32> = vs_TEXCOORD1;
    let x_1772 : vec4<f32> = x_1760.x_MainLightWorldToLight[1i];
    u_xlat20 = (vec2<f32>(x_1769.y, x_1769.y) * vec2<f32>(x_1772.x, x_1772.y));
    let x_1776 : vec4<f32> = x_1760.x_MainLightWorldToLight[0i];
    let x_1778 : vec3<f32> = vs_TEXCOORD1;
    let x_1781 : vec2<f32> = u_xlat20;
    u_xlat20 = ((vec2<f32>(x_1776.x, x_1776.y) * vec2<f32>(x_1778.x, x_1778.x)) + x_1781);
    let x_1784 : vec4<f32> = x_1760.x_MainLightWorldToLight[2i];
    let x_1786 : vec3<f32> = vs_TEXCOORD1;
    let x_1789 : vec2<f32> = u_xlat20;
    u_xlat20 = ((vec2<f32>(x_1784.x, x_1784.y) * vec2<f32>(x_1786.z, x_1786.z)) + x_1789);
    let x_1791 : vec2<f32> = u_xlat20;
    let x_1793 : vec4<f32> = x_1760.x_MainLightWorldToLight[3i];
    u_xlat20 = (x_1791 + vec2<f32>(x_1793.x, x_1793.y));
    let x_1796 : vec2<f32> = u_xlat20;
    u_xlat20 = ((x_1796 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1804 : vec2<f32> = u_xlat20;
    let x_1806 : f32 = x_43.x_GlobalMipBias.x;
    let x_1807 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1804, x_1806);
    u_xlat4 = x_1807;
    let x_1809 : f32 = x_1760.x_MainLightCookieTextureFormat;
    let x_1811 : f32 = x_1760.x_MainLightCookieTextureFormat;
    let x_1813 : f32 = x_1760.x_MainLightCookieTextureFormat;
    let x_1815 : f32 = x_1760.x_MainLightCookieTextureFormat;
    let x_1816 : vec4<f32> = vec4<f32>(x_1809, x_1811, x_1813, x_1815);
    let x_1823 : vec4<bool> = (vec4<f32>(x_1816.x, x_1816.y, x_1816.z, x_1816.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb20 = vec2<bool>(x_1823.x, x_1823.y);
    let x_1826 : bool = u_xlatb20.y;
    if (x_1826) {
      let x_1831 : f32 = u_xlat4.w;
      x_1827 = x_1831;
    } else {
      let x_1834 : f32 = u_xlat4.x;
      x_1827 = x_1834;
    }
    let x_1835 : f32 = x_1827;
    u_xlat38 = x_1835;
    let x_1837 : bool = u_xlatb20.x;
    if (x_1837) {
      let x_1841 : vec4<f32> = u_xlat4;
      x_1838 = vec3<f32>(x_1841.x, x_1841.y, x_1841.z);
    } else {
      let x_1844 : f32 = u_xlat38;
      x_1838 = vec3<f32>(x_1844, x_1844, x_1844);
    }
    let x_1846 : vec3<f32> = x_1838;
    let x_1847 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_1846.x, x_1846.y, x_1846.z, x_1847.w);
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
  }
  let x_1853 : vec4<f32> = u_xlat4;
  let x_1856 : vec4<f32> = x_43.x_MainLightColor;
  let x_1858 : vec3<f32> = (vec3<f32>(x_1853.x, x_1853.y, x_1853.z) * vec3<f32>(x_1856.x, x_1856.y, x_1856.z));
  let x_1859 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1858.x, x_1858.y, x_1858.z, x_1859.w);
  let x_1861 : f32 = u_xlat56;
  let x_1863 : vec4<f32> = u_xlat4;
  let x_1865 : vec3<f32> = (vec3<f32>(x_1861, x_1861, x_1861) * vec3<f32>(x_1863.x, x_1863.y, x_1863.z));
  let x_1866 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1865.x, x_1865.y, x_1865.z, x_1866.w);
  let x_1868 : f32 = u_xlat55;
  let x_1870 : vec4<f32> = u_xlat3;
  let x_1872 : vec3<f32> = (vec3<f32>(x_1868, x_1868, x_1868) * vec3<f32>(x_1870.x, x_1870.y, x_1870.z));
  let x_1873 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1872.x, x_1872.y, x_1872.z, x_1873.w);
  let x_1876 : f32 = u_xlat2.x;
  let x_1878 : f32 = x_93.unity_LightData.z;
  u_xlat55 = (x_1876 * x_1878);
  let x_1880 : f32 = u_xlat55;
  let x_1882 : vec4<f32> = u_xlat4;
  let x_1884 : vec3<f32> = (vec3<f32>(x_1880, x_1880, x_1880) * vec3<f32>(x_1882.x, x_1882.y, x_1882.z));
  let x_1885 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1884.x, x_1884.y, x_1884.z, x_1885.w);
  let x_1887 : vec3<f32> = u_xlat1;
  let x_1889 : vec4<f32> = x_43.x_MainLightPosition;
  u_xlat55 = dot(x_1887, vec3<f32>(x_1889.x, x_1889.y, x_1889.z));
  let x_1892 : f32 = u_xlat55;
  u_xlat55 = clamp(x_1892, 0.0f, 1.0f);
  let x_1894 : f32 = u_xlat55;
  let x_1896 : vec4<f32> = u_xlat2;
  let x_1898 : vec3<f32> = (vec3<f32>(x_1894, x_1894, x_1894) * vec3<f32>(x_1896.x, x_1896.y, x_1896.z));
  let x_1899 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1898.x, x_1898.y, x_1898.z, x_1899.w);
  let x_1901 : vec4<f32> = u_xlat0;
  let x_1903 : vec4<f32> = u_xlat2;
  let x_1905 : vec3<f32> = (vec3<f32>(x_1901.y, x_1901.z, x_1901.w) * vec3<f32>(x_1903.x, x_1903.y, x_1903.z));
  let x_1906 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1905.x, x_1905.y, x_1905.z, x_1906.w);
  let x_1909 : f32 = x_43.x_AdditionalLightsCount.x;
  let x_1911 : f32 = x_93.unity_LightData.y;
  u_xlat55 = min(x_1909, x_1911);
  let x_1913 : f32 = u_xlat55;
  u_xlatu55 = bitcast<u32>(i32(x_1913));
  let x_1917 : f32 = x_1760.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1919 : f32 = x_1760.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1921 : f32 = x_1760.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1923 : f32 = x_1760.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1924 : vec4<f32> = vec4<f32>(x_1917, x_1919, x_1921, x_1923);
  let x_1930 : vec4<bool> = (vec4<f32>(x_1924.x, x_1924.y, x_1924.z, x_1924.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb4 = vec2<bool>(x_1930.x, x_1930.y);
  u_xlat5.x = 0.0f;
  u_xlat5.y = 0.0f;
  u_xlat5.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1941 : u32 = u_xlatu_loop_1;
    let x_1942 : u32 = u_xlatu55;
    if ((x_1941 < x_1942)) {
    } else {
      break;
    }
    let x_1945 : u32 = u_xlatu_loop_1;
    u_xlatu40 = (x_1945 >> 2u);
    let x_1948 : u32 = u_xlatu_loop_1;
    u_xlati58 = bitcast<i32>((x_1948 & 3u));
    let x_1951 : u32 = u_xlatu40;
    let x_1954 : vec4<f32> = x_93.unity_LightIndices[bitcast<i32>(x_1951)];
    let x_1964 : i32 = u_xlati58;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1969 : vec4<u32> = indexable[x_1964];
    u_xlat40.x = dot(x_1954, bitcast<vec4<f32>>(x_1969));
    let x_1974 : f32 = u_xlat40.x;
    u_xlatu40 = bitcast<u32>(i32(x_1974));
    let x_1977 : vec3<f32> = vs_TEXCOORD1;
    let x_1989 : u32 = u_xlatu40;
    let x_1992 : vec4<f32> = x_1988.x_AdditionalLightsPosition[bitcast<i32>(x_1989)];
    let x_1995 : u32 = u_xlatu40;
    let x_1998 : vec4<f32> = x_1988.x_AdditionalLightsPosition[bitcast<i32>(x_1995)];
    let x_2000 : vec3<f32> = ((-(x_1977) * vec3<f32>(x_1992.w, x_1992.w, x_1992.w)) + vec3<f32>(x_1998.x, x_1998.y, x_1998.z));
    let x_2001 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2000.x, x_2000.y, x_2000.z, x_2001.w);
    let x_2003 : vec4<f32> = u_xlat6;
    let x_2005 : vec4<f32> = u_xlat6;
    u_xlat58 = dot(vec3<f32>(x_2003.x, x_2003.y, x_2003.z), vec3<f32>(x_2005.x, x_2005.y, x_2005.z));
    let x_2008 : f32 = u_xlat58;
    u_xlat58 = max(x_2008, 6.10351562e-05f);
    let x_2012 : f32 = u_xlat58;
    u_xlat59 = inverseSqrt(x_2012);
    let x_2014 : f32 = u_xlat59;
    let x_2016 : vec4<f32> = u_xlat6;
    let x_2018 : vec3<f32> = (vec3<f32>(x_2014, x_2014, x_2014) * vec3<f32>(x_2016.x, x_2016.y, x_2016.z));
    let x_2019 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2018.x, x_2018.y, x_2018.z, x_2019.w);
    let x_2021 : f32 = u_xlat58;
    u_xlat59 = (1.0f / x_2021);
    let x_2023 : f32 = u_xlat58;
    let x_2024 : u32 = u_xlatu40;
    let x_2027 : f32 = x_1988.x_AdditionalLightsAttenuation[bitcast<i32>(x_2024)].x;
    u_xlat58 = (x_2023 * x_2027);
    let x_2029 : f32 = u_xlat58;
    let x_2031 : f32 = u_xlat58;
    u_xlat58 = ((-(x_2029) * x_2031) + 1.0f);
    let x_2034 : f32 = u_xlat58;
    u_xlat58 = max(x_2034, 0.0f);
    let x_2036 : f32 = u_xlat58;
    let x_2037 : f32 = u_xlat58;
    u_xlat58 = (x_2036 * x_2037);
    let x_2039 : f32 = u_xlat58;
    let x_2040 : f32 = u_xlat59;
    u_xlat58 = (x_2039 * x_2040);
    let x_2042 : u32 = u_xlatu40;
    let x_2045 : vec4<f32> = x_1988.x_AdditionalLightsSpotDir[bitcast<i32>(x_2042)];
    let x_2047 : vec4<f32> = u_xlat6;
    u_xlat59 = dot(vec3<f32>(x_2045.x, x_2045.y, x_2045.z), vec3<f32>(x_2047.x, x_2047.y, x_2047.z));
    let x_2050 : f32 = u_xlat59;
    let x_2051 : u32 = u_xlatu40;
    let x_2054 : f32 = x_1988.x_AdditionalLightsAttenuation[bitcast<i32>(x_2051)].z;
    let x_2056 : u32 = u_xlatu40;
    let x_2059 : f32 = x_1988.x_AdditionalLightsAttenuation[bitcast<i32>(x_2056)].w;
    u_xlat59 = ((x_2050 * x_2054) + x_2059);
    let x_2061 : f32 = u_xlat59;
    u_xlat59 = clamp(x_2061, 0.0f, 1.0f);
    let x_2063 : f32 = u_xlat59;
    let x_2064 : f32 = u_xlat59;
    u_xlat59 = (x_2063 * x_2064);
    let x_2066 : f32 = u_xlat58;
    let x_2067 : f32 = u_xlat59;
    u_xlat58 = (x_2066 * x_2067);
    let x_2070 : u32 = u_xlatu40;
    u_xlatu59 = (x_2070 >> 5u);
    let x_2073 : u32 = u_xlatu40;
    u_xlati60 = (1i << bitcast<u32>((bitcast<i32>(x_2073) & 31i)));
    let x_2079 : i32 = u_xlati60;
    let x_2081 : u32 = u_xlatu59;
    let x_2084 : f32 = x_1760.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2081)].el;
    u_xlati59 = bitcast<i32>((bitcast<u32>(x_2079) & bitcast<u32>(x_2084)));
    let x_2088 : i32 = u_xlati59;
    if ((x_2088 != 0i)) {
      let x_2098 : u32 = u_xlatu40;
      let x_2101 : f32 = x_2097.x_AdditionalLightsLightTypes[bitcast<i32>(x_2098)].el;
      u_xlati59 = i32(x_2101);
      let x_2103 : i32 = u_xlati59;
      u_xlati60 = select(1i, 0i, (x_2103 != 0i));
      let x_2107 : u32 = u_xlatu40;
      u_xlati7 = (bitcast<i32>(x_2107) << bitcast<u32>(2i));
      let x_2110 : i32 = u_xlati60;
      if ((x_2110 != 0i)) {
        let x_2115 : vec3<f32> = vs_TEXCOORD1;
        let x_2117 : i32 = u_xlati7;
        let x_2120 : i32 = u_xlati7;
        let x_2124 : vec4<f32> = x_2097.x_AdditionalLightsWorldToLights[((x_2117 + 1i) / 4i)][((x_2120 + 1i) % 4i)];
        u_xlat25 = (vec3<f32>(x_2115.y, x_2115.y, x_2115.y) * vec3<f32>(x_2124.x, x_2124.y, x_2124.w));
        let x_2127 : i32 = u_xlati7;
        let x_2129 : i32 = u_xlati7;
        let x_2132 : vec4<f32> = x_2097.x_AdditionalLightsWorldToLights[(x_2127 / 4i)][(x_2129 % 4i)];
        let x_2134 : vec3<f32> = vs_TEXCOORD1;
        let x_2137 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_2132.x, x_2132.y, x_2132.w) * vec3<f32>(x_2134.x, x_2134.x, x_2134.x)) + x_2137);
        let x_2139 : i32 = u_xlati7;
        let x_2142 : i32 = u_xlati7;
        let x_2146 : vec4<f32> = x_2097.x_AdditionalLightsWorldToLights[((x_2139 + 2i) / 4i)][((x_2142 + 2i) % 4i)];
        let x_2148 : vec3<f32> = vs_TEXCOORD1;
        let x_2151 : vec3<f32> = u_xlat25;
        u_xlat25 = ((vec3<f32>(x_2146.x, x_2146.y, x_2146.w) * vec3<f32>(x_2148.z, x_2148.z, x_2148.z)) + x_2151);
        let x_2153 : vec3<f32> = u_xlat25;
        let x_2154 : i32 = u_xlati7;
        let x_2157 : i32 = u_xlati7;
        let x_2161 : vec4<f32> = x_2097.x_AdditionalLightsWorldToLights[((x_2154 + 3i) / 4i)][((x_2157 + 3i) % 4i)];
        u_xlat25 = (x_2153 + vec3<f32>(x_2161.x, x_2161.y, x_2161.w));
        let x_2164 : vec3<f32> = u_xlat25;
        let x_2166 : vec3<f32> = u_xlat25;
        let x_2168 : vec2<f32> = (vec2<f32>(x_2164.x, x_2164.y) / vec2<f32>(x_2166.z, x_2166.z));
        let x_2169 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2168.x, x_2168.y, x_2169.z);
        let x_2171 : vec3<f32> = u_xlat25;
        let x_2174 : vec2<f32> = ((vec2<f32>(x_2171.x, x_2171.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2175 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2174.x, x_2174.y, x_2175.z);
        let x_2177 : vec3<f32> = u_xlat25;
        let x_2181 : vec2<f32> = clamp(vec2<f32>(x_2177.x, x_2177.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2182 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2181.x, x_2181.y, x_2182.z);
        let x_2184 : u32 = u_xlatu40;
        let x_2187 : vec4<f32> = x_2097.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2184)];
        let x_2189 : vec3<f32> = u_xlat25;
        let x_2192 : u32 = u_xlatu40;
        let x_2195 : vec4<f32> = x_2097.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2192)];
        let x_2197 : vec2<f32> = ((vec2<f32>(x_2187.x, x_2187.y) * vec2<f32>(x_2189.x, x_2189.y)) + vec2<f32>(x_2195.z, x_2195.w));
        let x_2198 : vec3<f32> = u_xlat25;
        u_xlat25 = vec3<f32>(x_2197.x, x_2197.y, x_2198.z);
      } else {
        let x_2202 : i32 = u_xlati59;
        u_xlatb59 = (x_2202 == 1i);
        let x_2204 : bool = u_xlatb59;
        u_xlati59 = select(0i, 1i, x_2204);
        let x_2206 : i32 = u_xlati59;
        if ((x_2206 != 0i)) {
          let x_2210 : vec3<f32> = vs_TEXCOORD1;
          let x_2212 : i32 = u_xlati7;
          let x_2215 : i32 = u_xlati7;
          let x_2219 : vec4<f32> = x_2097.x_AdditionalLightsWorldToLights[((x_2212 + 1i) / 4i)][((x_2215 + 1i) % 4i)];
          let x_2221 : vec2<f32> = (vec2<f32>(x_2210.y, x_2210.y) * vec2<f32>(x_2219.x, x_2219.y));
          let x_2222 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2221.x, x_2221.y, x_2222.z, x_2222.w);
          let x_2224 : i32 = u_xlati7;
          let x_2226 : i32 = u_xlati7;
          let x_2229 : vec4<f32> = x_2097.x_AdditionalLightsWorldToLights[(x_2224 / 4i)][(x_2226 % 4i)];
          let x_2231 : vec3<f32> = vs_TEXCOORD1;
          let x_2234 : vec4<f32> = u_xlat8;
          let x_2236 : vec2<f32> = ((vec2<f32>(x_2229.x, x_2229.y) * vec2<f32>(x_2231.x, x_2231.x)) + vec2<f32>(x_2234.x, x_2234.y));
          let x_2237 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2236.x, x_2236.y, x_2237.z, x_2237.w);
          let x_2239 : i32 = u_xlati7;
          let x_2242 : i32 = u_xlati7;
          let x_2246 : vec4<f32> = x_2097.x_AdditionalLightsWorldToLights[((x_2239 + 2i) / 4i)][((x_2242 + 2i) % 4i)];
          let x_2248 : vec3<f32> = vs_TEXCOORD1;
          let x_2251 : vec4<f32> = u_xlat8;
          let x_2253 : vec2<f32> = ((vec2<f32>(x_2246.x, x_2246.y) * vec2<f32>(x_2248.z, x_2248.z)) + vec2<f32>(x_2251.x, x_2251.y));
          let x_2254 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2253.x, x_2253.y, x_2254.z, x_2254.w);
          let x_2256 : vec4<f32> = u_xlat8;
          let x_2258 : i32 = u_xlati7;
          let x_2261 : i32 = u_xlati7;
          let x_2265 : vec4<f32> = x_2097.x_AdditionalLightsWorldToLights[((x_2258 + 3i) / 4i)][((x_2261 + 3i) % 4i)];
          let x_2267 : vec2<f32> = (vec2<f32>(x_2256.x, x_2256.y) + vec2<f32>(x_2265.x, x_2265.y));
          let x_2268 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2267.x, x_2267.y, x_2268.z, x_2268.w);
          let x_2270 : vec4<f32> = u_xlat8;
          let x_2273 : vec2<f32> = ((vec2<f32>(x_2270.x, x_2270.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2274 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2273.x, x_2273.y, x_2274.z, x_2274.w);
          let x_2276 : vec4<f32> = u_xlat8;
          let x_2278 : vec2<f32> = fract(vec2<f32>(x_2276.x, x_2276.y));
          let x_2279 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2278.x, x_2278.y, x_2279.z, x_2279.w);
          let x_2281 : u32 = u_xlatu40;
          let x_2284 : vec4<f32> = x_2097.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2281)];
          let x_2286 : vec4<f32> = u_xlat8;
          let x_2289 : u32 = u_xlatu40;
          let x_2292 : vec4<f32> = x_2097.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2289)];
          let x_2294 : vec2<f32> = ((vec2<f32>(x_2284.x, x_2284.y) * vec2<f32>(x_2286.x, x_2286.y)) + vec2<f32>(x_2292.z, x_2292.w));
          let x_2295 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2294.x, x_2294.y, x_2295.z);
        } else {
          let x_2298 : vec3<f32> = vs_TEXCOORD1;
          let x_2300 : i32 = u_xlati7;
          let x_2303 : i32 = u_xlati7;
          let x_2307 : vec4<f32> = x_2097.x_AdditionalLightsWorldToLights[((x_2300 + 1i) / 4i)][((x_2303 + 1i) % 4i)];
          u_xlat8 = (vec4<f32>(x_2298.y, x_2298.y, x_2298.y, x_2298.y) * x_2307);
          let x_2309 : i32 = u_xlati7;
          let x_2311 : i32 = u_xlati7;
          let x_2314 : vec4<f32> = x_2097.x_AdditionalLightsWorldToLights[(x_2309 / 4i)][(x_2311 % 4i)];
          let x_2315 : vec3<f32> = vs_TEXCOORD1;
          let x_2318 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2314 * vec4<f32>(x_2315.x, x_2315.x, x_2315.x, x_2315.x)) + x_2318);
          let x_2320 : i32 = u_xlati7;
          let x_2323 : i32 = u_xlati7;
          let x_2327 : vec4<f32> = x_2097.x_AdditionalLightsWorldToLights[((x_2320 + 2i) / 4i)][((x_2323 + 2i) % 4i)];
          let x_2328 : vec3<f32> = vs_TEXCOORD1;
          let x_2331 : vec4<f32> = u_xlat8;
          u_xlat8 = ((x_2327 * vec4<f32>(x_2328.z, x_2328.z, x_2328.z, x_2328.z)) + x_2331);
          let x_2333 : vec4<f32> = u_xlat8;
          let x_2334 : i32 = u_xlati7;
          let x_2337 : i32 = u_xlati7;
          let x_2341 : vec4<f32> = x_2097.x_AdditionalLightsWorldToLights[((x_2334 + 3i) / 4i)][((x_2337 + 3i) % 4i)];
          u_xlat8 = (x_2333 + x_2341);
          let x_2343 : vec4<f32> = u_xlat8;
          let x_2345 : vec4<f32> = u_xlat8;
          let x_2347 : vec3<f32> = (vec3<f32>(x_2343.x, x_2343.y, x_2343.z) / vec3<f32>(x_2345.w, x_2345.w, x_2345.w));
          let x_2348 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2347.x, x_2347.y, x_2347.z, x_2348.w);
          let x_2350 : vec4<f32> = u_xlat8;
          let x_2352 : vec4<f32> = u_xlat8;
          u_xlat59 = dot(vec3<f32>(x_2350.x, x_2350.y, x_2350.z), vec3<f32>(x_2352.x, x_2352.y, x_2352.z));
          let x_2355 : f32 = u_xlat59;
          u_xlat59 = inverseSqrt(x_2355);
          let x_2357 : f32 = u_xlat59;
          let x_2359 : vec4<f32> = u_xlat8;
          let x_2361 : vec3<f32> = (vec3<f32>(x_2357, x_2357, x_2357) * vec3<f32>(x_2359.x, x_2359.y, x_2359.z));
          let x_2362 : vec4<f32> = u_xlat8;
          u_xlat8 = vec4<f32>(x_2361.x, x_2361.y, x_2361.z, x_2362.w);
          let x_2364 : vec4<f32> = u_xlat8;
          u_xlat59 = dot(abs(vec3<f32>(x_2364.x, x_2364.y, x_2364.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2369 : f32 = u_xlat59;
          u_xlat59 = max(x_2369, 0.000001f);
          let x_2372 : f32 = u_xlat59;
          u_xlat59 = (1.0f / x_2372);
          let x_2374 : f32 = u_xlat59;
          let x_2376 : vec4<f32> = u_xlat8;
          let x_2378 : vec3<f32> = (vec3<f32>(x_2374, x_2374, x_2374) * vec3<f32>(x_2376.z, x_2376.x, x_2376.y));
          let x_2379 : vec4<f32> = u_xlat9;
          u_xlat9 = vec4<f32>(x_2378.x, x_2378.y, x_2378.z, x_2379.w);
          let x_2382 : f32 = u_xlat9.x;
          u_xlat9.x = -(x_2382);
          let x_2386 : f32 = u_xlat9.x;
          u_xlat9.x = clamp(x_2386, 0.0f, 1.0f);
          let x_2390 : vec4<f32> = u_xlat9;
          let x_2393 : vec4<bool> = (vec4<f32>(x_2390.y, x_2390.y, x_2390.y, x_2390.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          let x_2394 : vec2<bool> = vec2<bool>(x_2393.x, x_2393.w);
          let x_2395 : vec4<bool> = u_xlatb7;
          u_xlatb7 = vec4<bool>(x_2394.x, x_2395.y, x_2395.z, x_2394.y);
          let x_2398 : bool = u_xlatb7.x;
          if (x_2398) {
            let x_2403 : f32 = u_xlat9.x;
            x_2399 = x_2403;
          } else {
            let x_2406 : f32 = u_xlat9.x;
            x_2399 = -(x_2406);
          }
          let x_2408 : f32 = x_2399;
          u_xlat7.x = x_2408;
          let x_2411 : bool = u_xlatb7.w;
          if (x_2411) {
            let x_2416 : f32 = u_xlat9.x;
            x_2412 = x_2416;
          } else {
            let x_2419 : f32 = u_xlat9.x;
            x_2412 = -(x_2419);
          }
          let x_2421 : f32 = x_2412;
          u_xlat7.w = x_2421;
          let x_2423 : vec4<f32> = u_xlat8;
          let x_2425 : f32 = u_xlat59;
          let x_2428 : vec4<f32> = u_xlat7;
          let x_2430 : vec2<f32> = ((vec2<f32>(x_2423.x, x_2423.y) * vec2<f32>(x_2425, x_2425)) + vec2<f32>(x_2428.x, x_2428.w));
          let x_2431 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2430.x, x_2431.y, x_2431.z, x_2430.y);
          let x_2433 : vec4<f32> = u_xlat7;
          let x_2436 : vec2<f32> = ((vec2<f32>(x_2433.x, x_2433.w) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2437 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2436.x, x_2437.y, x_2437.z, x_2436.y);
          let x_2439 : vec4<f32> = u_xlat7;
          let x_2443 : vec2<f32> = clamp(vec2<f32>(x_2439.x, x_2439.w), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2444 : vec4<f32> = u_xlat7;
          u_xlat7 = vec4<f32>(x_2443.x, x_2444.y, x_2444.z, x_2443.y);
          let x_2446 : u32 = u_xlatu40;
          let x_2449 : vec4<f32> = x_2097.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2446)];
          let x_2451 : vec4<f32> = u_xlat7;
          let x_2454 : u32 = u_xlatu40;
          let x_2457 : vec4<f32> = x_2097.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2454)];
          let x_2459 : vec2<f32> = ((vec2<f32>(x_2449.x, x_2449.y) * vec2<f32>(x_2451.x, x_2451.w)) + vec2<f32>(x_2457.z, x_2457.w));
          let x_2460 : vec3<f32> = u_xlat25;
          u_xlat25 = vec3<f32>(x_2459.x, x_2459.y, x_2460.z);
        }
      }
      let x_2467 : vec3<f32> = u_xlat25;
      let x_2470 : f32 = x_43.x_GlobalMipBias.x;
      let x_2471 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2467.x, x_2467.y), x_2470);
      u_xlat7 = x_2471;
      let x_2473 : bool = u_xlatb4.y;
      if (x_2473) {
        let x_2478 : f32 = u_xlat7.w;
        x_2474 = x_2478;
      } else {
        let x_2481 : f32 = u_xlat7.x;
        x_2474 = x_2481;
      }
      let x_2482 : f32 = x_2474;
      u_xlat59 = x_2482;
      let x_2484 : bool = u_xlatb4.x;
      if (x_2484) {
        let x_2488 : vec4<f32> = u_xlat7;
        x_2485 = vec3<f32>(x_2488.x, x_2488.y, x_2488.z);
      } else {
        let x_2491 : f32 = u_xlat59;
        x_2485 = vec3<f32>(x_2491, x_2491, x_2491);
      }
      let x_2493 : vec3<f32> = x_2485;
      let x_2494 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_2493.x, x_2493.y, x_2493.z, x_2494.w);
    } else {
      u_xlat7.x = 1.0f;
      u_xlat7.y = 1.0f;
      u_xlat7.z = 1.0f;
    }
    let x_2500 : vec4<f32> = u_xlat7;
    let x_2502 : u32 = u_xlatu40;
    let x_2505 : vec4<f32> = x_1988.x_AdditionalLightsColor[bitcast<i32>(x_2502)];
    let x_2507 : vec3<f32> = (vec3<f32>(x_2500.x, x_2500.y, x_2500.z) * vec3<f32>(x_2505.x, x_2505.y, x_2505.z));
    let x_2508 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2507.x, x_2507.y, x_2507.z, x_2508.w);
    let x_2510 : f32 = u_xlat56;
    let x_2512 : vec4<f32> = u_xlat7;
    let x_2514 : vec3<f32> = (vec3<f32>(x_2510, x_2510, x_2510) * vec3<f32>(x_2512.x, x_2512.y, x_2512.z));
    let x_2515 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2514.x, x_2514.y, x_2514.z, x_2515.w);
    let x_2517 : f32 = u_xlat58;
    let x_2519 : vec4<f32> = u_xlat7;
    let x_2521 : vec3<f32> = (vec3<f32>(x_2517, x_2517, x_2517) * vec3<f32>(x_2519.x, x_2519.y, x_2519.z));
    let x_2522 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_2521.x, x_2521.y, x_2521.z, x_2522.w);
    let x_2524 : vec3<f32> = u_xlat1;
    let x_2525 : vec4<f32> = u_xlat6;
    u_xlat40.x = dot(x_2524, vec3<f32>(x_2525.x, x_2525.y, x_2525.z));
    let x_2530 : f32 = u_xlat40.x;
    u_xlat40.x = clamp(x_2530, 0.0f, 1.0f);
    let x_2533 : vec2<f32> = u_xlat40;
    let x_2535 : vec4<f32> = u_xlat7;
    let x_2537 : vec3<f32> = (vec3<f32>(x_2533.x, x_2533.x, x_2533.x) * vec3<f32>(x_2535.x, x_2535.y, x_2535.z));
    let x_2538 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_2537.x, x_2537.y, x_2537.z, x_2538.w);
    let x_2540 : vec4<f32> = u_xlat6;
    let x_2542 : vec4<f32> = u_xlat0;
    let x_2545 : vec4<f32> = u_xlat5;
    let x_2547 : vec3<f32> = ((vec3<f32>(x_2540.x, x_2540.y, x_2540.z) * vec3<f32>(x_2542.y, x_2542.z, x_2542.w)) + vec3<f32>(x_2545.x, x_2545.y, x_2545.z));
    let x_2548 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_2547.x, x_2547.y, x_2547.z, x_2548.w);

    continuing {
      let x_2550 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2550 + bitcast<u32>(1i));
    }
  }
  let x_2553 : vec4<f32> = u_xlat3;
  let x_2555 : vec4<f32> = u_xlat0;
  let x_2558 : vec4<f32> = u_xlat2;
  u_xlat18 = ((vec3<f32>(x_2553.x, x_2553.y, x_2553.z) * vec3<f32>(x_2555.y, x_2555.z, x_2555.w)) + vec3<f32>(x_2558.x, x_2558.y, x_2558.z));
  let x_2563 : vec4<f32> = u_xlat5;
  let x_2565 : vec3<f32> = u_xlat18;
  let x_2566 : vec3<f32> = (vec3<f32>(x_2563.x, x_2563.y, x_2563.z) + x_2565);
  let x_2567 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2566.x, x_2566.y, x_2566.z, x_2567.w);
  let x_2571 : f32 = x_55.x_Surface;
  u_xlatb18 = (x_2571 == 1.0f);
  let x_2573 : bool = u_xlatb18;
  if (x_2573) {
    let x_2578 : f32 = u_xlat0.x;
    x_2574 = x_2578;
  } else {
    x_2574 = 1.0f;
  }
  let x_2580 : f32 = x_2574;
  SV_Target0.w = x_2580;
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

