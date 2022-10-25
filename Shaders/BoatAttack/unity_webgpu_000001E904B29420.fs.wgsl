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

var<private> vs_TEXCOORD7 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_137 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1824 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2011 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2272 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2382 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb22 : bool;
  var u_xlat2 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat22 : vec3<f32>;
  var x_111 : vec3<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlat65 : f32;
  var u_xlatu65 : u32;
  var u_xlati65 : i32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat26 : f32;
  var u_xlat63 : f32;
  var u_xlat47 : f32;
  var u_xlatb68 : bool;
  var u_xlat7 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat68 : f32;
  var u_xlatb69 : bool;
  var u_xlat49 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat69 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat28 : f32;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat30 : vec2<f32>;
  var u_xlat57 : vec2<f32>;
  var u_xlat52 : vec2<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var u_xlat20 : vec4<f32>;
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
  var u_xlatb24 : vec2<bool>;
  var u_xlatb45 : bool;
  var x_1770 : f32;
  var u_xlat24 : vec2<f32>;
  var u_xlat45 : vec2<f32>;
  var x_1891 : f32;
  var x_1903 : vec3<f32>;
  var u_xlatu63 : u32;
  var u_xlatb7 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu68 : u32;
  var u_xlati69 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlat70 : f32;
  var u_xlatu70 : u32;
  var u_xlati71 : i32;
  var u_xlati70 : i32;
  var u_xlati72 : i32;
  var u_xlatb70 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2675 : f32;
  var x_2688 : f32;
  var x_2740 : f32;
  var x_2751 : vec3<f32>;
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
  let x_70 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb22 = (x_70 == 0.0f);
  let x_77 : vec3<f32> = vs_TEXCOORD7;
  let x_82 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_77) + x_82);
  let x_85 : vec3<f32> = u_xlat2;
  let x_86 : vec3<f32> = u_xlat2;
  u_xlat43 = dot(x_85, x_86);
  let x_88 : f32 = u_xlat43;
  u_xlat43 = inverseSqrt(x_88);
  let x_90 : f32 = u_xlat43;
  let x_92 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_90, x_90, x_90) * x_92);
  let x_99 : f32 = x_44.unity_MatrixV[0i].z;
  u_xlat3.x = x_99;
  let x_102 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat3.y = x_102;
  let x_107 : f32 = x_44.unity_MatrixV[2i].z;
  u_xlat3.z = x_107;
  let x_110 : bool = u_xlatb22;
  if (x_110) {
    let x_114 : vec3<f32> = u_xlat2;
    x_111 = x_114;
  } else {
    let x_116 : vec4<f32> = u_xlat3;
    x_111 = vec3<f32>(x_116.x, x_116.y, x_116.z);
  }
  let x_118 : vec3<f32> = x_111;
  u_xlat22 = x_118;
  let x_120 : vec3<f32> = vs_TEXCOORD3;
  let x_121 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2.x = dot(x_120, x_121);
  let x_125 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_125);
  let x_128 : vec3<f32> = u_xlat2;
  let x_130 : vec3<f32> = vs_TEXCOORD3;
  u_xlat2 = (vec3<f32>(x_128.x, x_128.x, x_128.x) * x_130);
  let x_132 : vec3<f32> = vs_TEXCOORD7;
  let x_140 : vec4<f32> = x_137.x_CascadeShadowSplitSpheres0;
  let x_143 : vec3<f32> = (x_132 + -(vec3<f32>(x_140.x, x_140.y, x_140.z)));
  let x_144 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec3<f32> = vs_TEXCOORD7;
  let x_149 : vec4<f32> = x_137.x_CascadeShadowSplitSpheres1;
  let x_152 : vec3<f32> = (x_147 + -(vec3<f32>(x_149.x, x_149.y, x_149.z)));
  let x_153 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_152.x, x_152.y, x_152.z, x_153.w);
  let x_156 : vec3<f32> = vs_TEXCOORD7;
  let x_159 : vec4<f32> = x_137.x_CascadeShadowSplitSpheres2;
  u_xlat5 = (x_156 + -(vec3<f32>(x_159.x, x_159.y, x_159.z)));
  let x_164 : vec3<f32> = vs_TEXCOORD7;
  let x_167 : vec4<f32> = x_137.x_CascadeShadowSplitSpheres3;
  u_xlat6 = (x_164 + -(vec3<f32>(x_167.x, x_167.y, x_167.z)));
  let x_171 : vec4<f32> = u_xlat3;
  let x_173 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_171.x, x_171.y, x_171.z), vec3<f32>(x_173.x, x_173.y, x_173.z));
  let x_177 : vec4<f32> = u_xlat4;
  let x_179 : vec4<f32> = u_xlat4;
  u_xlat3.y = dot(vec3<f32>(x_177.x, x_177.y, x_177.z), vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_183 : vec3<f32> = u_xlat5;
  let x_184 : vec3<f32> = u_xlat5;
  u_xlat3.z = dot(x_183, x_184);
  let x_187 : vec3<f32> = u_xlat6;
  let x_188 : vec3<f32> = u_xlat6;
  u_xlat3.w = dot(x_187, x_188);
  let x_194 : vec4<f32> = u_xlat3;
  let x_197 : vec4<f32> = x_137.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_194 < x_197);
  let x_200 : bool = u_xlatb3.x;
  u_xlat4.x = select(0.0f, 1.0f, x_200);
  let x_204 : bool = u_xlatb3.y;
  u_xlat4.y = select(0.0f, 1.0f, x_204);
  let x_208 : bool = u_xlatb3.z;
  u_xlat4.z = select(0.0f, 1.0f, x_208);
  let x_212 : bool = u_xlatb3.w;
  u_xlat4.w = select(0.0f, 1.0f, x_212);
  let x_216 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_216);
  let x_222 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_222);
  let x_226 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_226);
  let x_229 : vec4<f32> = u_xlat3;
  let x_231 : vec4<f32> = u_xlat4;
  let x_233 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) + vec3<f32>(x_231.y, x_231.z, x_231.w));
  let x_234 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
  let x_236 : vec4<f32> = u_xlat3;
  let x_239 : vec3<f32> = max(vec3<f32>(x_236.x, x_236.y, x_236.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_240 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_240.x, x_239.x, x_239.y, x_239.z);
  let x_243 : vec4<f32> = u_xlat4;
  u_xlat65 = dot(x_243, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_249 : f32 = u_xlat65;
  u_xlat65 = (-(x_249) + 4.0f);
  let x_254 : f32 = u_xlat65;
  u_xlatu65 = u32(x_254);
  let x_258 : u32 = u_xlatu65;
  u_xlati65 = (bitcast<i32>(x_258) << bitcast<u32>(2i));
  let x_261 : vec3<f32> = vs_TEXCOORD7;
  let x_263 : i32 = u_xlati65;
  let x_266 : i32 = u_xlati65;
  let x_270 : vec4<f32> = x_137.x_MainLightWorldToShadow[((x_263 + 1i) / 4i)][((x_266 + 1i) % 4i)];
  let x_272 : vec3<f32> = (vec3<f32>(x_261.y, x_261.y, x_261.y) * vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_273 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
  let x_275 : i32 = u_xlati65;
  let x_277 : i32 = u_xlati65;
  let x_280 : vec4<f32> = x_137.x_MainLightWorldToShadow[(x_275 / 4i)][(x_277 % 4i)];
  let x_282 : vec3<f32> = vs_TEXCOORD7;
  let x_285 : vec4<f32> = u_xlat3;
  let x_287 : vec3<f32> = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_282.x, x_282.x, x_282.x)) + vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_290 : i32 = u_xlati65;
  let x_293 : i32 = u_xlati65;
  let x_297 : vec4<f32> = x_137.x_MainLightWorldToShadow[((x_290 + 2i) / 4i)][((x_293 + 2i) % 4i)];
  let x_299 : vec3<f32> = vs_TEXCOORD7;
  let x_302 : vec4<f32> = u_xlat3;
  let x_304 : vec3<f32> = ((vec3<f32>(x_297.x, x_297.y, x_297.z) * vec3<f32>(x_299.z, x_299.z, x_299.z)) + vec3<f32>(x_302.x, x_302.y, x_302.z));
  let x_305 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
  let x_307 : vec4<f32> = u_xlat3;
  let x_309 : i32 = u_xlati65;
  let x_312 : i32 = u_xlati65;
  let x_316 : vec4<f32> = x_137.x_MainLightWorldToShadow[((x_309 + 3i) / 4i)][((x_312 + 3i) % 4i)];
  let x_318 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) + vec3<f32>(x_316.x, x_316.y, x_316.z));
  let x_319 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_322 : f32 = vs_TEXCOORD7.y;
  let x_324 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat65 = (x_322 * x_324);
  let x_327 : f32 = x_44.unity_MatrixV[0i].z;
  let x_329 : f32 = vs_TEXCOORD7.x;
  let x_331 : f32 = u_xlat65;
  u_xlat65 = ((x_327 * x_329) + x_331);
  let x_334 : f32 = x_44.unity_MatrixV[2i].z;
  let x_336 : f32 = vs_TEXCOORD7.z;
  let x_338 : f32 = u_xlat65;
  u_xlat65 = ((x_334 * x_336) + x_338);
  let x_340 : f32 = u_xlat65;
  let x_342 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat65 = (x_340 + x_342);
  let x_344 : f32 = u_xlat65;
  let x_348 : f32 = x_44.x_ProjectionParams.y;
  u_xlat65 = (-(x_344) + -(x_348));
  let x_351 : f32 = u_xlat65;
  u_xlat65 = max(x_351, 0.0f);
  let x_353 : f32 = u_xlat65;
  let x_356 : f32 = x_44.unity_FogParams.x;
  u_xlat65 = (x_353 * x_356);
  let x_363 : vec4<f32> = vs_TEXCOORD0;
  let x_366 : f32 = x_44.x_GlobalMipBias.x;
  let x_367 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_363.z, x_363.w), x_366);
  let x_368 : vec3<f32> = vec3<f32>(x_367.x, x_367.y, x_367.z);
  let x_369 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_373 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_374 : vec2<f32> = vec2<f32>(x_373.x, x_373.y);
  let x_378 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_374.x, x_374.y));
  let x_379 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_381 : vec3<f32> = u_xlat5;
  let x_383 : vec4<f32> = hlslcc_FragCoord;
  let x_385 : vec2<f32> = (vec2<f32>(x_381.x, x_381.y) * vec2<f32>(x_383.x, x_383.y));
  let x_386 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_385.x, x_385.y, x_386.z);
  let x_390 : f32 = u_xlat5.y;
  let x_393 : f32 = x_44.x_ScaleBiasRt.x;
  let x_396 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat66 = ((x_390 * x_393) + x_396);
  let x_398 : f32 = u_xlat66;
  u_xlat5.z = (-(x_398) + 1.0f);
  let x_402 : f32 = u_xlat1;
  u_xlat66 = ((-(x_402) * 0.959999979f) + 0.959999979f);
  let x_408 : f32 = u_xlat66;
  u_xlat67 = (-(x_408) + 1.0f);
  let x_411 : vec4<f32> = u_xlat0;
  let x_413 : f32 = u_xlat66;
  u_xlat6 = (vec3<f32>(x_411.x, x_411.y, x_411.z) * vec3<f32>(x_413, x_413, x_413));
  let x_416 : vec4<f32> = u_xlat0;
  let x_420 : vec3<f32> = (vec3<f32>(x_416.x, x_416.y, x_416.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_421 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_423 : f32 = u_xlat1;
  let x_425 : vec4<f32> = u_xlat0;
  let x_430 : vec3<f32> = ((vec3<f32>(x_423, x_423, x_423) * vec3<f32>(x_425.x, x_425.y, x_425.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_431 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
  let x_434 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_434) + 1.0f);
  let x_437 : f32 = u_xlat1;
  let x_438 : f32 = u_xlat1;
  u_xlat66 = (x_437 * x_438);
  let x_440 : f32 = u_xlat66;
  u_xlat66 = max(x_440, 0.0078125f);
  let x_444 : f32 = u_xlat66;
  let x_445 : f32 = u_xlat66;
  u_xlat26 = (x_444 * x_445);
  let x_449 : f32 = u_xlat0.w;
  let x_450 : f32 = u_xlat67;
  u_xlat63 = (x_449 + x_450);
  let x_452 : f32 = u_xlat63;
  u_xlat63 = clamp(x_452, 0.0f, 1.0f);
  let x_454 : f32 = u_xlat66;
  u_xlat67 = ((x_454 * 4.0f) + 2.0f);
  let x_462 : vec3<f32> = u_xlat5;
  let x_465 : f32 = x_44.x_GlobalMipBias.x;
  let x_466 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_462.x, x_462.z), x_465);
  u_xlat5.x = x_466.x;
  let x_471 : f32 = u_xlat5.x;
  u_xlat47 = (x_471 + -1.0f);
  let x_474 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_475 : f32 = u_xlat47;
  u_xlat47 = ((x_474 * x_475) + 1.0f);
  let x_479 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_479, 1.0f);
  let x_484 : f32 = x_137.x_MainLightShadowParams.y;
  u_xlatb68 = (0.0f < x_484);
  let x_486 : bool = u_xlatb68;
  if (x_486) {
    let x_490 : f32 = x_137.x_MainLightShadowParams.y;
    u_xlatb68 = (x_490 == 1.0f);
    let x_492 : bool = u_xlatb68;
    if (x_492) {
      let x_496 : vec4<f32> = u_xlat3;
      let x_499 : vec4<f32> = x_137.x_MainLightShadowOffset0;
      u_xlat7 = (vec4<f32>(x_496.x, x_496.y, x_496.x, x_496.y) + x_499);
      let x_502 : vec4<f32> = u_xlat7;
      let x_503 : vec2<f32> = vec2<f32>(x_502.x, x_502.y);
      let x_505 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_503.x, x_503.y, x_505);
      let x_518 : vec3<f32> = txVec0;
      let x_520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_518.xy, x_518.z);
      u_xlat8.x = x_520;
      let x_523 : vec4<f32> = u_xlat7;
      let x_524 : vec2<f32> = vec2<f32>(x_523.z, x_523.w);
      let x_526 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_524.x, x_524.y, x_526);
      let x_533 : vec3<f32> = txVec1;
      let x_535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_533.xy, x_533.z);
      u_xlat8.y = x_535;
      let x_537 : vec4<f32> = u_xlat3;
      let x_540 : vec4<f32> = x_137.x_MainLightShadowOffset1;
      u_xlat7 = (vec4<f32>(x_537.x, x_537.y, x_537.x, x_537.y) + x_540);
      let x_543 : vec4<f32> = u_xlat7;
      let x_544 : vec2<f32> = vec2<f32>(x_543.x, x_543.y);
      let x_546 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_544.x, x_544.y, x_546);
      let x_553 : vec3<f32> = txVec2;
      let x_555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_553.xy, x_553.z);
      u_xlat8.z = x_555;
      let x_558 : vec4<f32> = u_xlat7;
      let x_559 : vec2<f32> = vec2<f32>(x_558.z, x_558.w);
      let x_561 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_559.x, x_559.y, x_561);
      let x_568 : vec3<f32> = txVec3;
      let x_570 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_568.xy, x_568.z);
      u_xlat8.w = x_570;
      let x_573 : vec4<f32> = u_xlat8;
      u_xlat68 = dot(x_573, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_580 : f32 = x_137.x_MainLightShadowParams.y;
      u_xlatb69 = (x_580 == 2.0f);
      let x_582 : bool = u_xlatb69;
      if (x_582) {
        let x_585 : vec4<f32> = u_xlat3;
        let x_588 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_593 : vec2<f32> = ((vec2<f32>(x_585.x, x_585.y) * vec2<f32>(x_588.z, x_588.w)) + vec2<f32>(0.5f, 0.5f));
        let x_594 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_593.x, x_593.y, x_594.z, x_594.w);
        let x_596 : vec4<f32> = u_xlat7;
        let x_598 : vec2<f32> = floor(vec2<f32>(x_596.x, x_596.y));
        let x_599 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_603 : vec4<f32> = u_xlat3;
        let x_606 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_609 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_603.x, x_603.y) * vec2<f32>(x_606.z, x_606.w)) + -(vec2<f32>(x_609.x, x_609.y)));
        let x_613 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_613.x, x_613.x, x_613.y, x_613.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_618 : vec4<f32> = u_xlat8;
        let x_620 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_618.x, x_618.x, x_618.z, x_618.z) * vec4<f32>(x_620.x, x_620.x, x_620.z, x_620.z));
        let x_623 : vec4<f32> = u_xlat9;
        let x_627 : vec2<f32> = (vec2<f32>(x_623.y, x_623.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_628 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_627.x, x_628.y, x_627.y, x_628.w);
        let x_630 : vec4<f32> = u_xlat9;
        let x_633 : vec2<f32> = u_xlat49;
        let x_635 : vec2<f32> = ((vec2<f32>(x_630.x, x_630.z) * vec2<f32>(0.5f, 0.5f)) + -(x_633));
        let x_636 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_635.x, x_635.y, x_636.z, x_636.w);
        let x_639 : vec2<f32> = u_xlat49;
        u_xlat51 = (-(x_639) + vec2<f32>(1.0f, 1.0f));
        let x_643 : vec2<f32> = u_xlat49;
        let x_645 : vec2<f32> = min(x_643, vec2<f32>(0.0f, 0.0f));
        let x_646 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_645.x, x_645.y, x_646.z, x_646.w);
        let x_648 : vec4<f32> = u_xlat10;
        let x_651 : vec4<f32> = u_xlat10;
        let x_654 : vec2<f32> = u_xlat51;
        let x_655 : vec2<f32> = ((-(vec2<f32>(x_648.x, x_648.y)) * vec2<f32>(x_651.x, x_651.y)) + x_654);
        let x_656 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_655.x, x_655.y, x_656.z, x_656.w);
        let x_658 : vec2<f32> = u_xlat49;
        u_xlat49 = max(x_658, vec2<f32>(0.0f, 0.0f));
        let x_660 : vec2<f32> = u_xlat49;
        let x_662 : vec2<f32> = u_xlat49;
        let x_664 : vec4<f32> = u_xlat8;
        u_xlat49 = ((-(x_660) * x_662) + vec2<f32>(x_664.y, x_664.w));
        let x_667 : vec4<f32> = u_xlat10;
        let x_669 : vec2<f32> = (vec2<f32>(x_667.x, x_667.y) + vec2<f32>(1.0f, 1.0f));
        let x_670 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_669.x, x_669.y, x_670.z, x_670.w);
        let x_672 : vec2<f32> = u_xlat49;
        u_xlat49 = (x_672 + vec2<f32>(1.0f, 1.0f));
        let x_675 : vec4<f32> = u_xlat9;
        let x_679 : vec2<f32> = (vec2<f32>(x_675.x, x_675.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_680 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_679.x, x_679.y, x_680.z, x_680.w);
        let x_682 : vec2<f32> = u_xlat51;
        let x_683 : vec2<f32> = (x_682 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_684 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_683.x, x_683.y, x_684.z, x_684.w);
        let x_686 : vec4<f32> = u_xlat10;
        let x_688 : vec2<f32> = (vec2<f32>(x_686.x, x_686.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_689 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
        let x_692 : vec2<f32> = u_xlat49;
        let x_693 : vec2<f32> = (x_692 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_694 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_693.x, x_693.y, x_694.z, x_694.w);
        let x_696 : vec4<f32> = u_xlat8;
        u_xlat49 = (vec2<f32>(x_696.y, x_696.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_700 : f32 = u_xlat10.x;
        u_xlat11.z = x_700;
        let x_703 : f32 = u_xlat49.x;
        u_xlat11.w = x_703;
        let x_706 : f32 = u_xlat12.x;
        u_xlat9.z = x_706;
        let x_709 : f32 = u_xlat8.x;
        u_xlat9.w = x_709;
        let x_712 : vec4<f32> = u_xlat9;
        let x_714 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_712.z, x_712.w, x_712.x, x_712.z) + vec4<f32>(x_714.z, x_714.w, x_714.x, x_714.z));
        let x_718 : f32 = u_xlat11.y;
        u_xlat10.z = x_718;
        let x_721 : f32 = u_xlat49.y;
        u_xlat10.w = x_721;
        let x_724 : f32 = u_xlat9.y;
        u_xlat12.z = x_724;
        let x_727 : f32 = u_xlat8.z;
        u_xlat12.w = x_727;
        let x_729 : vec4<f32> = u_xlat10;
        let x_731 : vec4<f32> = u_xlat12;
        let x_733 : vec3<f32> = (vec3<f32>(x_729.z, x_729.y, x_729.w) + vec3<f32>(x_731.z, x_731.y, x_731.w));
        let x_734 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_733.x, x_733.y, x_733.z, x_734.w);
        let x_736 : vec4<f32> = u_xlat9;
        let x_738 : vec4<f32> = u_xlat13;
        let x_740 : vec3<f32> = (vec3<f32>(x_736.x, x_736.z, x_736.w) / vec3<f32>(x_738.z, x_738.w, x_738.y));
        let x_741 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
        let x_743 : vec4<f32> = u_xlat9;
        let x_749 : vec3<f32> = (vec3<f32>(x_743.x, x_743.y, x_743.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_750 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
        let x_752 : vec4<f32> = u_xlat12;
        let x_754 : vec4<f32> = u_xlat8;
        let x_756 : vec3<f32> = (vec3<f32>(x_752.z, x_752.y, x_752.w) / vec3<f32>(x_754.x, x_754.y, x_754.z));
        let x_757 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_756.x, x_756.y, x_756.z, x_757.w);
        let x_759 : vec4<f32> = u_xlat10;
        let x_761 : vec3<f32> = (vec3<f32>(x_759.x, x_759.y, x_759.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_762 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
        let x_764 : vec4<f32> = u_xlat9;
        let x_767 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_769 : vec3<f32> = (vec3<f32>(x_764.y, x_764.x, x_764.z) * vec3<f32>(x_767.x, x_767.x, x_767.x));
        let x_770 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
        let x_772 : vec4<f32> = u_xlat10;
        let x_775 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_777 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(x_775.y, x_775.y, x_775.y));
        let x_778 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
        let x_781 : f32 = u_xlat10.x;
        u_xlat9.w = x_781;
        let x_783 : vec4<f32> = u_xlat7;
        let x_786 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_789 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.y) * vec4<f32>(x_786.x, x_786.y, x_786.x, x_786.y)) + vec4<f32>(x_789.y, x_789.w, x_789.x, x_789.w));
        let x_792 : vec4<f32> = u_xlat7;
        let x_795 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_798 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_792.x, x_792.y) * vec2<f32>(x_795.x, x_795.y)) + vec2<f32>(x_798.z, x_798.w));
        let x_802 : f32 = u_xlat9.y;
        u_xlat10.w = x_802;
        let x_804 : vec4<f32> = u_xlat10;
        let x_805 : vec2<f32> = vec2<f32>(x_804.y, x_804.z);
        let x_806 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_806.x, x_805.x, x_806.z, x_805.y);
        let x_808 : vec4<f32> = u_xlat7;
        let x_811 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_814 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_808.x, x_808.y, x_808.x, x_808.y) * vec4<f32>(x_811.x, x_811.y, x_811.x, x_811.y)) + vec4<f32>(x_814.x, x_814.y, x_814.z, x_814.y));
        let x_817 : vec4<f32> = u_xlat7;
        let x_820 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_823 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_817.x, x_817.y, x_817.x, x_817.y) * vec4<f32>(x_820.x, x_820.y, x_820.x, x_820.y)) + vec4<f32>(x_823.w, x_823.y, x_823.w, x_823.z));
        let x_826 : vec4<f32> = u_xlat7;
        let x_829 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_832 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_826.x, x_826.y, x_826.x, x_826.y) * vec4<f32>(x_829.x, x_829.y, x_829.x, x_829.y)) + vec4<f32>(x_832.x, x_832.w, x_832.z, x_832.w));
        let x_836 : vec4<f32> = u_xlat8;
        let x_838 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_836.x, x_836.x, x_836.x, x_836.y) * vec4<f32>(x_838.z, x_838.w, x_838.y, x_838.z));
        let x_842 : vec4<f32> = u_xlat8;
        let x_844 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_842.y, x_842.y, x_842.z, x_842.z) * x_844);
        let x_848 : f32 = u_xlat8.z;
        let x_850 : f32 = u_xlat13.y;
        u_xlat69 = (x_848 * x_850);
        let x_853 : vec4<f32> = u_xlat11;
        let x_854 : vec2<f32> = vec2<f32>(x_853.x, x_853.y);
        let x_856 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_854.x, x_854.y, x_856);
        let x_863 : vec3<f32> = txVec4;
        let x_865 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_863.xy, x_863.z);
        u_xlat7.x = x_865;
        let x_868 : vec4<f32> = u_xlat11;
        let x_869 : vec2<f32> = vec2<f32>(x_868.z, x_868.w);
        let x_871 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_869.x, x_869.y, x_871);
        let x_879 : vec3<f32> = txVec5;
        let x_881 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_879.xy, x_879.z);
        u_xlat28 = x_881;
        let x_882 : f32 = u_xlat28;
        let x_884 : f32 = u_xlat14.y;
        u_xlat28 = (x_882 * x_884);
        let x_887 : f32 = u_xlat14.x;
        let x_889 : f32 = u_xlat7.x;
        let x_891 : f32 = u_xlat28;
        u_xlat7.x = ((x_887 * x_889) + x_891);
        let x_895 : vec2<f32> = u_xlat49;
        let x_897 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_895.x, x_895.y, x_897);
        let x_904 : vec3<f32> = txVec6;
        let x_906 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_904.xy, x_904.z);
        u_xlat28 = x_906;
        let x_908 : f32 = u_xlat14.z;
        let x_909 : f32 = u_xlat28;
        let x_912 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_908 * x_909) + x_912);
        let x_916 : vec4<f32> = u_xlat10;
        let x_917 : vec2<f32> = vec2<f32>(x_916.x, x_916.y);
        let x_919 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_917.x, x_917.y, x_919);
        let x_926 : vec3<f32> = txVec7;
        let x_928 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_926.xy, x_926.z);
        u_xlat28 = x_928;
        let x_930 : f32 = u_xlat14.w;
        let x_931 : f32 = u_xlat28;
        let x_934 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_930 * x_931) + x_934);
        let x_938 : vec4<f32> = u_xlat12;
        let x_939 : vec2<f32> = vec2<f32>(x_938.x, x_938.y);
        let x_941 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_939.x, x_939.y, x_941);
        let x_948 : vec3<f32> = txVec8;
        let x_950 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_948.xy, x_948.z);
        u_xlat28 = x_950;
        let x_952 : f32 = u_xlat15.x;
        let x_953 : f32 = u_xlat28;
        let x_956 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_952 * x_953) + x_956);
        let x_960 : vec4<f32> = u_xlat12;
        let x_961 : vec2<f32> = vec2<f32>(x_960.z, x_960.w);
        let x_963 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_961.x, x_961.y, x_963);
        let x_970 : vec3<f32> = txVec9;
        let x_972 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_970.xy, x_970.z);
        u_xlat28 = x_972;
        let x_974 : f32 = u_xlat15.y;
        let x_975 : f32 = u_xlat28;
        let x_978 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_974 * x_975) + x_978);
        let x_982 : vec4<f32> = u_xlat10;
        let x_983 : vec2<f32> = vec2<f32>(x_982.z, x_982.w);
        let x_985 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_983.x, x_983.y, x_985);
        let x_992 : vec3<f32> = txVec10;
        let x_994 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_992.xy, x_992.z);
        u_xlat28 = x_994;
        let x_996 : f32 = u_xlat15.z;
        let x_997 : f32 = u_xlat28;
        let x_1000 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_996 * x_997) + x_1000);
        let x_1004 : vec4<f32> = u_xlat9;
        let x_1005 : vec2<f32> = vec2<f32>(x_1004.x, x_1004.y);
        let x_1007 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1005.x, x_1005.y, x_1007);
        let x_1014 : vec3<f32> = txVec11;
        let x_1016 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1014.xy, x_1014.z);
        u_xlat28 = x_1016;
        let x_1018 : f32 = u_xlat15.w;
        let x_1019 : f32 = u_xlat28;
        let x_1022 : f32 = u_xlat7.x;
        u_xlat7.x = ((x_1018 * x_1019) + x_1022);
        let x_1026 : vec4<f32> = u_xlat9;
        let x_1027 : vec2<f32> = vec2<f32>(x_1026.z, x_1026.w);
        let x_1029 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1027.x, x_1027.y, x_1029);
        let x_1036 : vec3<f32> = txVec12;
        let x_1038 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1036.xy, x_1036.z);
        u_xlat28 = x_1038;
        let x_1039 : f32 = u_xlat69;
        let x_1040 : f32 = u_xlat28;
        let x_1043 : f32 = u_xlat7.x;
        u_xlat68 = ((x_1039 * x_1040) + x_1043);
      } else {
        let x_1046 : vec4<f32> = u_xlat3;
        let x_1049 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_1052 : vec2<f32> = ((vec2<f32>(x_1046.x, x_1046.y) * vec2<f32>(x_1049.z, x_1049.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1053 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1052.x, x_1052.y, x_1053.z, x_1053.w);
        let x_1055 : vec4<f32> = u_xlat7;
        let x_1057 : vec2<f32> = floor(vec2<f32>(x_1055.x, x_1055.y));
        let x_1058 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
        let x_1060 : vec4<f32> = u_xlat3;
        let x_1063 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_1066 : vec4<f32> = u_xlat7;
        u_xlat49 = ((vec2<f32>(x_1060.x, x_1060.y) * vec2<f32>(x_1063.z, x_1063.w)) + -(vec2<f32>(x_1066.x, x_1066.y)));
        let x_1070 : vec2<f32> = u_xlat49;
        u_xlat8 = (vec4<f32>(x_1070.x, x_1070.x, x_1070.y, x_1070.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1073 : vec4<f32> = u_xlat8;
        let x_1075 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1073.x, x_1073.x, x_1073.z, x_1073.z) * vec4<f32>(x_1075.x, x_1075.x, x_1075.z, x_1075.z));
        let x_1078 : vec4<f32> = u_xlat9;
        let x_1082 : vec2<f32> = (vec2<f32>(x_1078.y, x_1078.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1083 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1083.x, x_1082.x, x_1083.z, x_1082.y);
        let x_1085 : vec4<f32> = u_xlat9;
        let x_1088 : vec2<f32> = u_xlat49;
        let x_1090 : vec2<f32> = ((vec2<f32>(x_1085.x, x_1085.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1088));
        let x_1091 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1090.x, x_1091.y, x_1090.y, x_1091.w);
        let x_1093 : vec2<f32> = u_xlat49;
        let x_1095 : vec2<f32> = (-(x_1093) + vec2<f32>(1.0f, 1.0f));
        let x_1096 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1095.x, x_1095.y, x_1096.z, x_1096.w);
        let x_1098 : vec2<f32> = u_xlat49;
        u_xlat51 = min(x_1098, vec2<f32>(0.0f, 0.0f));
        let x_1100 : vec2<f32> = u_xlat51;
        let x_1102 : vec2<f32> = u_xlat51;
        let x_1104 : vec4<f32> = u_xlat9;
        let x_1106 : vec2<f32> = ((-(x_1100) * x_1102) + vec2<f32>(x_1104.x, x_1104.y));
        let x_1107 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1106.x, x_1106.y, x_1107.z, x_1107.w);
        let x_1109 : vec2<f32> = u_xlat49;
        u_xlat51 = max(x_1109, vec2<f32>(0.0f, 0.0f));
        let x_1112 : vec2<f32> = u_xlat51;
        let x_1114 : vec2<f32> = u_xlat51;
        let x_1116 : vec4<f32> = u_xlat8;
        let x_1118 : vec2<f32> = ((-(x_1112) * x_1114) + vec2<f32>(x_1116.y, x_1116.w));
        let x_1119 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1118.x, x_1119.y, x_1118.y);
        let x_1121 : vec4<f32> = u_xlat9;
        let x_1124 : vec2<f32> = (vec2<f32>(x_1121.x, x_1121.y) + vec2<f32>(2.0f, 2.0f));
        let x_1125 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1124.x, x_1124.y, x_1125.z, x_1125.w);
        let x_1127 : vec3<f32> = u_xlat29;
        let x_1129 : vec2<f32> = (vec2<f32>(x_1127.x, x_1127.z) + vec2<f32>(2.0f, 2.0f));
        let x_1130 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1130.x, x_1129.x, x_1130.z, x_1129.y);
        let x_1133 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1133 * 0.081632003f);
        let x_1137 : vec4<f32> = u_xlat8;
        let x_1140 : vec3<f32> = (vec3<f32>(x_1137.z, x_1137.x, x_1137.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1141 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
        let x_1143 : vec4<f32> = u_xlat9;
        let x_1146 : vec2<f32> = (vec2<f32>(x_1143.x, x_1143.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1147 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1146.x, x_1146.y, x_1147.z, x_1147.w);
        let x_1150 : f32 = u_xlat12.y;
        u_xlat11.x = x_1150;
        let x_1152 : vec2<f32> = u_xlat49;
        let x_1159 : vec2<f32> = ((vec2<f32>(x_1152.x, x_1152.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1160 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1160.x, x_1159.x, x_1160.z, x_1159.y);
        let x_1162 : vec2<f32> = u_xlat49;
        let x_1166 : vec2<f32> = ((vec2<f32>(x_1162.x, x_1162.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1167 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1166.x, x_1167.y, x_1166.y, x_1167.w);
        let x_1170 : f32 = u_xlat8.x;
        u_xlat9.y = x_1170;
        let x_1173 : f32 = u_xlat10.y;
        u_xlat9.w = x_1173;
        let x_1175 : vec4<f32> = u_xlat9;
        let x_1176 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1175 + x_1176);
        let x_1178 : vec2<f32> = u_xlat49;
        let x_1181 : vec2<f32> = ((vec2<f32>(x_1178.y, x_1178.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1182 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1182.x, x_1181.x, x_1182.z, x_1181.y);
        let x_1184 : vec2<f32> = u_xlat49;
        let x_1187 : vec2<f32> = ((vec2<f32>(x_1184.y, x_1184.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1188 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1187.x, x_1188.y, x_1187.y, x_1188.w);
        let x_1191 : f32 = u_xlat8.y;
        u_xlat10.y = x_1191;
        let x_1193 : vec4<f32> = u_xlat10;
        let x_1194 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1193 + x_1194);
        let x_1196 : vec4<f32> = u_xlat9;
        let x_1197 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1196 / x_1197);
        let x_1199 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1199 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1205 : vec4<f32> = u_xlat10;
        let x_1206 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1205 / x_1206);
        let x_1208 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1208 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1210 : vec4<f32> = u_xlat9;
        let x_1213 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1210.w, x_1210.x, x_1210.y, x_1210.z) * vec4<f32>(x_1213.x, x_1213.x, x_1213.x, x_1213.x));
        let x_1216 : vec4<f32> = u_xlat10;
        let x_1219 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1216.x, x_1216.w, x_1216.y, x_1216.z) * vec4<f32>(x_1219.y, x_1219.y, x_1219.y, x_1219.y));
        let x_1222 : vec4<f32> = u_xlat9;
        let x_1223 : vec3<f32> = vec3<f32>(x_1222.y, x_1222.z, x_1222.w);
        let x_1224 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1223.x, x_1224.y, x_1223.y, x_1223.z);
        let x_1227 : f32 = u_xlat10.x;
        u_xlat12.y = x_1227;
        let x_1229 : vec4<f32> = u_xlat7;
        let x_1232 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_1235 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1229.x, x_1229.y, x_1229.x, x_1229.y) * vec4<f32>(x_1232.x, x_1232.y, x_1232.x, x_1232.y)) + vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1235.y));
        let x_1238 : vec4<f32> = u_xlat7;
        let x_1241 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_1244 : vec4<f32> = u_xlat12;
        u_xlat49 = ((vec2<f32>(x_1238.x, x_1238.y) * vec2<f32>(x_1241.x, x_1241.y)) + vec2<f32>(x_1244.w, x_1244.y));
        let x_1248 : f32 = u_xlat12.y;
        u_xlat9.y = x_1248;
        let x_1251 : f32 = u_xlat10.z;
        u_xlat12.y = x_1251;
        let x_1253 : vec4<f32> = u_xlat7;
        let x_1256 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_1259 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1253.x, x_1253.y, x_1253.x, x_1253.y) * vec4<f32>(x_1256.x, x_1256.y, x_1256.x, x_1256.y)) + vec4<f32>(x_1259.x, x_1259.y, x_1259.z, x_1259.y));
        let x_1262 : vec4<f32> = u_xlat7;
        let x_1265 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_1268 : vec4<f32> = u_xlat12;
        let x_1270 : vec2<f32> = ((vec2<f32>(x_1262.x, x_1262.y) * vec2<f32>(x_1265.x, x_1265.y)) + vec2<f32>(x_1268.w, x_1268.y));
        let x_1271 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1270.x, x_1270.y, x_1271.z, x_1271.w);
        let x_1274 : f32 = u_xlat12.y;
        u_xlat9.z = x_1274;
        let x_1277 : vec4<f32> = u_xlat7;
        let x_1280 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_1283 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1277.x, x_1277.y, x_1277.x, x_1277.y) * vec4<f32>(x_1280.x, x_1280.y, x_1280.x, x_1280.y)) + vec4<f32>(x_1283.x, x_1283.y, x_1283.x, x_1283.z));
        let x_1287 : f32 = u_xlat10.w;
        u_xlat12.y = x_1287;
        let x_1290 : vec4<f32> = u_xlat7;
        let x_1293 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_1296 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1290.x, x_1290.y, x_1290.x, x_1290.y) * vec4<f32>(x_1293.x, x_1293.y, x_1293.x, x_1293.y)) + vec4<f32>(x_1296.x, x_1296.y, x_1296.z, x_1296.y));
        let x_1300 : vec4<f32> = u_xlat7;
        let x_1303 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_1306 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1300.x, x_1300.y) * vec2<f32>(x_1303.x, x_1303.y)) + vec2<f32>(x_1306.w, x_1306.y));
        let x_1310 : f32 = u_xlat12.y;
        u_xlat9.w = x_1310;
        let x_1313 : vec4<f32> = u_xlat7;
        let x_1316 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_1319 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1313.x, x_1313.y) * vec2<f32>(x_1316.x, x_1316.y)) + vec2<f32>(x_1319.x, x_1319.w));
        let x_1322 : vec4<f32> = u_xlat12;
        let x_1323 : vec3<f32> = vec3<f32>(x_1322.x, x_1322.z, x_1322.w);
        let x_1324 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1323.x, x_1324.y, x_1323.y, x_1323.z);
        let x_1326 : vec4<f32> = u_xlat7;
        let x_1329 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_1332 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1326.x, x_1326.y, x_1326.x, x_1326.y) * vec4<f32>(x_1329.x, x_1329.y, x_1329.x, x_1329.y)) + vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1332.y));
        let x_1336 : vec4<f32> = u_xlat7;
        let x_1339 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_1342 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1336.x, x_1336.y) * vec2<f32>(x_1339.x, x_1339.y)) + vec2<f32>(x_1342.w, x_1342.y));
        let x_1346 : f32 = u_xlat9.x;
        u_xlat10.x = x_1346;
        let x_1348 : vec4<f32> = u_xlat7;
        let x_1351 : vec4<f32> = x_137.x_MainLightShadowmapSize;
        let x_1354 : vec4<f32> = u_xlat10;
        let x_1356 : vec2<f32> = ((vec2<f32>(x_1348.x, x_1348.y) * vec2<f32>(x_1351.x, x_1351.y)) + vec2<f32>(x_1354.x, x_1354.y));
        let x_1357 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1356.x, x_1356.y, x_1357.z, x_1357.w);
        let x_1360 : vec4<f32> = u_xlat8;
        let x_1362 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1360.x, x_1360.x, x_1360.x, x_1360.x) * x_1362);
        let x_1365 : vec4<f32> = u_xlat8;
        let x_1367 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1365.y, x_1365.y, x_1365.y, x_1365.y) * x_1367);
        let x_1370 : vec4<f32> = u_xlat8;
        let x_1372 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1370.z, x_1370.z, x_1370.z, x_1370.z) * x_1372);
        let x_1374 : vec4<f32> = u_xlat8;
        let x_1376 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1374.w, x_1374.w, x_1374.w, x_1374.w) * x_1376);
        let x_1379 : vec4<f32> = u_xlat13;
        let x_1380 : vec2<f32> = vec2<f32>(x_1379.x, x_1379.y);
        let x_1382 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1380.x, x_1380.y, x_1382);
        let x_1389 : vec3<f32> = txVec13;
        let x_1391 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1389.xy, x_1389.z);
        u_xlat69 = x_1391;
        let x_1393 : vec4<f32> = u_xlat13;
        let x_1394 : vec2<f32> = vec2<f32>(x_1393.z, x_1393.w);
        let x_1396 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1394.x, x_1394.y, x_1396);
        let x_1403 : vec3<f32> = txVec14;
        let x_1405 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1403.xy, x_1403.z);
        u_xlat9.x = x_1405;
        let x_1408 : f32 = u_xlat9.x;
        let x_1410 : f32 = u_xlat18.y;
        u_xlat9.x = (x_1408 * x_1410);
        let x_1414 : f32 = u_xlat18.x;
        let x_1415 : f32 = u_xlat69;
        let x_1418 : f32 = u_xlat9.x;
        u_xlat69 = ((x_1414 * x_1415) + x_1418);
        let x_1421 : vec2<f32> = u_xlat49;
        let x_1423 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1421.x, x_1421.y, x_1423);
        let x_1430 : vec3<f32> = txVec15;
        let x_1432 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1430.xy, x_1430.z);
        u_xlat49.x = x_1432;
        let x_1435 : f32 = u_xlat18.z;
        let x_1437 : f32 = u_xlat49.x;
        let x_1439 : f32 = u_xlat69;
        u_xlat69 = ((x_1435 * x_1437) + x_1439);
        let x_1442 : vec4<f32> = u_xlat16;
        let x_1443 : vec2<f32> = vec2<f32>(x_1442.x, x_1442.y);
        let x_1445 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1443.x, x_1443.y, x_1445);
        let x_1452 : vec3<f32> = txVec16;
        let x_1454 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1452.xy, x_1452.z);
        u_xlat49.x = x_1454;
        let x_1457 : f32 = u_xlat18.w;
        let x_1459 : f32 = u_xlat49.x;
        let x_1461 : f32 = u_xlat69;
        u_xlat69 = ((x_1457 * x_1459) + x_1461);
        let x_1464 : vec4<f32> = u_xlat14;
        let x_1465 : vec2<f32> = vec2<f32>(x_1464.x, x_1464.y);
        let x_1467 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1465.x, x_1465.y, x_1467);
        let x_1474 : vec3<f32> = txVec17;
        let x_1476 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1474.xy, x_1474.z);
        u_xlat49.x = x_1476;
        let x_1479 : f32 = u_xlat19.x;
        let x_1481 : f32 = u_xlat49.x;
        let x_1483 : f32 = u_xlat69;
        u_xlat69 = ((x_1479 * x_1481) + x_1483);
        let x_1486 : vec4<f32> = u_xlat14;
        let x_1487 : vec2<f32> = vec2<f32>(x_1486.z, x_1486.w);
        let x_1489 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1487.x, x_1487.y, x_1489);
        let x_1496 : vec3<f32> = txVec18;
        let x_1498 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1496.xy, x_1496.z);
        u_xlat49.x = x_1498;
        let x_1501 : f32 = u_xlat19.y;
        let x_1503 : f32 = u_xlat49.x;
        let x_1505 : f32 = u_xlat69;
        u_xlat69 = ((x_1501 * x_1503) + x_1505);
        let x_1508 : vec4<f32> = u_xlat15;
        let x_1509 : vec2<f32> = vec2<f32>(x_1508.x, x_1508.y);
        let x_1511 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1509.x, x_1509.y, x_1511);
        let x_1518 : vec3<f32> = txVec19;
        let x_1520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1518.xy, x_1518.z);
        u_xlat49.x = x_1520;
        let x_1523 : f32 = u_xlat19.z;
        let x_1525 : f32 = u_xlat49.x;
        let x_1527 : f32 = u_xlat69;
        u_xlat69 = ((x_1523 * x_1525) + x_1527);
        let x_1530 : vec4<f32> = u_xlat16;
        let x_1531 : vec2<f32> = vec2<f32>(x_1530.z, x_1530.w);
        let x_1533 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1531.x, x_1531.y, x_1533);
        let x_1540 : vec3<f32> = txVec20;
        let x_1542 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1540.xy, x_1540.z);
        u_xlat49.x = x_1542;
        let x_1545 : f32 = u_xlat19.w;
        let x_1547 : f32 = u_xlat49.x;
        let x_1549 : f32 = u_xlat69;
        u_xlat69 = ((x_1545 * x_1547) + x_1549);
        let x_1552 : vec4<f32> = u_xlat17;
        let x_1553 : vec2<f32> = vec2<f32>(x_1552.x, x_1552.y);
        let x_1555 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1553.x, x_1553.y, x_1555);
        let x_1562 : vec3<f32> = txVec21;
        let x_1564 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1562.xy, x_1562.z);
        u_xlat49.x = x_1564;
        let x_1567 : f32 = u_xlat20.x;
        let x_1569 : f32 = u_xlat49.x;
        let x_1571 : f32 = u_xlat69;
        u_xlat69 = ((x_1567 * x_1569) + x_1571);
        let x_1574 : vec4<f32> = u_xlat17;
        let x_1575 : vec2<f32> = vec2<f32>(x_1574.z, x_1574.w);
        let x_1577 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1575.x, x_1575.y, x_1577);
        let x_1584 : vec3<f32> = txVec22;
        let x_1586 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1584.xy, x_1584.z);
        u_xlat49.x = x_1586;
        let x_1589 : f32 = u_xlat20.y;
        let x_1591 : f32 = u_xlat49.x;
        let x_1593 : f32 = u_xlat69;
        u_xlat69 = ((x_1589 * x_1591) + x_1593);
        let x_1596 : vec2<f32> = u_xlat30;
        let x_1598 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1596.x, x_1596.y, x_1598);
        let x_1605 : vec3<f32> = txVec23;
        let x_1607 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1605.xy, x_1605.z);
        u_xlat49.x = x_1607;
        let x_1610 : f32 = u_xlat20.z;
        let x_1612 : f32 = u_xlat49.x;
        let x_1614 : f32 = u_xlat69;
        u_xlat69 = ((x_1610 * x_1612) + x_1614);
        let x_1617 : vec2<f32> = u_xlat57;
        let x_1619 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1617.x, x_1617.y, x_1619);
        let x_1626 : vec3<f32> = txVec24;
        let x_1628 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1626.xy, x_1626.z);
        u_xlat49.x = x_1628;
        let x_1631 : f32 = u_xlat20.w;
        let x_1633 : f32 = u_xlat49.x;
        let x_1635 : f32 = u_xlat69;
        u_xlat69 = ((x_1631 * x_1633) + x_1635);
        let x_1638 : vec4<f32> = u_xlat12;
        let x_1639 : vec2<f32> = vec2<f32>(x_1638.x, x_1638.y);
        let x_1641 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1639.x, x_1639.y, x_1641);
        let x_1648 : vec3<f32> = txVec25;
        let x_1650 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1648.xy, x_1648.z);
        u_xlat49.x = x_1650;
        let x_1653 : f32 = u_xlat8.x;
        let x_1655 : f32 = u_xlat49.x;
        let x_1657 : f32 = u_xlat69;
        u_xlat69 = ((x_1653 * x_1655) + x_1657);
        let x_1660 : vec4<f32> = u_xlat12;
        let x_1661 : vec2<f32> = vec2<f32>(x_1660.z, x_1660.w);
        let x_1663 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1661.x, x_1661.y, x_1663);
        let x_1670 : vec3<f32> = txVec26;
        let x_1672 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1670.xy, x_1670.z);
        u_xlat49.x = x_1672;
        let x_1675 : f32 = u_xlat8.y;
        let x_1677 : f32 = u_xlat49.x;
        let x_1679 : f32 = u_xlat69;
        u_xlat69 = ((x_1675 * x_1677) + x_1679);
        let x_1682 : vec2<f32> = u_xlat52;
        let x_1684 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1682.x, x_1682.y, x_1684);
        let x_1691 : vec3<f32> = txVec27;
        let x_1693 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1691.xy, x_1691.z);
        u_xlat49.x = x_1693;
        let x_1696 : f32 = u_xlat8.z;
        let x_1698 : f32 = u_xlat49.x;
        let x_1700 : f32 = u_xlat69;
        u_xlat69 = ((x_1696 * x_1698) + x_1700);
        let x_1703 : vec4<f32> = u_xlat7;
        let x_1704 : vec2<f32> = vec2<f32>(x_1703.x, x_1703.y);
        let x_1706 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1704.x, x_1704.y, x_1706);
        let x_1713 : vec3<f32> = txVec28;
        let x_1715 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1713.xy, x_1713.z);
        u_xlat7.x = x_1715;
        let x_1718 : f32 = u_xlat8.w;
        let x_1720 : f32 = u_xlat7.x;
        let x_1722 : f32 = u_xlat69;
        u_xlat68 = ((x_1718 * x_1720) + x_1722);
      }
    }
  } else {
    let x_1726 : vec4<f32> = u_xlat3;
    let x_1727 : vec2<f32> = vec2<f32>(x_1726.x, x_1726.y);
    let x_1729 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_1727.x, x_1727.y, x_1729);
    let x_1736 : vec3<f32> = txVec29;
    let x_1738 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1736.xy, x_1736.z);
    u_xlat68 = x_1738;
  }
  let x_1740 : f32 = x_137.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_1740) + 1.0f);
  let x_1744 : f32 = u_xlat68;
  let x_1746 : f32 = x_137.x_MainLightShadowParams.x;
  let x_1749 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1744 * x_1746) + x_1749);
  let x_1756 : f32 = u_xlat3.z;
  u_xlatb24.x = (0.0f >= x_1756);
  let x_1761 : f32 = u_xlat3.z;
  u_xlatb45 = (x_1761 >= 1.0f);
  let x_1763 : bool = u_xlatb45;
  let x_1765 : bool = u_xlatb24.x;
  u_xlatb24.x = (x_1763 | x_1765);
  let x_1769 : bool = u_xlatb24.x;
  if (x_1769) {
    x_1770 = 1.0f;
  } else {
    let x_1775 : f32 = u_xlat3.x;
    x_1770 = x_1775;
  }
  let x_1776 : f32 = x_1770;
  u_xlat3.x = x_1776;
  let x_1778 : vec3<f32> = vs_TEXCOORD7;
  let x_1780 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1782 : vec3<f32> = (x_1778 + -(x_1780));
  let x_1783 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1782.x, x_1782.y, x_1782.z, x_1783.w);
  let x_1786 : vec4<f32> = u_xlat7;
  let x_1788 : vec4<f32> = u_xlat7;
  u_xlat24.x = dot(vec3<f32>(x_1786.x, x_1786.y, x_1786.z), vec3<f32>(x_1788.x, x_1788.y, x_1788.z));
  let x_1793 : f32 = u_xlat24.x;
  let x_1795 : f32 = x_137.x_MainLightShadowParams.z;
  let x_1798 : f32 = x_137.x_MainLightShadowParams.w;
  u_xlat24.x = ((x_1793 * x_1795) + x_1798);
  let x_1802 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_1802, 0.0f, 1.0f);
  let x_1807 : f32 = u_xlat3.x;
  u_xlat45.x = (-(x_1807) + 1.0f);
  let x_1812 : f32 = u_xlat24.x;
  let x_1814 : f32 = u_xlat45.x;
  let x_1817 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_1812 * x_1814) + x_1817);
  let x_1826 : f32 = x_1824.x_MainLightCookieTextureFormat;
  u_xlatb24.x = !((x_1826 == -1.0f));
  let x_1830 : bool = u_xlatb24.x;
  if (x_1830) {
    let x_1833 : vec3<f32> = vs_TEXCOORD7;
    let x_1836 : vec4<f32> = x_1824.x_MainLightWorldToLight[1i];
    u_xlat24 = (vec2<f32>(x_1833.y, x_1833.y) * vec2<f32>(x_1836.x, x_1836.y));
    let x_1840 : vec4<f32> = x_1824.x_MainLightWorldToLight[0i];
    let x_1842 : vec3<f32> = vs_TEXCOORD7;
    let x_1845 : vec2<f32> = u_xlat24;
    u_xlat24 = ((vec2<f32>(x_1840.x, x_1840.y) * vec2<f32>(x_1842.x, x_1842.x)) + x_1845);
    let x_1848 : vec4<f32> = x_1824.x_MainLightWorldToLight[2i];
    let x_1850 : vec3<f32> = vs_TEXCOORD7;
    let x_1853 : vec2<f32> = u_xlat24;
    u_xlat24 = ((vec2<f32>(x_1848.x, x_1848.y) * vec2<f32>(x_1850.z, x_1850.z)) + x_1853);
    let x_1855 : vec2<f32> = u_xlat24;
    let x_1857 : vec4<f32> = x_1824.x_MainLightWorldToLight[3i];
    u_xlat24 = (x_1855 + vec2<f32>(x_1857.x, x_1857.y));
    let x_1860 : vec2<f32> = u_xlat24;
    u_xlat24 = ((x_1860 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1868 : vec2<f32> = u_xlat24;
    let x_1870 : f32 = x_44.x_GlobalMipBias.x;
    let x_1871 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_1868, x_1870);
    u_xlat7 = x_1871;
    let x_1873 : f32 = x_1824.x_MainLightCookieTextureFormat;
    let x_1875 : f32 = x_1824.x_MainLightCookieTextureFormat;
    let x_1877 : f32 = x_1824.x_MainLightCookieTextureFormat;
    let x_1879 : f32 = x_1824.x_MainLightCookieTextureFormat;
    let x_1880 : vec4<f32> = vec4<f32>(x_1873, x_1875, x_1877, x_1879);
    let x_1887 : vec4<bool> = (vec4<f32>(x_1880.x, x_1880.y, x_1880.z, x_1880.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb24 = vec2<bool>(x_1887.x, x_1887.y);
    let x_1890 : bool = u_xlatb24.y;
    if (x_1890) {
      let x_1895 : f32 = u_xlat7.w;
      x_1891 = x_1895;
    } else {
      let x_1898 : f32 = u_xlat7.x;
      x_1891 = x_1898;
    }
    let x_1899 : f32 = x_1891;
    u_xlat45.x = x_1899;
    let x_1902 : bool = u_xlatb24.x;
    if (x_1902) {
      let x_1906 : vec4<f32> = u_xlat7;
      x_1903 = vec3<f32>(x_1906.x, x_1906.y, x_1906.z);
    } else {
      let x_1909 : vec2<f32> = u_xlat45;
      x_1903 = vec3<f32>(x_1909.x, x_1909.x, x_1909.x);
    }
    let x_1911 : vec3<f32> = x_1903;
    let x_1912 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1911.x, x_1911.y, x_1911.z, x_1912.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1918 : vec4<f32> = u_xlat7;
  let x_1921 : vec4<f32> = x_44.x_MainLightColor;
  let x_1923 : vec3<f32> = (vec3<f32>(x_1918.x, x_1918.y, x_1918.z) * vec3<f32>(x_1921.x, x_1921.y, x_1921.z));
  let x_1924 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
  let x_1926 : f32 = u_xlat47;
  let x_1928 : vec4<f32> = u_xlat7;
  let x_1930 : vec3<f32> = (vec3<f32>(x_1926, x_1926, x_1926) * vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
  let x_1931 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1930.x, x_1930.y, x_1930.z, x_1931.w);
  let x_1933 : vec3<f32> = u_xlat22;
  let x_1935 : vec3<f32> = u_xlat2;
  u_xlat24.x = dot(-(x_1933), x_1935);
  let x_1939 : f32 = u_xlat24.x;
  let x_1941 : f32 = u_xlat24.x;
  u_xlat24.x = (x_1939 + x_1941);
  let x_1944 : vec3<f32> = u_xlat2;
  let x_1945 : vec2<f32> = u_xlat24;
  let x_1949 : vec3<f32> = u_xlat22;
  let x_1951 : vec3<f32> = ((x_1944 * -(vec3<f32>(x_1945.x, x_1945.x, x_1945.x))) + -(x_1949));
  let x_1952 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1951.x, x_1951.y, x_1951.z, x_1952.w);
  let x_1954 : vec3<f32> = u_xlat2;
  let x_1955 : vec3<f32> = u_xlat22;
  u_xlat24.x = dot(x_1954, x_1955);
  let x_1959 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_1959, 0.0f, 1.0f);
  let x_1963 : f32 = u_xlat24.x;
  u_xlat24.x = (-(x_1963) + 1.0f);
  let x_1968 : f32 = u_xlat24.x;
  let x_1970 : f32 = u_xlat24.x;
  u_xlat24.x = (x_1968 * x_1970);
  let x_1974 : f32 = u_xlat24.x;
  let x_1976 : f32 = u_xlat24.x;
  u_xlat24.x = (x_1974 * x_1976);
  let x_1979 : f32 = u_xlat1;
  u_xlat45.x = ((-(x_1979) * 0.699999988f) + 1.700000048f);
  let x_1986 : f32 = u_xlat1;
  let x_1988 : f32 = u_xlat45.x;
  u_xlat1 = (x_1986 * x_1988);
  let x_1990 : f32 = u_xlat1;
  u_xlat1 = (x_1990 * 6.0f);
  let x_2001 : vec4<f32> = u_xlat8;
  let x_2003 : f32 = u_xlat1;
  let x_2004 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2001.x, x_2001.y, x_2001.z), x_2003);
  u_xlat8 = x_2004;
  let x_2006 : f32 = u_xlat8.w;
  u_xlat1 = (x_2006 + -1.0f);
  let x_2013 : f32 = x_2011.unity_SpecCube0_HDR.w;
  let x_2014 : f32 = u_xlat1;
  u_xlat1 = ((x_2013 * x_2014) + 1.0f);
  let x_2017 : f32 = u_xlat1;
  u_xlat1 = max(x_2017, 0.0f);
  let x_2019 : f32 = u_xlat1;
  u_xlat1 = log2(x_2019);
  let x_2021 : f32 = u_xlat1;
  let x_2023 : f32 = x_2011.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_2021 * x_2023);
  let x_2025 : f32 = u_xlat1;
  u_xlat1 = exp2(x_2025);
  let x_2027 : f32 = u_xlat1;
  let x_2029 : f32 = x_2011.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_2027 * x_2029);
  let x_2031 : vec4<f32> = u_xlat8;
  let x_2033 : f32 = u_xlat1;
  let x_2035 : vec3<f32> = (vec3<f32>(x_2031.x, x_2031.y, x_2031.z) * vec3<f32>(x_2033, x_2033, x_2033));
  let x_2036 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2035.x, x_2035.y, x_2035.z, x_2036.w);
  let x_2038 : f32 = u_xlat66;
  let x_2040 : f32 = u_xlat66;
  u_xlat45 = ((vec2<f32>(x_2038, x_2038) * vec2<f32>(x_2040, x_2040)) + vec2<f32>(-1.0f, 1.0f));
  let x_2046 : f32 = u_xlat45.y;
  u_xlat1 = (1.0f / x_2046);
  let x_2048 : vec4<f32> = u_xlat0;
  let x_2051 : f32 = u_xlat63;
  let x_2053 : vec3<f32> = (-(vec3<f32>(x_2048.x, x_2048.y, x_2048.z)) + vec3<f32>(x_2051, x_2051, x_2051));
  let x_2054 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2053.x, x_2053.y, x_2053.z, x_2054.w);
  let x_2056 : vec2<f32> = u_xlat24;
  let x_2058 : vec4<f32> = u_xlat9;
  let x_2061 : vec4<f32> = u_xlat0;
  let x_2063 : vec3<f32> = ((vec3<f32>(x_2056.x, x_2056.x, x_2056.x) * vec3<f32>(x_2058.x, x_2058.y, x_2058.z)) + vec3<f32>(x_2061.x, x_2061.y, x_2061.z));
  let x_2064 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2063.x, x_2063.y, x_2063.z, x_2064.w);
  let x_2066 : f32 = u_xlat1;
  let x_2068 : vec4<f32> = u_xlat9;
  let x_2070 : vec3<f32> = (vec3<f32>(x_2066, x_2066, x_2066) * vec3<f32>(x_2068.x, x_2068.y, x_2068.z));
  let x_2071 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2070.x, x_2070.y, x_2070.z, x_2071.w);
  let x_2073 : vec4<f32> = u_xlat8;
  let x_2075 : vec4<f32> = u_xlat9;
  let x_2077 : vec3<f32> = (vec3<f32>(x_2073.x, x_2073.y, x_2073.z) * vec3<f32>(x_2075.x, x_2075.y, x_2075.z));
  let x_2078 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2077.x, x_2077.y, x_2077.z, x_2078.w);
  let x_2080 : vec4<f32> = u_xlat4;
  let x_2082 : vec3<f32> = u_xlat6;
  let x_2084 : vec4<f32> = u_xlat8;
  let x_2086 : vec3<f32> = ((vec3<f32>(x_2080.x, x_2080.y, x_2080.z) * x_2082) + vec3<f32>(x_2084.x, x_2084.y, x_2084.z));
  let x_2087 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_2086.x, x_2086.y, x_2086.z, x_2087.w);
  let x_2090 : f32 = u_xlat3.x;
  let x_2092 : f32 = x_2011.unity_LightData.z;
  u_xlat63 = (x_2090 * x_2092);
  let x_2094 : vec3<f32> = u_xlat2;
  let x_2096 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_2094, vec3<f32>(x_2096.x, x_2096.y, x_2096.z));
  let x_2099 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2099, 0.0f, 1.0f);
  let x_2101 : f32 = u_xlat63;
  let x_2102 : f32 = u_xlat1;
  u_xlat63 = (x_2101 * x_2102);
  let x_2104 : f32 = u_xlat63;
  let x_2106 : vec4<f32> = u_xlat7;
  let x_2108 : vec3<f32> = (vec3<f32>(x_2104, x_2104, x_2104) * vec3<f32>(x_2106.x, x_2106.y, x_2106.z));
  let x_2109 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2108.x, x_2108.y, x_2109.z, x_2108.z);
  let x_2111 : vec3<f32> = u_xlat22;
  let x_2113 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2115 : vec3<f32> = (x_2111 + vec3<f32>(x_2113.x, x_2113.y, x_2113.z));
  let x_2116 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2115.x, x_2115.y, x_2115.z, x_2116.w);
  let x_2118 : vec4<f32> = u_xlat7;
  let x_2120 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(vec3<f32>(x_2118.x, x_2118.y, x_2118.z), vec3<f32>(x_2120.x, x_2120.y, x_2120.z));
  let x_2123 : f32 = u_xlat63;
  u_xlat63 = max(x_2123, 1.17549435e-37f);
  let x_2126 : f32 = u_xlat63;
  u_xlat63 = inverseSqrt(x_2126);
  let x_2128 : f32 = u_xlat63;
  let x_2130 : vec4<f32> = u_xlat7;
  let x_2132 : vec3<f32> = (vec3<f32>(x_2128, x_2128, x_2128) * vec3<f32>(x_2130.x, x_2130.y, x_2130.z));
  let x_2133 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2132.x, x_2132.y, x_2132.z, x_2133.w);
  let x_2135 : vec3<f32> = u_xlat2;
  let x_2136 : vec4<f32> = u_xlat7;
  u_xlat63 = dot(x_2135, vec3<f32>(x_2136.x, x_2136.y, x_2136.z));
  let x_2139 : f32 = u_xlat63;
  u_xlat63 = clamp(x_2139, 0.0f, 1.0f);
  let x_2142 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2144 : vec4<f32> = u_xlat7;
  u_xlat1 = dot(vec3<f32>(x_2142.x, x_2142.y, x_2142.z), vec3<f32>(x_2144.x, x_2144.y, x_2144.z));
  let x_2147 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2147, 0.0f, 1.0f);
  let x_2149 : f32 = u_xlat63;
  let x_2150 : f32 = u_xlat63;
  u_xlat63 = (x_2149 * x_2150);
  let x_2152 : f32 = u_xlat63;
  let x_2154 : f32 = u_xlat45.x;
  u_xlat63 = ((x_2152 * x_2154) + 1.000010014f);
  let x_2158 : f32 = u_xlat1;
  let x_2159 : f32 = u_xlat1;
  u_xlat1 = (x_2158 * x_2159);
  let x_2161 : f32 = u_xlat63;
  let x_2162 : f32 = u_xlat63;
  u_xlat63 = (x_2161 * x_2162);
  let x_2164 : f32 = u_xlat1;
  u_xlat1 = max(x_2164, 0.100000001f);
  let x_2167 : f32 = u_xlat63;
  let x_2168 : f32 = u_xlat1;
  u_xlat63 = (x_2167 * x_2168);
  let x_2170 : f32 = u_xlat67;
  let x_2171 : f32 = u_xlat63;
  u_xlat63 = (x_2170 * x_2171);
  let x_2173 : f32 = u_xlat26;
  let x_2174 : f32 = u_xlat63;
  u_xlat63 = (x_2173 / x_2174);
  let x_2176 : vec4<f32> = u_xlat0;
  let x_2178 : f32 = u_xlat63;
  let x_2181 : vec3<f32> = u_xlat6;
  let x_2182 : vec3<f32> = ((vec3<f32>(x_2176.x, x_2176.y, x_2176.z) * vec3<f32>(x_2178, x_2178, x_2178)) + x_2181);
  let x_2183 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_2182.x, x_2182.y, x_2182.z, x_2183.w);
  let x_2185 : vec4<f32> = u_xlat3;
  let x_2187 : vec4<f32> = u_xlat7;
  let x_2189 : vec3<f32> = (vec3<f32>(x_2185.x, x_2185.y, x_2185.w) * vec3<f32>(x_2187.x, x_2187.y, x_2187.z));
  let x_2190 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2189.x, x_2189.y, x_2190.z, x_2189.z);
  let x_2193 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2195 : f32 = x_2011.unity_LightData.y;
  u_xlat63 = min(x_2193, x_2195);
  let x_2198 : f32 = u_xlat63;
  u_xlatu63 = bitcast<u32>(i32(x_2198));
  let x_2203 : f32 = x_1824.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2205 : f32 = x_1824.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2207 : f32 = x_1824.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2209 : f32 = x_1824.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2210 : vec4<f32> = vec4<f32>(x_2203, x_2205, x_2207, x_2209);
  let x_2216 : vec4<bool> = (vec4<f32>(x_2210.x, x_2210.y, x_2210.z, x_2210.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_2216.x, x_2216.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2227 : u32 = u_xlatu_loop_1;
    let x_2228 : u32 = u_xlatu63;
    if ((x_2227 < x_2228)) {
    } else {
      break;
    }
    let x_2231 : u32 = u_xlatu_loop_1;
    u_xlatu68 = (x_2231 >> 2u);
    let x_2234 : u32 = u_xlatu_loop_1;
    u_xlati69 = bitcast<i32>((x_2234 & 3u));
    let x_2237 : u32 = u_xlatu68;
    let x_2240 : vec4<f32> = x_2011.unity_LightIndices[bitcast<i32>(x_2237)];
    let x_2250 : i32 = u_xlati69;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2255 : vec4<u32> = indexable[x_2250];
    u_xlat68 = dot(x_2240, bitcast<vec4<f32>>(x_2255));
    let x_2258 : f32 = u_xlat68;
    u_xlatu68 = bitcast<u32>(i32(x_2258));
    let x_2261 : vec3<f32> = vs_TEXCOORD7;
    let x_2273 : u32 = u_xlatu68;
    let x_2276 : vec4<f32> = x_2272.x_AdditionalLightsPosition[bitcast<i32>(x_2273)];
    let x_2279 : u32 = u_xlatu68;
    let x_2282 : vec4<f32> = x_2272.x_AdditionalLightsPosition[bitcast<i32>(x_2279)];
    let x_2284 : vec3<f32> = ((-(x_2261) * vec3<f32>(x_2276.w, x_2276.w, x_2276.w)) + vec3<f32>(x_2282.x, x_2282.y, x_2282.z));
    let x_2285 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2284.x, x_2284.y, x_2284.z, x_2285.w);
    let x_2287 : vec4<f32> = u_xlat9;
    let x_2289 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2287.x, x_2287.y, x_2287.z), vec3<f32>(x_2289.x, x_2289.y, x_2289.z));
    let x_2292 : f32 = u_xlat69;
    u_xlat69 = max(x_2292, 6.10351562e-05f);
    let x_2295 : f32 = u_xlat69;
    u_xlat49.x = inverseSqrt(x_2295);
    let x_2298 : vec2<f32> = u_xlat49;
    let x_2300 : vec4<f32> = u_xlat9;
    let x_2302 : vec3<f32> = (vec3<f32>(x_2298.x, x_2298.x, x_2298.x) * vec3<f32>(x_2300.x, x_2300.y, x_2300.z));
    let x_2303 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2302.x, x_2302.y, x_2302.z, x_2303.w);
    let x_2306 : f32 = u_xlat69;
    u_xlat70 = (1.0f / x_2306);
    let x_2308 : f32 = u_xlat69;
    let x_2309 : u32 = u_xlatu68;
    let x_2312 : f32 = x_2272.x_AdditionalLightsAttenuation[bitcast<i32>(x_2309)].x;
    u_xlat69 = (x_2308 * x_2312);
    let x_2314 : f32 = u_xlat69;
    let x_2316 : f32 = u_xlat69;
    u_xlat69 = ((-(x_2314) * x_2316) + 1.0f);
    let x_2319 : f32 = u_xlat69;
    u_xlat69 = max(x_2319, 0.0f);
    let x_2321 : f32 = u_xlat69;
    let x_2322 : f32 = u_xlat69;
    u_xlat69 = (x_2321 * x_2322);
    let x_2324 : f32 = u_xlat69;
    let x_2325 : f32 = u_xlat70;
    u_xlat69 = (x_2324 * x_2325);
    let x_2327 : u32 = u_xlatu68;
    let x_2330 : vec4<f32> = x_2272.x_AdditionalLightsSpotDir[bitcast<i32>(x_2327)];
    let x_2332 : vec4<f32> = u_xlat10;
    u_xlat70 = dot(vec3<f32>(x_2330.x, x_2330.y, x_2330.z), vec3<f32>(x_2332.x, x_2332.y, x_2332.z));
    let x_2335 : f32 = u_xlat70;
    let x_2336 : u32 = u_xlatu68;
    let x_2339 : f32 = x_2272.x_AdditionalLightsAttenuation[bitcast<i32>(x_2336)].z;
    let x_2341 : u32 = u_xlatu68;
    let x_2344 : f32 = x_2272.x_AdditionalLightsAttenuation[bitcast<i32>(x_2341)].w;
    u_xlat70 = ((x_2335 * x_2339) + x_2344);
    let x_2346 : f32 = u_xlat70;
    u_xlat70 = clamp(x_2346, 0.0f, 1.0f);
    let x_2348 : f32 = u_xlat70;
    let x_2349 : f32 = u_xlat70;
    u_xlat70 = (x_2348 * x_2349);
    let x_2351 : f32 = u_xlat69;
    let x_2352 : f32 = u_xlat70;
    u_xlat69 = (x_2351 * x_2352);
    let x_2355 : u32 = u_xlatu68;
    u_xlatu70 = (x_2355 >> 5u);
    let x_2358 : u32 = u_xlatu68;
    u_xlati71 = (1i << bitcast<u32>((bitcast<i32>(x_2358) & 31i)));
    let x_2364 : i32 = u_xlati71;
    let x_2366 : u32 = u_xlatu70;
    let x_2369 : f32 = x_1824.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2366)].el;
    u_xlati70 = bitcast<i32>((bitcast<u32>(x_2364) & bitcast<u32>(x_2369)));
    let x_2373 : i32 = u_xlati70;
    if ((x_2373 != 0i)) {
      let x_2383 : u32 = u_xlatu68;
      let x_2386 : f32 = x_2382.x_AdditionalLightsLightTypes[bitcast<i32>(x_2383)].el;
      u_xlati70 = i32(x_2386);
      let x_2388 : i32 = u_xlati70;
      u_xlati71 = select(1i, 0i, (x_2388 != 0i));
      let x_2392 : u32 = u_xlatu68;
      u_xlati72 = (bitcast<i32>(x_2392) << bitcast<u32>(2i));
      let x_2395 : i32 = u_xlati71;
      if ((x_2395 != 0i)) {
        let x_2399 : vec3<f32> = vs_TEXCOORD7;
        let x_2401 : i32 = u_xlati72;
        let x_2404 : i32 = u_xlati72;
        let x_2408 : vec4<f32> = x_2382.x_AdditionalLightsWorldToLights[((x_2401 + 1i) / 4i)][((x_2404 + 1i) % 4i)];
        let x_2410 : vec3<f32> = (vec3<f32>(x_2399.y, x_2399.y, x_2399.y) * vec3<f32>(x_2408.x, x_2408.y, x_2408.w));
        let x_2411 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2410.x, x_2410.y, x_2410.z, x_2411.w);
        let x_2413 : i32 = u_xlati72;
        let x_2415 : i32 = u_xlati72;
        let x_2418 : vec4<f32> = x_2382.x_AdditionalLightsWorldToLights[(x_2413 / 4i)][(x_2415 % 4i)];
        let x_2420 : vec3<f32> = vs_TEXCOORD7;
        let x_2423 : vec4<f32> = u_xlat11;
        let x_2425 : vec3<f32> = ((vec3<f32>(x_2418.x, x_2418.y, x_2418.w) * vec3<f32>(x_2420.x, x_2420.x, x_2420.x)) + vec3<f32>(x_2423.x, x_2423.y, x_2423.z));
        let x_2426 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2425.x, x_2425.y, x_2425.z, x_2426.w);
        let x_2428 : i32 = u_xlati72;
        let x_2431 : i32 = u_xlati72;
        let x_2435 : vec4<f32> = x_2382.x_AdditionalLightsWorldToLights[((x_2428 + 2i) / 4i)][((x_2431 + 2i) % 4i)];
        let x_2437 : vec3<f32> = vs_TEXCOORD7;
        let x_2440 : vec4<f32> = u_xlat11;
        let x_2442 : vec3<f32> = ((vec3<f32>(x_2435.x, x_2435.y, x_2435.w) * vec3<f32>(x_2437.z, x_2437.z, x_2437.z)) + vec3<f32>(x_2440.x, x_2440.y, x_2440.z));
        let x_2443 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2442.x, x_2442.y, x_2442.z, x_2443.w);
        let x_2445 : vec4<f32> = u_xlat11;
        let x_2447 : i32 = u_xlati72;
        let x_2450 : i32 = u_xlati72;
        let x_2454 : vec4<f32> = x_2382.x_AdditionalLightsWorldToLights[((x_2447 + 3i) / 4i)][((x_2450 + 3i) % 4i)];
        let x_2456 : vec3<f32> = (vec3<f32>(x_2445.x, x_2445.y, x_2445.z) + vec3<f32>(x_2454.x, x_2454.y, x_2454.w));
        let x_2457 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2456.x, x_2456.y, x_2456.z, x_2457.w);
        let x_2459 : vec4<f32> = u_xlat11;
        let x_2461 : vec4<f32> = u_xlat11;
        let x_2463 : vec2<f32> = (vec2<f32>(x_2459.x, x_2459.y) / vec2<f32>(x_2461.z, x_2461.z));
        let x_2464 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2463.x, x_2463.y, x_2464.z, x_2464.w);
        let x_2466 : vec4<f32> = u_xlat11;
        let x_2469 : vec2<f32> = ((vec2<f32>(x_2466.x, x_2466.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2470 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2469.x, x_2469.y, x_2470.z, x_2470.w);
        let x_2472 : vec4<f32> = u_xlat11;
        let x_2476 : vec2<f32> = clamp(vec2<f32>(x_2472.x, x_2472.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2477 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2476.x, x_2476.y, x_2477.z, x_2477.w);
        let x_2479 : u32 = u_xlatu68;
        let x_2482 : vec4<f32> = x_2382.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2479)];
        let x_2484 : vec4<f32> = u_xlat11;
        let x_2487 : u32 = u_xlatu68;
        let x_2490 : vec4<f32> = x_2382.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2487)];
        let x_2492 : vec2<f32> = ((vec2<f32>(x_2482.x, x_2482.y) * vec2<f32>(x_2484.x, x_2484.y)) + vec2<f32>(x_2490.z, x_2490.w));
        let x_2493 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2492.x, x_2492.y, x_2493.z, x_2493.w);
      } else {
        let x_2497 : i32 = u_xlati70;
        u_xlatb70 = (x_2497 == 1i);
        let x_2499 : bool = u_xlatb70;
        u_xlati70 = select(0i, 1i, x_2499);
        let x_2501 : i32 = u_xlati70;
        if ((x_2501 != 0i)) {
          let x_2506 : vec3<f32> = vs_TEXCOORD7;
          let x_2508 : i32 = u_xlati72;
          let x_2511 : i32 = u_xlati72;
          let x_2515 : vec4<f32> = x_2382.x_AdditionalLightsWorldToLights[((x_2508 + 1i) / 4i)][((x_2511 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2506.y, x_2506.y) * vec2<f32>(x_2515.x, x_2515.y));
          let x_2518 : i32 = u_xlati72;
          let x_2520 : i32 = u_xlati72;
          let x_2523 : vec4<f32> = x_2382.x_AdditionalLightsWorldToLights[(x_2518 / 4i)][(x_2520 % 4i)];
          let x_2525 : vec3<f32> = vs_TEXCOORD7;
          let x_2528 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2523.x, x_2523.y) * vec2<f32>(x_2525.x, x_2525.x)) + x_2528);
          let x_2530 : i32 = u_xlati72;
          let x_2533 : i32 = u_xlati72;
          let x_2537 : vec4<f32> = x_2382.x_AdditionalLightsWorldToLights[((x_2530 + 2i) / 4i)][((x_2533 + 2i) % 4i)];
          let x_2539 : vec3<f32> = vs_TEXCOORD7;
          let x_2542 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2537.x, x_2537.y) * vec2<f32>(x_2539.z, x_2539.z)) + x_2542);
          let x_2544 : vec2<f32> = u_xlat53;
          let x_2545 : i32 = u_xlati72;
          let x_2548 : i32 = u_xlati72;
          let x_2552 : vec4<f32> = x_2382.x_AdditionalLightsWorldToLights[((x_2545 + 3i) / 4i)][((x_2548 + 3i) % 4i)];
          u_xlat53 = (x_2544 + vec2<f32>(x_2552.x, x_2552.y));
          let x_2555 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2555 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2558 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2558);
          let x_2560 : u32 = u_xlatu68;
          let x_2563 : vec4<f32> = x_2382.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2560)];
          let x_2565 : vec2<f32> = u_xlat53;
          let x_2567 : u32 = u_xlatu68;
          let x_2570 : vec4<f32> = x_2382.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2567)];
          let x_2572 : vec2<f32> = ((vec2<f32>(x_2563.x, x_2563.y) * x_2565) + vec2<f32>(x_2570.z, x_2570.w));
          let x_2573 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2572.x, x_2572.y, x_2573.z, x_2573.w);
        } else {
          let x_2576 : vec3<f32> = vs_TEXCOORD7;
          let x_2578 : i32 = u_xlati72;
          let x_2581 : i32 = u_xlati72;
          let x_2585 : vec4<f32> = x_2382.x_AdditionalLightsWorldToLights[((x_2578 + 1i) / 4i)][((x_2581 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2576.y, x_2576.y, x_2576.y, x_2576.y) * x_2585);
          let x_2587 : i32 = u_xlati72;
          let x_2589 : i32 = u_xlati72;
          let x_2592 : vec4<f32> = x_2382.x_AdditionalLightsWorldToLights[(x_2587 / 4i)][(x_2589 % 4i)];
          let x_2593 : vec3<f32> = vs_TEXCOORD7;
          let x_2596 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2592 * vec4<f32>(x_2593.x, x_2593.x, x_2593.x, x_2593.x)) + x_2596);
          let x_2598 : i32 = u_xlati72;
          let x_2601 : i32 = u_xlati72;
          let x_2605 : vec4<f32> = x_2382.x_AdditionalLightsWorldToLights[((x_2598 + 2i) / 4i)][((x_2601 + 2i) % 4i)];
          let x_2606 : vec3<f32> = vs_TEXCOORD7;
          let x_2609 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2605 * vec4<f32>(x_2606.z, x_2606.z, x_2606.z, x_2606.z)) + x_2609);
          let x_2611 : vec4<f32> = u_xlat12;
          let x_2612 : i32 = u_xlati72;
          let x_2615 : i32 = u_xlati72;
          let x_2619 : vec4<f32> = x_2382.x_AdditionalLightsWorldToLights[((x_2612 + 3i) / 4i)][((x_2615 + 3i) % 4i)];
          u_xlat12 = (x_2611 + x_2619);
          let x_2621 : vec4<f32> = u_xlat12;
          let x_2623 : vec4<f32> = u_xlat12;
          let x_2625 : vec3<f32> = (vec3<f32>(x_2621.x, x_2621.y, x_2621.z) / vec3<f32>(x_2623.w, x_2623.w, x_2623.w));
          let x_2626 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2625.x, x_2625.y, x_2625.z, x_2626.w);
          let x_2628 : vec4<f32> = u_xlat12;
          let x_2630 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(vec3<f32>(x_2628.x, x_2628.y, x_2628.z), vec3<f32>(x_2630.x, x_2630.y, x_2630.z));
          let x_2633 : f32 = u_xlat70;
          u_xlat70 = inverseSqrt(x_2633);
          let x_2635 : f32 = u_xlat70;
          let x_2637 : vec4<f32> = u_xlat12;
          let x_2639 : vec3<f32> = (vec3<f32>(x_2635, x_2635, x_2635) * vec3<f32>(x_2637.x, x_2637.y, x_2637.z));
          let x_2640 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2639.x, x_2639.y, x_2639.z, x_2640.w);
          let x_2642 : vec4<f32> = u_xlat12;
          u_xlat70 = dot(abs(vec3<f32>(x_2642.x, x_2642.y, x_2642.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2647 : f32 = u_xlat70;
          u_xlat70 = max(x_2647, 0.000001f);
          let x_2650 : f32 = u_xlat70;
          u_xlat70 = (1.0f / x_2650);
          let x_2652 : f32 = u_xlat70;
          let x_2654 : vec4<f32> = u_xlat12;
          let x_2656 : vec3<f32> = (vec3<f32>(x_2652, x_2652, x_2652) * vec3<f32>(x_2654.z, x_2654.x, x_2654.y));
          let x_2657 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2656.x, x_2656.y, x_2656.z, x_2657.w);
          let x_2660 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2660);
          let x_2664 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2664, 0.0f, 1.0f);
          let x_2668 : vec4<f32> = u_xlat13;
          let x_2671 : vec4<bool> = (vec4<f32>(x_2668.y, x_2668.z, x_2668.y, x_2668.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2671.x, x_2671.y);
          let x_2674 : bool = u_xlatb53.x;
          if (x_2674) {
            let x_2679 : f32 = u_xlat13.x;
            x_2675 = x_2679;
          } else {
            let x_2682 : f32 = u_xlat13.x;
            x_2675 = -(x_2682);
          }
          let x_2684 : f32 = x_2675;
          u_xlat53.x = x_2684;
          let x_2687 : bool = u_xlatb53.y;
          if (x_2687) {
            let x_2692 : f32 = u_xlat13.x;
            x_2688 = x_2692;
          } else {
            let x_2695 : f32 = u_xlat13.x;
            x_2688 = -(x_2695);
          }
          let x_2697 : f32 = x_2688;
          u_xlat53.y = x_2697;
          let x_2699 : vec4<f32> = u_xlat12;
          let x_2701 : f32 = u_xlat70;
          let x_2704 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2699.x, x_2699.y) * vec2<f32>(x_2701, x_2701)) + x_2704);
          let x_2706 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2706 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2709 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_2709, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2713 : u32 = u_xlatu68;
          let x_2716 : vec4<f32> = x_2382.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2713)];
          let x_2718 : vec2<f32> = u_xlat53;
          let x_2720 : u32 = u_xlatu68;
          let x_2723 : vec4<f32> = x_2382.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2720)];
          let x_2725 : vec2<f32> = ((vec2<f32>(x_2716.x, x_2716.y) * x_2718) + vec2<f32>(x_2723.z, x_2723.w));
          let x_2726 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2725.x, x_2725.y, x_2726.z, x_2726.w);
        }
      }
      let x_2733 : vec4<f32> = u_xlat11;
      let x_2736 : f32 = x_44.x_GlobalMipBias.x;
      let x_2737 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2733.x, x_2733.y), x_2736);
      u_xlat11 = x_2737;
      let x_2739 : bool = u_xlatb7.y;
      if (x_2739) {
        let x_2744 : f32 = u_xlat11.w;
        x_2740 = x_2744;
      } else {
        let x_2747 : f32 = u_xlat11.x;
        x_2740 = x_2747;
      }
      let x_2748 : f32 = x_2740;
      u_xlat70 = x_2748;
      let x_2750 : bool = u_xlatb7.x;
      if (x_2750) {
        let x_2754 : vec4<f32> = u_xlat11;
        x_2751 = vec3<f32>(x_2754.x, x_2754.y, x_2754.z);
      } else {
        let x_2757 : f32 = u_xlat70;
        x_2751 = vec3<f32>(x_2757, x_2757, x_2757);
      }
      let x_2759 : vec3<f32> = x_2751;
      let x_2760 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2759.x, x_2759.y, x_2759.z, x_2760.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2766 : vec4<f32> = u_xlat11;
    let x_2768 : u32 = u_xlatu68;
    let x_2771 : vec4<f32> = x_2272.x_AdditionalLightsColor[bitcast<i32>(x_2768)];
    let x_2773 : vec3<f32> = (vec3<f32>(x_2766.x, x_2766.y, x_2766.z) * vec3<f32>(x_2771.x, x_2771.y, x_2771.z));
    let x_2774 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2773.x, x_2773.y, x_2773.z, x_2774.w);
    let x_2776 : f32 = u_xlat47;
    let x_2778 : vec4<f32> = u_xlat11;
    let x_2780 : vec3<f32> = (vec3<f32>(x_2776, x_2776, x_2776) * vec3<f32>(x_2778.x, x_2778.y, x_2778.z));
    let x_2781 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2780.x, x_2780.y, x_2780.z, x_2781.w);
    let x_2783 : vec3<f32> = u_xlat2;
    let x_2784 : vec4<f32> = u_xlat10;
    u_xlat68 = dot(x_2783, vec3<f32>(x_2784.x, x_2784.y, x_2784.z));
    let x_2787 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2787, 0.0f, 1.0f);
    let x_2789 : f32 = u_xlat68;
    let x_2790 : f32 = u_xlat69;
    u_xlat68 = (x_2789 * x_2790);
    let x_2792 : f32 = u_xlat68;
    let x_2794 : vec4<f32> = u_xlat11;
    let x_2796 : vec3<f32> = (vec3<f32>(x_2792, x_2792, x_2792) * vec3<f32>(x_2794.x, x_2794.y, x_2794.z));
    let x_2797 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2796.x, x_2796.y, x_2796.z, x_2797.w);
    let x_2799 : vec4<f32> = u_xlat9;
    let x_2801 : vec2<f32> = u_xlat49;
    let x_2804 : vec3<f32> = u_xlat22;
    let x_2805 : vec3<f32> = ((vec3<f32>(x_2799.x, x_2799.y, x_2799.z) * vec3<f32>(x_2801.x, x_2801.x, x_2801.x)) + x_2804);
    let x_2806 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2805.x, x_2805.y, x_2805.z, x_2806.w);
    let x_2808 : vec4<f32> = u_xlat9;
    let x_2810 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2808.x, x_2808.y, x_2808.z), vec3<f32>(x_2810.x, x_2810.y, x_2810.z));
    let x_2813 : f32 = u_xlat68;
    u_xlat68 = max(x_2813, 1.17549435e-37f);
    let x_2815 : f32 = u_xlat68;
    u_xlat68 = inverseSqrt(x_2815);
    let x_2817 : f32 = u_xlat68;
    let x_2819 : vec4<f32> = u_xlat9;
    let x_2821 : vec3<f32> = (vec3<f32>(x_2817, x_2817, x_2817) * vec3<f32>(x_2819.x, x_2819.y, x_2819.z));
    let x_2822 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2821.x, x_2821.y, x_2821.z, x_2822.w);
    let x_2824 : vec3<f32> = u_xlat2;
    let x_2825 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(x_2824, vec3<f32>(x_2825.x, x_2825.y, x_2825.z));
    let x_2828 : f32 = u_xlat68;
    u_xlat68 = clamp(x_2828, 0.0f, 1.0f);
    let x_2830 : vec4<f32> = u_xlat10;
    let x_2832 : vec4<f32> = u_xlat9;
    u_xlat69 = dot(vec3<f32>(x_2830.x, x_2830.y, x_2830.z), vec3<f32>(x_2832.x, x_2832.y, x_2832.z));
    let x_2835 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2835, 0.0f, 1.0f);
    let x_2837 : f32 = u_xlat68;
    let x_2838 : f32 = u_xlat68;
    u_xlat68 = (x_2837 * x_2838);
    let x_2840 : f32 = u_xlat68;
    let x_2842 : f32 = u_xlat45.x;
    u_xlat68 = ((x_2840 * x_2842) + 1.000010014f);
    let x_2845 : f32 = u_xlat69;
    let x_2846 : f32 = u_xlat69;
    u_xlat69 = (x_2845 * x_2846);
    let x_2848 : f32 = u_xlat68;
    let x_2849 : f32 = u_xlat68;
    u_xlat68 = (x_2848 * x_2849);
    let x_2851 : f32 = u_xlat69;
    u_xlat69 = max(x_2851, 0.100000001f);
    let x_2853 : f32 = u_xlat68;
    let x_2854 : f32 = u_xlat69;
    u_xlat68 = (x_2853 * x_2854);
    let x_2856 : f32 = u_xlat67;
    let x_2857 : f32 = u_xlat68;
    u_xlat68 = (x_2856 * x_2857);
    let x_2859 : f32 = u_xlat26;
    let x_2860 : f32 = u_xlat68;
    u_xlat68 = (x_2859 / x_2860);
    let x_2862 : vec4<f32> = u_xlat0;
    let x_2864 : f32 = u_xlat68;
    let x_2867 : vec3<f32> = u_xlat6;
    let x_2868 : vec3<f32> = ((vec3<f32>(x_2862.x, x_2862.y, x_2862.z) * vec3<f32>(x_2864, x_2864, x_2864)) + x_2867);
    let x_2869 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2868.x, x_2868.y, x_2868.z, x_2869.w);
    let x_2871 : vec4<f32> = u_xlat9;
    let x_2873 : vec4<f32> = u_xlat11;
    let x_2876 : vec4<f32> = u_xlat8;
    let x_2878 : vec3<f32> = ((vec3<f32>(x_2871.x, x_2871.y, x_2871.z) * vec3<f32>(x_2873.x, x_2873.y, x_2873.z)) + vec3<f32>(x_2876.x, x_2876.y, x_2876.z));
    let x_2879 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2878.x, x_2878.y, x_2878.z, x_2879.w);

    continuing {
      let x_2881 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2881 + bitcast<u32>(1i));
    }
  }
  let x_2883 : vec4<f32> = u_xlat4;
  let x_2885 : vec3<f32> = u_xlat5;
  let x_2888 : vec4<f32> = u_xlat3;
  let x_2890 : vec3<f32> = ((vec3<f32>(x_2883.x, x_2883.y, x_2883.z) * vec3<f32>(x_2885.x, x_2885.x, x_2885.x)) + vec3<f32>(x_2888.x, x_2888.y, x_2888.w));
  let x_2891 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2890.x, x_2890.y, x_2890.z, x_2891.w);
  let x_2893 : vec4<f32> = u_xlat8;
  let x_2895 : vec4<f32> = u_xlat0;
  let x_2897 : vec3<f32> = (vec3<f32>(x_2893.x, x_2893.y, x_2893.z) + vec3<f32>(x_2895.x, x_2895.y, x_2895.z));
  let x_2898 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2897.x, x_2897.y, x_2897.z, x_2898.w);
  let x_2900 : f32 = u_xlat65;
  let x_2901 : f32 = u_xlat65;
  u_xlat63 = (x_2900 * -(x_2901));
  let x_2904 : f32 = u_xlat63;
  u_xlat63 = exp2(x_2904);
  let x_2906 : vec4<f32> = u_xlat0;
  let x_2910 : vec4<f32> = x_44.unity_FogColor;
  let x_2913 : vec3<f32> = (vec3<f32>(x_2906.x, x_2906.y, x_2906.z) + -(vec3<f32>(x_2910.x, x_2910.y, x_2910.z)));
  let x_2914 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2913.x, x_2913.y, x_2913.z, x_2914.w);
  let x_2918 : f32 = u_xlat63;
  let x_2920 : vec4<f32> = u_xlat0;
  let x_2924 : vec4<f32> = x_44.unity_FogColor;
  let x_2926 : vec3<f32> = ((vec3<f32>(x_2918, x_2918, x_2918) * vec3<f32>(x_2920.x, x_2920.y, x_2920.z)) + vec3<f32>(x_2924.x, x_2924.y, x_2924.z));
  let x_2927 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2926.x, x_2926.y, x_2926.z, x_2927.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD7_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : vec3<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  main_1();
  return main_out(SV_Target0);
}

