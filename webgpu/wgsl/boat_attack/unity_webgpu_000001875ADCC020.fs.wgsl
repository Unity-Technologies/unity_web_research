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
  unity_OrthoParams : vec4<f32>,
  x_ScaleBiasRt : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  x_MainTex_TexelSize : vec4<f32>,
  x_MRLL_TexelSize : vec4<f32>,
  x_BumpMap_TexelSize : vec4<f32>,
  x_Color1 : vec4<f32>,
  x_Color2 : vec4<f32>,
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

@group(0) @binding(7) var x_MainTex : texture_2d<f32>;

@group(0) @binding(16) var samplerSamplerState_Trilinear_Clamp : sampler;

var<private> vs_INTERP3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(8) var x_MRLL : texture_2d<f32>;

@group(1) @binding(6) var<uniform> x_68 : UnityPerMaterial;

@group(0) @binding(9) var x_BumpMap : texture_2d<f32>;

var<private> vs_INTERP2 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_282 : UnityPerDraw;

var<private> vs_INTERP1 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_436 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(11) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP4 : vec2<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(4) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_2112 : LightCookies;

@group(0) @binding(5) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(1) var<uniform> x_2589 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2698 : AdditionalLightsCookies;

@group(0) @binding(6) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb4 : vec3<bool>;
  var u_xlat5 : vec4<f32>;
  var u_xlat21 : vec2<f32>;
  var u_xlatb22 : vec3<bool>;
  var u_xlat22 : vec3<f32>;
  var u_xlatb21 : bool;
  var u_xlat42 : f32;
  var x_396 : f32;
  var x_409 : f32;
  var x_420 : f32;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec3<f32>;
  var u_xlatb3 : vec4<bool>;
  var u_xlatu21 : u32;
  var u_xlati21 : i32;
  var u_xlat65 : f32;
  var u_xlat66 : f32;
  var u_xlat67 : f32;
  var u_xlat63 : f32;
  var u_xlatb66 : bool;
  var txVec0 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlatb68 : bool;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat51 : vec2<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat68 : f32;
  var txVec4 : vec3<f32>;
  var txVec5 : vec3<f32>;
  var u_xlat27 : f32;
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
  var u_xlat70 : f32;
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
  var x_2064 : f32;
  var u_xlat24 : vec3<f32>;
  var u_xlat45 : f32;
  var x_2194 : f32;
  var x_2205 : vec3<f32>;
  var u_xlat69 : f32;
  var u_xlatb6 : vec2<bool>;
  var u_xlatu_loop_1 : u32;
  var u_xlatu66 : u32;
  var u_xlati68 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu69 : u32;
  var u_xlati70 : i32;
  var u_xlati69 : i32;
  var u_xlati71 : i32;
  var u_xlatb69 : bool;
  var u_xlat53 : vec2<f32>;
  var u_xlatb53 : vec2<bool>;
  var x_2990 : f32;
  var x_3003 : f32;
  var x_3055 : f32;
  var x_3066 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = gl_FragCoord;
  let x_14 : vec3<f32> = vec3<f32>(x_13.x, x_13.y, x_13.z);
  let x_20 : f32 = gl_FragCoord.w;
  hlslcc_FragCoord = vec4<f32>(x_14.x, x_14.y, x_14.z, (1.0f / x_20));
  let x_39 : vec4<f32> = vs_INTERP3;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(x_MainTex, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_39.x, x_39.y), x_50);
  u_xlat0 = x_51;
  let x_57 : vec4<f32> = vs_INTERP3;
  let x_60 : f32 = x_44.x_GlobalMipBias.x;
  let x_61 : vec4<f32> = textureSampleBias(x_MRLL, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_57.x, x_57.y), x_60);
  u_xlat1 = x_61;
  let x_64 : vec4<f32> = u_xlat1;
  let x_72 : vec4<f32> = x_68.x_Color2;
  u_xlat2 = (vec3<f32>(x_64.w, x_64.w, x_64.w) * vec3<f32>(x_72.x, x_72.y, x_72.z));
  let x_77 : vec4<f32> = x_68.x_Color1;
  let x_79 : vec4<f32> = u_xlat1;
  let x_82 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_77.x, x_77.y, x_77.z) * vec3<f32>(x_79.z, x_79.z, x_79.z)) + x_82);
  let x_87 : f32 = u_xlat1.w;
  let x_90 : f32 = u_xlat1.z;
  u_xlat43 = (x_87 + x_90);
  let x_92 : f32 = u_xlat43;
  u_xlat43 = clamp(x_92, 0.0f, 1.0f);
  let x_96 : vec4<f32> = u_xlat0;
  let x_100 : vec3<f32> = (-(vec3<f32>(x_96.x, x_96.y, x_96.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_101 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_103 : vec4<f32> = u_xlat3;
  let x_105 : vec4<f32> = u_xlat3;
  let x_107 : vec3<f32> = (vec3<f32>(x_103.x, x_103.y, x_103.z) + vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = u_xlat2;
  u_xlat4 = (-(x_111) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_114 : vec4<f32> = u_xlat3;
  let x_117 : vec3<f32> = u_xlat4;
  let x_119 : vec3<f32> = ((-(vec3<f32>(x_114.x, x_114.y, x_114.z)) * x_117) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_120 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_119.x, x_119.y, x_119.z, x_120.w);
  let x_122 : vec4<f32> = u_xlat0;
  let x_124 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_122.x, x_122.y, x_122.z) * x_124);
  let x_126 : vec3<f32> = u_xlat2;
  let x_127 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_126 + x_127);
  let x_135 : vec4<f32> = u_xlat0;
  let x_138 : vec4<bool> = (vec4<f32>(0.5f, 0.5f, 0.5f, 0.0f) >= vec4<f32>(x_135.x, x_135.y, x_135.z, x_135.x));
  u_xlatb4 = vec3<bool>(x_138.x, x_138.y, x_138.z);
  let x_143 : bool = u_xlatb4.x;
  u_xlat5.x = select(0.0f, 1.0f, x_143);
  let x_148 : bool = u_xlatb4.y;
  u_xlat5.y = select(0.0f, 1.0f, x_148);
  let x_152 : bool = u_xlatb4.z;
  u_xlat5.z = select(0.0f, 1.0f, x_152);
  let x_156 : bool = u_xlatb4.x;
  u_xlat4.x = select(1.0f, 0.0f, x_156);
  let x_160 : bool = u_xlatb4.y;
  u_xlat4.y = select(1.0f, 0.0f, x_160);
  let x_164 : bool = u_xlatb4.z;
  u_xlat4.z = select(1.0f, 0.0f, x_164);
  let x_167 : vec4<f32> = u_xlat3;
  let x_169 : vec3<f32> = u_xlat4;
  let x_170 : vec3<f32> = (vec3<f32>(x_167.x, x_167.y, x_167.z) * x_169);
  let x_171 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_173 : vec3<f32> = u_xlat2;
  let x_174 : vec4<f32> = u_xlat5;
  let x_177 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_173 * vec3<f32>(x_174.x, x_174.y, x_174.z)) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat0;
  let x_183 : vec3<f32> = u_xlat2;
  u_xlat2 = (-(vec3<f32>(x_180.x, x_180.y, x_180.z)) + x_183);
  let x_185 : f32 = u_xlat43;
  let x_187 : vec3<f32> = u_xlat2;
  let x_189 : vec4<f32> = u_xlat0;
  u_xlat2 = ((vec3<f32>(x_185, x_185, x_185) * x_187) + vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_193 : f32 = u_xlat0.x;
  u_xlat0.x = (x_193 + -0.150000006f);
  let x_198 : f32 = u_xlat0.x;
  u_xlat0.x = ceil(x_198);
  let x_202 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_202) + 1.0f);
  let x_206 : vec4<f32> = u_xlat0;
  let x_211 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_206.x, x_206.x, x_206.x) * vec3<f32>(0.400000006f, 0.400000006f, 0.400000006f)) + x_211);
  let x_217 : vec4<f32> = vs_INTERP3;
  let x_220 : f32 = x_44.x_GlobalMipBias.x;
  let x_221 : vec4<f32> = textureSampleBias(x_BumpMap, samplerSamplerState_Trilinear_Clamp, vec2<f32>(x_217.x, x_217.y), x_220);
  let x_222 : vec3<f32> = vec3<f32>(x_221.x, x_221.y, x_221.w);
  let x_223 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_222.x, x_222.y, x_222.z, x_223.w);
  let x_226 : f32 = u_xlat3.x;
  let x_228 : f32 = u_xlat3.z;
  u_xlat3.x = (x_226 * x_228);
  let x_233 : vec4<f32> = u_xlat3;
  u_xlat21 = ((vec2<f32>(x_233.x, x_233.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_241 : vec2<f32> = u_xlat21;
  let x_242 : vec2<f32> = u_xlat21;
  u_xlat43 = dot(x_241, x_242);
  let x_244 : f32 = u_xlat43;
  u_xlat43 = min(x_244, 1.0f);
  let x_246 : f32 = u_xlat43;
  u_xlat43 = (-(x_246) + 1.0f);
  let x_249 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_249);
  let x_251 : f32 = u_xlat43;
  u_xlat43 = max(x_251, 1.00000002e-16f);
  let x_255 : f32 = u_xlat1.x;
  let x_257 : f32 = u_xlat0.x;
  u_xlat0.x = (x_255 + x_257);
  let x_261 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_261, 0.0f, 1.0f);
  let x_265 : f32 = u_xlat1.y;
  u_xlat1.x = max(x_265, 0.0f);
  let x_269 : f32 = u_xlat1.x;
  u_xlat1.x = min(x_269, 0.850000024f);
  let x_276 : f32 = vs_INTERP2.w;
  u_xlatb22.x = (0.0f < x_276);
  let x_284 : f32 = x_282.unity_WorldTransformParams.w;
  u_xlatb22.z = (x_284 >= 0.0f);
  let x_289 : bool = u_xlatb22.x;
  u_xlat22.x = select(-1.0f, 1.0f, x_289);
  let x_293 : bool = u_xlatb22.z;
  u_xlat22.z = select(-1.0f, 1.0f, x_293);
  let x_297 : f32 = u_xlat22.z;
  let x_299 : f32 = u_xlat22.x;
  u_xlat22.x = (x_297 * x_299);
  let x_304 : vec3<f32> = vs_INTERP1;
  let x_306 : vec4<f32> = vs_INTERP2;
  let x_308 : vec3<f32> = (vec3<f32>(x_304.z, x_304.x, x_304.y) * vec3<f32>(x_306.y, x_306.z, x_306.x));
  let x_309 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_308.x, x_308.y, x_308.z, x_309.w);
  let x_311 : vec3<f32> = vs_INTERP1;
  let x_313 : vec4<f32> = vs_INTERP2;
  let x_316 : vec4<f32> = u_xlat3;
  let x_319 : vec3<f32> = ((vec3<f32>(x_311.y, x_311.z, x_311.x) * vec3<f32>(x_313.z, x_313.x, x_313.y)) + -(vec3<f32>(x_316.x, x_316.y, x_316.z)));
  let x_320 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_319.x, x_319.y, x_319.z, x_320.w);
  let x_322 : vec3<f32> = u_xlat22;
  let x_324 : vec4<f32> = u_xlat3;
  let x_326 : vec3<f32> = (vec3<f32>(x_322.x, x_322.x, x_322.x) * vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_329 : vec2<f32> = u_xlat21;
  let x_331 : vec4<f32> = u_xlat3;
  let x_333 : vec3<f32> = (vec3<f32>(x_329.y, x_329.y, x_329.y) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_334 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  let x_336 : vec2<f32> = u_xlat21;
  let x_338 : vec4<f32> = vs_INTERP2;
  let x_341 : vec4<f32> = u_xlat3;
  let x_343 : vec3<f32> = ((vec3<f32>(x_336.x, x_336.x, x_336.x) * vec3<f32>(x_338.x, x_338.y, x_338.z)) + vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_343.x, x_343.y, x_343.z, x_344.w);
  let x_346 : f32 = u_xlat43;
  let x_348 : vec3<f32> = vs_INTERP1;
  let x_350 : vec4<f32> = u_xlat3;
  u_xlat22 = ((vec3<f32>(x_346, x_346, x_346) * x_348) + vec3<f32>(x_350.x, x_350.y, x_350.z));
  let x_353 : vec3<f32> = u_xlat22;
  let x_354 : vec3<f32> = u_xlat22;
  u_xlat21.x = dot(x_353, x_354);
  let x_358 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_358);
  let x_361 : vec2<f32> = u_xlat21;
  let x_363 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_361.x, x_361.x, x_361.x) * x_363);
  let x_368 : f32 = x_44.unity_OrthoParams.w;
  u_xlatb21 = (x_368 == 0.0f);
  let x_371 : vec3<f32> = vs_INTERP0;
  let x_376 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_377 : vec3<f32> = (-(x_371) + x_376);
  let x_378 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec4<f32> = u_xlat3;
  u_xlat42 = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), vec3<f32>(x_383.x, x_383.y, x_383.z));
  let x_386 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_386);
  let x_388 : f32 = u_xlat42;
  let x_390 : vec4<f32> = u_xlat3;
  let x_392 : vec3<f32> = (vec3<f32>(x_388, x_388, x_388) * vec3<f32>(x_390.x, x_390.y, x_390.z));
  let x_393 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : bool = u_xlatb21;
  if (x_395) {
    let x_400 : f32 = u_xlat3.x;
    x_396 = x_400;
  } else {
    let x_405 : f32 = x_44.unity_MatrixV[0i].z;
    x_396 = x_405;
  }
  let x_406 : f32 = x_396;
  u_xlat4.x = x_406;
  let x_408 : bool = u_xlatb21;
  if (x_408) {
    let x_413 : f32 = u_xlat3.y;
    x_409 = x_413;
  } else {
    let x_416 : f32 = x_44.unity_MatrixV[1i].z;
    x_409 = x_416;
  }
  let x_417 : f32 = x_409;
  u_xlat4.y = x_417;
  let x_419 : bool = u_xlatb21;
  if (x_419) {
    let x_424 : f32 = u_xlat3.z;
    x_420 = x_424;
  } else {
    let x_428 : f32 = x_44.unity_MatrixV[2i].z;
    x_420 = x_428;
  }
  let x_429 : f32 = x_420;
  u_xlat4.z = x_429;
  let x_431 : vec3<f32> = vs_INTERP0;
  let x_438 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres0;
  let x_441 : vec3<f32> = (x_431 + -(vec3<f32>(x_438.x, x_438.y, x_438.z)));
  let x_442 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_444 : vec3<f32> = vs_INTERP0;
  let x_446 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres1;
  let x_449 : vec3<f32> = (x_444 + -(vec3<f32>(x_446.x, x_446.y, x_446.z)));
  let x_450 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_449.x, x_449.y, x_449.z, x_450.w);
  let x_453 : vec3<f32> = vs_INTERP0;
  let x_455 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres2;
  let x_458 : vec3<f32> = (x_453 + -(vec3<f32>(x_455.x, x_455.y, x_455.z)));
  let x_459 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
  let x_462 : vec3<f32> = vs_INTERP0;
  let x_464 : vec4<f32> = x_436.x_CascadeShadowSplitSpheres3;
  u_xlat7 = (x_462 + -(vec3<f32>(x_464.x, x_464.y, x_464.z)));
  let x_468 : vec4<f32> = u_xlat3;
  let x_470 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_468.x, x_468.y, x_468.z), vec3<f32>(x_470.x, x_470.y, x_470.z));
  let x_474 : vec4<f32> = u_xlat5;
  let x_476 : vec4<f32> = u_xlat5;
  u_xlat3.y = dot(vec3<f32>(x_474.x, x_474.y, x_474.z), vec3<f32>(x_476.x, x_476.y, x_476.z));
  let x_480 : vec4<f32> = u_xlat6;
  let x_482 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_480.x, x_480.y, x_480.z), vec3<f32>(x_482.x, x_482.y, x_482.z));
  let x_486 : vec3<f32> = u_xlat7;
  let x_487 : vec3<f32> = u_xlat7;
  u_xlat3.w = dot(x_486, x_487);
  let x_492 : vec4<f32> = u_xlat3;
  let x_495 : vec4<f32> = x_436.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_492 < x_495);
  let x_498 : bool = u_xlatb3.x;
  u_xlat5.x = select(0.0f, 1.0f, x_498);
  let x_502 : bool = u_xlatb3.y;
  u_xlat5.y = select(0.0f, 1.0f, x_502);
  let x_506 : bool = u_xlatb3.z;
  u_xlat5.z = select(0.0f, 1.0f, x_506);
  let x_510 : bool = u_xlatb3.w;
  u_xlat5.w = select(0.0f, 1.0f, x_510);
  let x_514 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_514);
  let x_519 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_519);
  let x_523 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_523);
  let x_526 : vec4<f32> = u_xlat3;
  let x_528 : vec4<f32> = u_xlat5;
  let x_530 : vec3<f32> = (vec3<f32>(x_526.x, x_526.y, x_526.z) + vec3<f32>(x_528.y, x_528.z, x_528.w));
  let x_531 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_530.x, x_530.y, x_530.z, x_531.w);
  let x_533 : vec4<f32> = u_xlat3;
  let x_536 : vec3<f32> = max(vec3<f32>(x_533.x, x_533.y, x_533.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_537 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_537.x, x_536.x, x_536.y, x_536.z);
  let x_539 : vec4<f32> = u_xlat5;
  u_xlat21.x = dot(x_539, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_546 : f32 = u_xlat21.x;
  u_xlat21.x = (-(x_546) + 4.0f);
  let x_553 : f32 = u_xlat21.x;
  u_xlatu21 = u32(x_553);
  let x_557 : u32 = u_xlatu21;
  u_xlati21 = (bitcast<i32>(x_557) << bitcast<u32>(2i));
  let x_560 : vec3<f32> = vs_INTERP0;
  let x_562 : i32 = u_xlati21;
  let x_565 : i32 = u_xlati21;
  let x_569 : vec4<f32> = x_436.x_MainLightWorldToShadow[((x_562 + 1i) / 4i)][((x_565 + 1i) % 4i)];
  let x_571 : vec3<f32> = (vec3<f32>(x_560.y, x_560.y, x_560.y) * vec3<f32>(x_569.x, x_569.y, x_569.z));
  let x_572 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
  let x_574 : i32 = u_xlati21;
  let x_576 : i32 = u_xlati21;
  let x_579 : vec4<f32> = x_436.x_MainLightWorldToShadow[(x_574 / 4i)][(x_576 % 4i)];
  let x_581 : vec3<f32> = vs_INTERP0;
  let x_584 : vec4<f32> = u_xlat3;
  let x_586 : vec3<f32> = ((vec3<f32>(x_579.x, x_579.y, x_579.z) * vec3<f32>(x_581.x, x_581.x, x_581.x)) + vec3<f32>(x_584.x, x_584.y, x_584.z));
  let x_587 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_586.x, x_586.y, x_586.z, x_587.w);
  let x_589 : i32 = u_xlati21;
  let x_592 : i32 = u_xlati21;
  let x_596 : vec4<f32> = x_436.x_MainLightWorldToShadow[((x_589 + 2i) / 4i)][((x_592 + 2i) % 4i)];
  let x_598 : vec3<f32> = vs_INTERP0;
  let x_601 : vec4<f32> = u_xlat3;
  let x_603 : vec3<f32> = ((vec3<f32>(x_596.x, x_596.y, x_596.z) * vec3<f32>(x_598.z, x_598.z, x_598.z)) + vec3<f32>(x_601.x, x_601.y, x_601.z));
  let x_604 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_603.x, x_603.y, x_603.z, x_604.w);
  let x_606 : vec4<f32> = u_xlat3;
  let x_608 : i32 = u_xlati21;
  let x_611 : i32 = u_xlati21;
  let x_615 : vec4<f32> = x_436.x_MainLightWorldToShadow[((x_608 + 3i) / 4i)][((x_611 + 3i) % 4i)];
  let x_617 : vec3<f32> = (vec3<f32>(x_606.x, x_606.y, x_606.z) + vec3<f32>(x_615.x, x_615.y, x_615.z));
  let x_618 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_627 : vec2<f32> = vs_INTERP4;
  let x_629 : f32 = x_44.x_GlobalMipBias.x;
  let x_630 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_627, x_629);
  u_xlat5 = x_630;
  let x_635 : vec2<f32> = vs_INTERP4;
  let x_637 : f32 = x_44.x_GlobalMipBias.x;
  let x_638 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_635, x_637);
  let x_639 : vec3<f32> = vec3<f32>(x_638.x, x_638.y, x_638.z);
  let x_640 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_642 : vec4<f32> = u_xlat5;
  let x_646 : vec3<f32> = (vec3<f32>(x_642.x, x_642.y, x_642.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_647 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_646.x, x_646.y, x_646.z, x_647.w);
  let x_649 : vec3<f32> = u_xlat22;
  let x_650 : vec4<f32> = u_xlat5;
  u_xlat21.x = dot(x_649, vec3<f32>(x_650.x, x_650.y, x_650.z));
  let x_655 : f32 = u_xlat21.x;
  u_xlat21.x = (x_655 + 0.5f);
  let x_658 : vec2<f32> = u_xlat21;
  let x_660 : vec4<f32> = u_xlat6;
  let x_662 : vec3<f32> = (vec3<f32>(x_658.x, x_658.x, x_658.x) * vec3<f32>(x_660.x, x_660.y, x_660.z));
  let x_663 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_662.x, x_662.y, x_662.z, x_663.w);
  let x_666 : f32 = u_xlat5.w;
  u_xlat21.x = max(x_666, 0.0001f);
  let x_670 : vec4<f32> = u_xlat5;
  let x_672 : vec2<f32> = u_xlat21;
  let x_674 : vec3<f32> = (vec3<f32>(x_670.x, x_670.y, x_670.z) / vec3<f32>(x_672.x, x_672.x, x_672.x));
  let x_675 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_679 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_680 : vec2<f32> = vec2<f32>(x_679.x, x_679.y);
  u_xlat21 = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_680.x, x_680.y));
  let x_685 : vec2<f32> = u_xlat21;
  let x_686 : vec4<f32> = hlslcc_FragCoord;
  let x_688 : vec2<f32> = (x_685 * vec2<f32>(x_686.x, x_686.y));
  let x_689 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_688.x, x_688.y, x_689.z, x_689.w);
  let x_692 : f32 = u_xlat6.y;
  let x_695 : f32 = x_44.x_ScaleBiasRt.x;
  let x_698 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat21.x = ((x_692 * x_695) + x_698);
  let x_702 : f32 = u_xlat21.x;
  u_xlat6.z = (-(x_702) + 1.0f);
  let x_707 : f32 = u_xlat0.x;
  u_xlat21.x = ((-(x_707) * 0.959999979f) + 0.959999979f);
  let x_714 : f32 = u_xlat21.x;
  let x_717 : f32 = u_xlat1.x;
  u_xlat42 = (-(x_714) + x_717);
  let x_719 : vec2<f32> = u_xlat21;
  let x_721 : vec3<f32> = u_xlat2;
  u_xlat7 = (vec3<f32>(x_719.x, x_719.x, x_719.x) * x_721);
  let x_723 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_723 + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_727 : vec4<f32> = u_xlat0;
  let x_729 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_727.x, x_727.x, x_727.x) * x_729) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_735 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_735) + 1.0f);
  let x_740 : f32 = u_xlat0.x;
  let x_742 : f32 = u_xlat0.x;
  u_xlat21.x = (x_740 * x_742);
  let x_746 : f32 = u_xlat21.x;
  let x_748 : f32 = u_xlat21.x;
  u_xlat1.x = (x_746 * x_748);
  let x_751 : f32 = u_xlat42;
  u_xlat42 = (x_751 + 1.0f);
  let x_753 : f32 = u_xlat42;
  u_xlat42 = min(x_753, 1.0f);
  let x_757 : f32 = u_xlat21.x;
  u_xlat65 = ((x_757 * 4.0f) + 2.0f);
  let x_766 : vec4<f32> = u_xlat6;
  let x_769 : f32 = x_44.x_GlobalMipBias.x;
  let x_770 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_766.x, x_766.z), x_769);
  u_xlat66 = x_770.x;
  let x_773 : f32 = u_xlat66;
  u_xlat67 = (x_773 + -1.0f);
  let x_776 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_777 : f32 = u_xlat67;
  u_xlat67 = ((x_776 * x_777) + 1.0f);
  let x_782 : f32 = u_xlat0.w;
  let x_783 : f32 = u_xlat66;
  u_xlat63 = min(x_782, x_783);
  let x_787 : f32 = x_436.x_MainLightShadowParams.y;
  u_xlatb66 = (0.0f < x_787);
  let x_789 : bool = u_xlatb66;
  if (x_789) {
    let x_793 : f32 = x_436.x_MainLightShadowParams.y;
    u_xlatb66 = (x_793 == 1.0f);
    let x_795 : bool = u_xlatb66;
    if (x_795) {
      let x_798 : vec4<f32> = u_xlat3;
      let x_801 : vec4<f32> = x_436.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_798.x, x_798.y, x_798.x, x_798.y) + x_801);
      let x_804 : vec4<f32> = u_xlat6;
      let x_805 : vec2<f32> = vec2<f32>(x_804.x, x_804.y);
      let x_807 : f32 = u_xlat3.z;
      txVec0 = vec3<f32>(x_805.x, x_805.y, x_807);
      let x_820 : vec3<f32> = txVec0;
      let x_822 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_820.xy, x_820.z);
      u_xlat8.x = x_822;
      let x_825 : vec4<f32> = u_xlat6;
      let x_826 : vec2<f32> = vec2<f32>(x_825.z, x_825.w);
      let x_828 : f32 = u_xlat3.z;
      txVec1 = vec3<f32>(x_826.x, x_826.y, x_828);
      let x_835 : vec3<f32> = txVec1;
      let x_837 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_835.xy, x_835.z);
      u_xlat8.y = x_837;
      let x_839 : vec4<f32> = u_xlat3;
      let x_842 : vec4<f32> = x_436.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_839.x, x_839.y, x_839.x, x_839.y) + x_842);
      let x_845 : vec4<f32> = u_xlat6;
      let x_846 : vec2<f32> = vec2<f32>(x_845.x, x_845.y);
      let x_848 : f32 = u_xlat3.z;
      txVec2 = vec3<f32>(x_846.x, x_846.y, x_848);
      let x_855 : vec3<f32> = txVec2;
      let x_857 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_855.xy, x_855.z);
      u_xlat8.z = x_857;
      let x_860 : vec4<f32> = u_xlat6;
      let x_861 : vec2<f32> = vec2<f32>(x_860.z, x_860.w);
      let x_863 : f32 = u_xlat3.z;
      txVec3 = vec3<f32>(x_861.x, x_861.y, x_863);
      let x_870 : vec3<f32> = txVec3;
      let x_872 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_870.xy, x_870.z);
      u_xlat8.w = x_872;
      let x_874 : vec4<f32> = u_xlat8;
      u_xlat66 = dot(x_874, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_881 : f32 = x_436.x_MainLightShadowParams.y;
      u_xlatb68 = (x_881 == 2.0f);
      let x_883 : bool = u_xlatb68;
      if (x_883) {
        let x_886 : vec4<f32> = u_xlat3;
        let x_889 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_893 : vec2<f32> = ((vec2<f32>(x_886.x, x_886.y) * vec2<f32>(x_889.z, x_889.w)) + vec2<f32>(0.5f, 0.5f));
        let x_894 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_893.x, x_893.y, x_894.z, x_894.w);
        let x_896 : vec4<f32> = u_xlat6;
        let x_898 : vec2<f32> = floor(vec2<f32>(x_896.x, x_896.y));
        let x_899 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_898.x, x_898.y, x_899.z, x_899.w);
        let x_902 : vec4<f32> = u_xlat3;
        let x_905 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_908 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_902.x, x_902.y) * vec2<f32>(x_905.z, x_905.w)) + -(vec2<f32>(x_908.x, x_908.y)));
        let x_912 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_912.x, x_912.x, x_912.y, x_912.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_917 : vec4<f32> = u_xlat8;
        let x_919 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_917.x, x_917.x, x_917.z, x_917.z) * vec4<f32>(x_919.x, x_919.x, x_919.z, x_919.z));
        let x_922 : vec4<f32> = u_xlat9;
        let x_926 : vec2<f32> = (vec2<f32>(x_922.y, x_922.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_927 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_926.x, x_927.y, x_926.y, x_927.w);
        let x_929 : vec4<f32> = u_xlat9;
        let x_932 : vec2<f32> = u_xlat48;
        let x_934 : vec2<f32> = ((vec2<f32>(x_929.x, x_929.z) * vec2<f32>(0.5f, 0.5f)) + -(x_932));
        let x_935 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_934.x, x_934.y, x_935.z, x_935.w);
        let x_938 : vec2<f32> = u_xlat48;
        u_xlat51 = (-(x_938) + vec2<f32>(1.0f, 1.0f));
        let x_942 : vec2<f32> = u_xlat48;
        let x_944 : vec2<f32> = min(x_942, vec2<f32>(0.0f, 0.0f));
        let x_945 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_944.x, x_944.y, x_945.z, x_945.w);
        let x_947 : vec4<f32> = u_xlat10;
        let x_950 : vec4<f32> = u_xlat10;
        let x_953 : vec2<f32> = u_xlat51;
        let x_954 : vec2<f32> = ((-(vec2<f32>(x_947.x, x_947.y)) * vec2<f32>(x_950.x, x_950.y)) + x_953);
        let x_955 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_954.x, x_954.y, x_955.z, x_955.w);
        let x_957 : vec2<f32> = u_xlat48;
        u_xlat48 = max(x_957, vec2<f32>(0.0f, 0.0f));
        let x_959 : vec2<f32> = u_xlat48;
        let x_961 : vec2<f32> = u_xlat48;
        let x_963 : vec4<f32> = u_xlat8;
        u_xlat48 = ((-(x_959) * x_961) + vec2<f32>(x_963.y, x_963.w));
        let x_966 : vec4<f32> = u_xlat10;
        let x_968 : vec2<f32> = (vec2<f32>(x_966.x, x_966.y) + vec2<f32>(1.0f, 1.0f));
        let x_969 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_968.x, x_968.y, x_969.z, x_969.w);
        let x_971 : vec2<f32> = u_xlat48;
        u_xlat48 = (x_971 + vec2<f32>(1.0f, 1.0f));
        let x_974 : vec4<f32> = u_xlat9;
        let x_978 : vec2<f32> = (vec2<f32>(x_974.x, x_974.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_979 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_978.x, x_978.y, x_979.z, x_979.w);
        let x_981 : vec2<f32> = u_xlat51;
        let x_982 : vec2<f32> = (x_981 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_983 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_982.x, x_982.y, x_983.z, x_983.w);
        let x_985 : vec4<f32> = u_xlat10;
        let x_987 : vec2<f32> = (vec2<f32>(x_985.x, x_985.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_988 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_987.x, x_987.y, x_988.z, x_988.w);
        let x_991 : vec2<f32> = u_xlat48;
        let x_992 : vec2<f32> = (x_991 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_993 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_992.x, x_992.y, x_993.z, x_993.w);
        let x_995 : vec4<f32> = u_xlat8;
        u_xlat48 = (vec2<f32>(x_995.y, x_995.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_999 : f32 = u_xlat10.x;
        u_xlat11.z = x_999;
        let x_1002 : f32 = u_xlat48.x;
        u_xlat11.w = x_1002;
        let x_1005 : f32 = u_xlat12.x;
        u_xlat9.z = x_1005;
        let x_1008 : f32 = u_xlat8.x;
        u_xlat9.w = x_1008;
        let x_1011 : vec4<f32> = u_xlat9;
        let x_1013 : vec4<f32> = u_xlat11;
        u_xlat13 = (vec4<f32>(x_1011.z, x_1011.w, x_1011.x, x_1011.z) + vec4<f32>(x_1013.z, x_1013.w, x_1013.x, x_1013.z));
        let x_1017 : f32 = u_xlat11.y;
        u_xlat10.z = x_1017;
        let x_1020 : f32 = u_xlat48.y;
        u_xlat10.w = x_1020;
        let x_1023 : f32 = u_xlat9.y;
        u_xlat12.z = x_1023;
        let x_1026 : f32 = u_xlat8.z;
        u_xlat12.w = x_1026;
        let x_1028 : vec4<f32> = u_xlat10;
        let x_1030 : vec4<f32> = u_xlat12;
        let x_1032 : vec3<f32> = (vec3<f32>(x_1028.z, x_1028.y, x_1028.w) + vec3<f32>(x_1030.z, x_1030.y, x_1030.w));
        let x_1033 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
        let x_1035 : vec4<f32> = u_xlat9;
        let x_1037 : vec4<f32> = u_xlat13;
        let x_1039 : vec3<f32> = (vec3<f32>(x_1035.x, x_1035.z, x_1035.w) / vec3<f32>(x_1037.z, x_1037.w, x_1037.y));
        let x_1040 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
        let x_1042 : vec4<f32> = u_xlat9;
        let x_1047 : vec3<f32> = (vec3<f32>(x_1042.x, x_1042.y, x_1042.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1048 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
        let x_1050 : vec4<f32> = u_xlat12;
        let x_1052 : vec4<f32> = u_xlat8;
        let x_1054 : vec3<f32> = (vec3<f32>(x_1050.z, x_1050.y, x_1050.w) / vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
        let x_1055 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1054.x, x_1054.y, x_1054.z, x_1055.w);
        let x_1057 : vec4<f32> = u_xlat10;
        let x_1059 : vec3<f32> = (vec3<f32>(x_1057.x, x_1057.y, x_1057.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_1060 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1059.x, x_1059.y, x_1059.z, x_1060.w);
        let x_1062 : vec4<f32> = u_xlat9;
        let x_1065 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1067 : vec3<f32> = (vec3<f32>(x_1062.y, x_1062.x, x_1062.z) * vec3<f32>(x_1065.x, x_1065.x, x_1065.x));
        let x_1068 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1067.x, x_1067.y, x_1067.z, x_1068.w);
        let x_1070 : vec4<f32> = u_xlat10;
        let x_1073 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1075 : vec3<f32> = (vec3<f32>(x_1070.x, x_1070.y, x_1070.z) * vec3<f32>(x_1073.y, x_1073.y, x_1073.y));
        let x_1076 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
        let x_1079 : f32 = u_xlat10.x;
        u_xlat9.w = x_1079;
        let x_1081 : vec4<f32> = u_xlat6;
        let x_1084 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1087 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1081.x, x_1081.y, x_1081.x, x_1081.y) * vec4<f32>(x_1084.x, x_1084.y, x_1084.x, x_1084.y)) + vec4<f32>(x_1087.y, x_1087.w, x_1087.x, x_1087.w));
        let x_1090 : vec4<f32> = u_xlat6;
        let x_1093 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1096 : vec4<f32> = u_xlat9;
        u_xlat48 = ((vec2<f32>(x_1090.x, x_1090.y) * vec2<f32>(x_1093.x, x_1093.y)) + vec2<f32>(x_1096.z, x_1096.w));
        let x_1100 : f32 = u_xlat9.y;
        u_xlat10.w = x_1100;
        let x_1102 : vec4<f32> = u_xlat10;
        let x_1103 : vec2<f32> = vec2<f32>(x_1102.y, x_1102.z);
        let x_1104 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1104.x, x_1103.x, x_1104.z, x_1103.y);
        let x_1106 : vec4<f32> = u_xlat6;
        let x_1109 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1112 : vec4<f32> = u_xlat9;
        u_xlat12 = ((vec4<f32>(x_1106.x, x_1106.y, x_1106.x, x_1106.y) * vec4<f32>(x_1109.x, x_1109.y, x_1109.x, x_1109.y)) + vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1112.y));
        let x_1115 : vec4<f32> = u_xlat6;
        let x_1118 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1121 : vec4<f32> = u_xlat10;
        u_xlat10 = ((vec4<f32>(x_1115.x, x_1115.y, x_1115.x, x_1115.y) * vec4<f32>(x_1118.x, x_1118.y, x_1118.x, x_1118.y)) + vec4<f32>(x_1121.w, x_1121.y, x_1121.w, x_1121.z));
        let x_1124 : vec4<f32> = u_xlat6;
        let x_1127 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1130 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_1124.x, x_1124.y, x_1124.x, x_1124.y) * vec4<f32>(x_1127.x, x_1127.y, x_1127.x, x_1127.y)) + vec4<f32>(x_1130.x, x_1130.w, x_1130.z, x_1130.w));
        let x_1134 : vec4<f32> = u_xlat8;
        let x_1136 : vec4<f32> = u_xlat13;
        u_xlat14 = (vec4<f32>(x_1134.x, x_1134.x, x_1134.x, x_1134.y) * vec4<f32>(x_1136.z, x_1136.w, x_1136.y, x_1136.z));
        let x_1140 : vec4<f32> = u_xlat8;
        let x_1142 : vec4<f32> = u_xlat13;
        u_xlat15 = (vec4<f32>(x_1140.y, x_1140.y, x_1140.z, x_1140.z) * x_1142);
        let x_1146 : f32 = u_xlat8.z;
        let x_1148 : f32 = u_xlat13.y;
        u_xlat68 = (x_1146 * x_1148);
        let x_1151 : vec4<f32> = u_xlat11;
        let x_1152 : vec2<f32> = vec2<f32>(x_1151.x, x_1151.y);
        let x_1154 : f32 = u_xlat3.z;
        txVec4 = vec3<f32>(x_1152.x, x_1152.y, x_1154);
        let x_1161 : vec3<f32> = txVec4;
        let x_1163 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1161.xy, x_1161.z);
        u_xlat6.x = x_1163;
        let x_1166 : vec4<f32> = u_xlat11;
        let x_1167 : vec2<f32> = vec2<f32>(x_1166.z, x_1166.w);
        let x_1169 : f32 = u_xlat3.z;
        txVec5 = vec3<f32>(x_1167.x, x_1167.y, x_1169);
        let x_1177 : vec3<f32> = txVec5;
        let x_1179 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1177.xy, x_1177.z);
        u_xlat27 = x_1179;
        let x_1180 : f32 = u_xlat27;
        let x_1182 : f32 = u_xlat14.y;
        u_xlat27 = (x_1180 * x_1182);
        let x_1185 : f32 = u_xlat14.x;
        let x_1187 : f32 = u_xlat6.x;
        let x_1189 : f32 = u_xlat27;
        u_xlat6.x = ((x_1185 * x_1187) + x_1189);
        let x_1193 : vec2<f32> = u_xlat48;
        let x_1195 : f32 = u_xlat3.z;
        txVec6 = vec3<f32>(x_1193.x, x_1193.y, x_1195);
        let x_1202 : vec3<f32> = txVec6;
        let x_1204 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1202.xy, x_1202.z);
        u_xlat27 = x_1204;
        let x_1206 : f32 = u_xlat14.z;
        let x_1207 : f32 = u_xlat27;
        let x_1210 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1206 * x_1207) + x_1210);
        let x_1214 : vec4<f32> = u_xlat10;
        let x_1215 : vec2<f32> = vec2<f32>(x_1214.x, x_1214.y);
        let x_1217 : f32 = u_xlat3.z;
        txVec7 = vec3<f32>(x_1215.x, x_1215.y, x_1217);
        let x_1224 : vec3<f32> = txVec7;
        let x_1226 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1224.xy, x_1224.z);
        u_xlat27 = x_1226;
        let x_1228 : f32 = u_xlat14.w;
        let x_1229 : f32 = u_xlat27;
        let x_1232 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1228 * x_1229) + x_1232);
        let x_1236 : vec4<f32> = u_xlat12;
        let x_1237 : vec2<f32> = vec2<f32>(x_1236.x, x_1236.y);
        let x_1239 : f32 = u_xlat3.z;
        txVec8 = vec3<f32>(x_1237.x, x_1237.y, x_1239);
        let x_1246 : vec3<f32> = txVec8;
        let x_1248 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1246.xy, x_1246.z);
        u_xlat27 = x_1248;
        let x_1250 : f32 = u_xlat15.x;
        let x_1251 : f32 = u_xlat27;
        let x_1254 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1250 * x_1251) + x_1254);
        let x_1258 : vec4<f32> = u_xlat12;
        let x_1259 : vec2<f32> = vec2<f32>(x_1258.z, x_1258.w);
        let x_1261 : f32 = u_xlat3.z;
        txVec9 = vec3<f32>(x_1259.x, x_1259.y, x_1261);
        let x_1268 : vec3<f32> = txVec9;
        let x_1270 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1268.xy, x_1268.z);
        u_xlat27 = x_1270;
        let x_1272 : f32 = u_xlat15.y;
        let x_1273 : f32 = u_xlat27;
        let x_1276 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1272 * x_1273) + x_1276);
        let x_1280 : vec4<f32> = u_xlat10;
        let x_1281 : vec2<f32> = vec2<f32>(x_1280.z, x_1280.w);
        let x_1283 : f32 = u_xlat3.z;
        txVec10 = vec3<f32>(x_1281.x, x_1281.y, x_1283);
        let x_1290 : vec3<f32> = txVec10;
        let x_1292 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1290.xy, x_1290.z);
        u_xlat27 = x_1292;
        let x_1294 : f32 = u_xlat15.z;
        let x_1295 : f32 = u_xlat27;
        let x_1298 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1294 * x_1295) + x_1298);
        let x_1302 : vec4<f32> = u_xlat9;
        let x_1303 : vec2<f32> = vec2<f32>(x_1302.x, x_1302.y);
        let x_1305 : f32 = u_xlat3.z;
        txVec11 = vec3<f32>(x_1303.x, x_1303.y, x_1305);
        let x_1312 : vec3<f32> = txVec11;
        let x_1314 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1312.xy, x_1312.z);
        u_xlat27 = x_1314;
        let x_1316 : f32 = u_xlat15.w;
        let x_1317 : f32 = u_xlat27;
        let x_1320 : f32 = u_xlat6.x;
        u_xlat6.x = ((x_1316 * x_1317) + x_1320);
        let x_1324 : vec4<f32> = u_xlat9;
        let x_1325 : vec2<f32> = vec2<f32>(x_1324.z, x_1324.w);
        let x_1327 : f32 = u_xlat3.z;
        txVec12 = vec3<f32>(x_1325.x, x_1325.y, x_1327);
        let x_1334 : vec3<f32> = txVec12;
        let x_1336 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1334.xy, x_1334.z);
        u_xlat27 = x_1336;
        let x_1337 : f32 = u_xlat68;
        let x_1338 : f32 = u_xlat27;
        let x_1341 : f32 = u_xlat6.x;
        u_xlat66 = ((x_1337 * x_1338) + x_1341);
      } else {
        let x_1344 : vec4<f32> = u_xlat3;
        let x_1347 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1350 : vec2<f32> = ((vec2<f32>(x_1344.x, x_1344.y) * vec2<f32>(x_1347.z, x_1347.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1351 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1350.x, x_1350.y, x_1351.z, x_1351.w);
        let x_1353 : vec4<f32> = u_xlat6;
        let x_1355 : vec2<f32> = floor(vec2<f32>(x_1353.x, x_1353.y));
        let x_1356 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1355.x, x_1355.y, x_1356.z, x_1356.w);
        let x_1358 : vec4<f32> = u_xlat3;
        let x_1361 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1364 : vec4<f32> = u_xlat6;
        u_xlat48 = ((vec2<f32>(x_1358.x, x_1358.y) * vec2<f32>(x_1361.z, x_1361.w)) + -(vec2<f32>(x_1364.x, x_1364.y)));
        let x_1368 : vec2<f32> = u_xlat48;
        u_xlat8 = (vec4<f32>(x_1368.x, x_1368.x, x_1368.y, x_1368.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1371 : vec4<f32> = u_xlat8;
        let x_1373 : vec4<f32> = u_xlat8;
        u_xlat9 = (vec4<f32>(x_1371.x, x_1371.x, x_1371.z, x_1371.z) * vec4<f32>(x_1373.x, x_1373.x, x_1373.z, x_1373.z));
        let x_1376 : vec4<f32> = u_xlat9;
        let x_1380 : vec2<f32> = (vec2<f32>(x_1376.y, x_1376.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1381 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1381.x, x_1380.x, x_1381.z, x_1380.y);
        let x_1383 : vec4<f32> = u_xlat9;
        let x_1386 : vec2<f32> = u_xlat48;
        let x_1388 : vec2<f32> = ((vec2<f32>(x_1383.x, x_1383.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1386));
        let x_1389 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1388.x, x_1389.y, x_1388.y, x_1389.w);
        let x_1391 : vec2<f32> = u_xlat48;
        let x_1393 : vec2<f32> = (-(x_1391) + vec2<f32>(1.0f, 1.0f));
        let x_1394 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1393.x, x_1393.y, x_1394.z, x_1394.w);
        let x_1396 : vec2<f32> = u_xlat48;
        u_xlat51 = min(x_1396, vec2<f32>(0.0f, 0.0f));
        let x_1398 : vec2<f32> = u_xlat51;
        let x_1400 : vec2<f32> = u_xlat51;
        let x_1402 : vec4<f32> = u_xlat9;
        let x_1404 : vec2<f32> = ((-(x_1398) * x_1400) + vec2<f32>(x_1402.x, x_1402.y));
        let x_1405 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1404.x, x_1404.y, x_1405.z, x_1405.w);
        let x_1407 : vec2<f32> = u_xlat48;
        u_xlat51 = max(x_1407, vec2<f32>(0.0f, 0.0f));
        let x_1410 : vec2<f32> = u_xlat51;
        let x_1412 : vec2<f32> = u_xlat51;
        let x_1414 : vec4<f32> = u_xlat8;
        let x_1416 : vec2<f32> = ((-(x_1410) * x_1412) + vec2<f32>(x_1414.y, x_1414.w));
        let x_1417 : vec3<f32> = u_xlat29;
        u_xlat29 = vec3<f32>(x_1416.x, x_1417.y, x_1416.y);
        let x_1419 : vec4<f32> = u_xlat9;
        let x_1421 : vec2<f32> = (vec2<f32>(x_1419.x, x_1419.y) + vec2<f32>(2.0f, 2.0f));
        let x_1422 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1421.x, x_1421.y, x_1422.z, x_1422.w);
        let x_1424 : vec3<f32> = u_xlat29;
        let x_1426 : vec2<f32> = (vec2<f32>(x_1424.x, x_1424.z) + vec2<f32>(2.0f, 2.0f));
        let x_1427 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1427.x, x_1426.x, x_1427.z, x_1426.y);
        let x_1430 : f32 = u_xlat8.y;
        u_xlat11.z = (x_1430 * 0.081632003f);
        let x_1434 : vec4<f32> = u_xlat8;
        let x_1437 : vec3<f32> = (vec3<f32>(x_1434.z, x_1434.x, x_1434.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1438 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1437.x, x_1437.y, x_1437.z, x_1438.w);
        let x_1440 : vec4<f32> = u_xlat9;
        let x_1443 : vec2<f32> = (vec2<f32>(x_1440.x, x_1440.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1444 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1443.x, x_1443.y, x_1444.z, x_1444.w);
        let x_1447 : f32 = u_xlat12.y;
        u_xlat11.x = x_1447;
        let x_1449 : vec2<f32> = u_xlat48;
        let x_1456 : vec2<f32> = ((vec2<f32>(x_1449.x, x_1449.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1457 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1457.x, x_1456.x, x_1457.z, x_1456.y);
        let x_1459 : vec2<f32> = u_xlat48;
        let x_1463 : vec2<f32> = ((vec2<f32>(x_1459.x, x_1459.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1464 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1463.x, x_1464.y, x_1463.y, x_1464.w);
        let x_1467 : f32 = u_xlat8.x;
        u_xlat9.y = x_1467;
        let x_1470 : f32 = u_xlat10.y;
        u_xlat9.w = x_1470;
        let x_1472 : vec4<f32> = u_xlat9;
        let x_1473 : vec4<f32> = u_xlat11;
        u_xlat11 = (x_1472 + x_1473);
        let x_1475 : vec2<f32> = u_xlat48;
        let x_1478 : vec2<f32> = ((vec2<f32>(x_1475.y, x_1475.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1479 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1479.x, x_1478.x, x_1479.z, x_1478.y);
        let x_1481 : vec2<f32> = u_xlat48;
        let x_1484 : vec2<f32> = ((vec2<f32>(x_1481.y, x_1481.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1485 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1484.x, x_1485.y, x_1484.y, x_1485.w);
        let x_1488 : f32 = u_xlat8.y;
        u_xlat10.y = x_1488;
        let x_1490 : vec4<f32> = u_xlat10;
        let x_1491 : vec4<f32> = u_xlat12;
        u_xlat8 = (x_1490 + x_1491);
        let x_1493 : vec4<f32> = u_xlat9;
        let x_1494 : vec4<f32> = u_xlat11;
        u_xlat9 = (x_1493 / x_1494);
        let x_1496 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1496 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1502 : vec4<f32> = u_xlat10;
        let x_1503 : vec4<f32> = u_xlat8;
        u_xlat10 = (x_1502 / x_1503);
        let x_1505 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1505 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1507 : vec4<f32> = u_xlat9;
        let x_1510 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1507.w, x_1507.x, x_1507.y, x_1507.z) * vec4<f32>(x_1510.x, x_1510.x, x_1510.x, x_1510.x));
        let x_1513 : vec4<f32> = u_xlat10;
        let x_1516 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        u_xlat10 = (vec4<f32>(x_1513.x, x_1513.w, x_1513.y, x_1513.z) * vec4<f32>(x_1516.y, x_1516.y, x_1516.y, x_1516.y));
        let x_1519 : vec4<f32> = u_xlat9;
        let x_1520 : vec3<f32> = vec3<f32>(x_1519.y, x_1519.z, x_1519.w);
        let x_1521 : vec4<f32> = u_xlat12;
        u_xlat12 = vec4<f32>(x_1520.x, x_1521.y, x_1520.y, x_1520.z);
        let x_1524 : f32 = u_xlat10.x;
        u_xlat12.y = x_1524;
        let x_1526 : vec4<f32> = u_xlat6;
        let x_1529 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1532 : vec4<f32> = u_xlat12;
        u_xlat13 = ((vec4<f32>(x_1526.x, x_1526.y, x_1526.x, x_1526.y) * vec4<f32>(x_1529.x, x_1529.y, x_1529.x, x_1529.y)) + vec4<f32>(x_1532.x, x_1532.y, x_1532.z, x_1532.y));
        let x_1535 : vec4<f32> = u_xlat6;
        let x_1538 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1541 : vec4<f32> = u_xlat12;
        u_xlat48 = ((vec2<f32>(x_1535.x, x_1535.y) * vec2<f32>(x_1538.x, x_1538.y)) + vec2<f32>(x_1541.w, x_1541.y));
        let x_1545 : f32 = u_xlat12.y;
        u_xlat9.y = x_1545;
        let x_1548 : f32 = u_xlat10.z;
        u_xlat12.y = x_1548;
        let x_1550 : vec4<f32> = u_xlat6;
        let x_1553 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1556 : vec4<f32> = u_xlat12;
        u_xlat14 = ((vec4<f32>(x_1550.x, x_1550.y, x_1550.x, x_1550.y) * vec4<f32>(x_1553.x, x_1553.y, x_1553.x, x_1553.y)) + vec4<f32>(x_1556.x, x_1556.y, x_1556.z, x_1556.y));
        let x_1559 : vec4<f32> = u_xlat6;
        let x_1562 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1565 : vec4<f32> = u_xlat12;
        let x_1567 : vec2<f32> = ((vec2<f32>(x_1559.x, x_1559.y) * vec2<f32>(x_1562.x, x_1562.y)) + vec2<f32>(x_1565.w, x_1565.y));
        let x_1568 : vec4<f32> = u_xlat15;
        u_xlat15 = vec4<f32>(x_1567.x, x_1567.y, x_1568.z, x_1568.w);
        let x_1571 : f32 = u_xlat12.y;
        u_xlat9.z = x_1571;
        let x_1574 : vec4<f32> = u_xlat6;
        let x_1577 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1580 : vec4<f32> = u_xlat9;
        u_xlat16 = ((vec4<f32>(x_1574.x, x_1574.y, x_1574.x, x_1574.y) * vec4<f32>(x_1577.x, x_1577.y, x_1577.x, x_1577.y)) + vec4<f32>(x_1580.x, x_1580.y, x_1580.x, x_1580.z));
        let x_1584 : f32 = u_xlat10.w;
        u_xlat12.y = x_1584;
        let x_1587 : vec4<f32> = u_xlat6;
        let x_1590 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1593 : vec4<f32> = u_xlat12;
        u_xlat17 = ((vec4<f32>(x_1587.x, x_1587.y, x_1587.x, x_1587.y) * vec4<f32>(x_1590.x, x_1590.y, x_1590.x, x_1590.y)) + vec4<f32>(x_1593.x, x_1593.y, x_1593.z, x_1593.y));
        let x_1597 : vec4<f32> = u_xlat6;
        let x_1600 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1603 : vec4<f32> = u_xlat12;
        u_xlat30 = ((vec2<f32>(x_1597.x, x_1597.y) * vec2<f32>(x_1600.x, x_1600.y)) + vec2<f32>(x_1603.w, x_1603.y));
        let x_1607 : f32 = u_xlat12.y;
        u_xlat9.w = x_1607;
        let x_1610 : vec4<f32> = u_xlat6;
        let x_1613 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1616 : vec4<f32> = u_xlat9;
        u_xlat57 = ((vec2<f32>(x_1610.x, x_1610.y) * vec2<f32>(x_1613.x, x_1613.y)) + vec2<f32>(x_1616.x, x_1616.w));
        let x_1619 : vec4<f32> = u_xlat12;
        let x_1620 : vec3<f32> = vec3<f32>(x_1619.x, x_1619.z, x_1619.w);
        let x_1621 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1620.x, x_1621.y, x_1620.y, x_1620.z);
        let x_1623 : vec4<f32> = u_xlat6;
        let x_1626 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1629 : vec4<f32> = u_xlat10;
        u_xlat12 = ((vec4<f32>(x_1623.x, x_1623.y, x_1623.x, x_1623.y) * vec4<f32>(x_1626.x, x_1626.y, x_1626.x, x_1626.y)) + vec4<f32>(x_1629.x, x_1629.y, x_1629.z, x_1629.y));
        let x_1633 : vec4<f32> = u_xlat6;
        let x_1636 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1639 : vec4<f32> = u_xlat10;
        u_xlat52 = ((vec2<f32>(x_1633.x, x_1633.y) * vec2<f32>(x_1636.x, x_1636.y)) + vec2<f32>(x_1639.w, x_1639.y));
        let x_1643 : f32 = u_xlat9.x;
        u_xlat10.x = x_1643;
        let x_1645 : vec4<f32> = u_xlat6;
        let x_1648 : vec4<f32> = x_436.x_MainLightShadowmapSize;
        let x_1651 : vec4<f32> = u_xlat10;
        let x_1653 : vec2<f32> = ((vec2<f32>(x_1645.x, x_1645.y) * vec2<f32>(x_1648.x, x_1648.y)) + vec2<f32>(x_1651.x, x_1651.y));
        let x_1654 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1653.x, x_1653.y, x_1654.z, x_1654.w);
        let x_1657 : vec4<f32> = u_xlat8;
        let x_1659 : vec4<f32> = u_xlat11;
        u_xlat18 = (vec4<f32>(x_1657.x, x_1657.x, x_1657.x, x_1657.x) * x_1659);
        let x_1662 : vec4<f32> = u_xlat8;
        let x_1664 : vec4<f32> = u_xlat11;
        u_xlat19 = (vec4<f32>(x_1662.y, x_1662.y, x_1662.y, x_1662.y) * x_1664);
        let x_1667 : vec4<f32> = u_xlat8;
        let x_1669 : vec4<f32> = u_xlat11;
        u_xlat20 = (vec4<f32>(x_1667.z, x_1667.z, x_1667.z, x_1667.z) * x_1669);
        let x_1671 : vec4<f32> = u_xlat8;
        let x_1673 : vec4<f32> = u_xlat11;
        u_xlat8 = (vec4<f32>(x_1671.w, x_1671.w, x_1671.w, x_1671.w) * x_1673);
        let x_1676 : vec4<f32> = u_xlat13;
        let x_1677 : vec2<f32> = vec2<f32>(x_1676.x, x_1676.y);
        let x_1679 : f32 = u_xlat3.z;
        txVec13 = vec3<f32>(x_1677.x, x_1677.y, x_1679);
        let x_1686 : vec3<f32> = txVec13;
        let x_1688 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1686.xy, x_1686.z);
        u_xlat68 = x_1688;
        let x_1690 : vec4<f32> = u_xlat13;
        let x_1691 : vec2<f32> = vec2<f32>(x_1690.z, x_1690.w);
        let x_1693 : f32 = u_xlat3.z;
        txVec14 = vec3<f32>(x_1691.x, x_1691.y, x_1693);
        let x_1701 : vec3<f32> = txVec14;
        let x_1703 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1701.xy, x_1701.z);
        u_xlat70 = x_1703;
        let x_1704 : f32 = u_xlat70;
        let x_1706 : f32 = u_xlat18.y;
        u_xlat70 = (x_1704 * x_1706);
        let x_1709 : f32 = u_xlat18.x;
        let x_1710 : f32 = u_xlat68;
        let x_1712 : f32 = u_xlat70;
        u_xlat68 = ((x_1709 * x_1710) + x_1712);
        let x_1715 : vec2<f32> = u_xlat48;
        let x_1717 : f32 = u_xlat3.z;
        txVec15 = vec3<f32>(x_1715.x, x_1715.y, x_1717);
        let x_1724 : vec3<f32> = txVec15;
        let x_1726 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1724.xy, x_1724.z);
        u_xlat48.x = x_1726;
        let x_1729 : f32 = u_xlat18.z;
        let x_1731 : f32 = u_xlat48.x;
        let x_1733 : f32 = u_xlat68;
        u_xlat68 = ((x_1729 * x_1731) + x_1733);
        let x_1736 : vec4<f32> = u_xlat16;
        let x_1737 : vec2<f32> = vec2<f32>(x_1736.x, x_1736.y);
        let x_1739 : f32 = u_xlat3.z;
        txVec16 = vec3<f32>(x_1737.x, x_1737.y, x_1739);
        let x_1746 : vec3<f32> = txVec16;
        let x_1748 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1746.xy, x_1746.z);
        u_xlat48.x = x_1748;
        let x_1751 : f32 = u_xlat18.w;
        let x_1753 : f32 = u_xlat48.x;
        let x_1755 : f32 = u_xlat68;
        u_xlat68 = ((x_1751 * x_1753) + x_1755);
        let x_1758 : vec4<f32> = u_xlat14;
        let x_1759 : vec2<f32> = vec2<f32>(x_1758.x, x_1758.y);
        let x_1761 : f32 = u_xlat3.z;
        txVec17 = vec3<f32>(x_1759.x, x_1759.y, x_1761);
        let x_1768 : vec3<f32> = txVec17;
        let x_1770 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1768.xy, x_1768.z);
        u_xlat48.x = x_1770;
        let x_1773 : f32 = u_xlat19.x;
        let x_1775 : f32 = u_xlat48.x;
        let x_1777 : f32 = u_xlat68;
        u_xlat68 = ((x_1773 * x_1775) + x_1777);
        let x_1780 : vec4<f32> = u_xlat14;
        let x_1781 : vec2<f32> = vec2<f32>(x_1780.z, x_1780.w);
        let x_1783 : f32 = u_xlat3.z;
        txVec18 = vec3<f32>(x_1781.x, x_1781.y, x_1783);
        let x_1790 : vec3<f32> = txVec18;
        let x_1792 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1790.xy, x_1790.z);
        u_xlat48.x = x_1792;
        let x_1795 : f32 = u_xlat19.y;
        let x_1797 : f32 = u_xlat48.x;
        let x_1799 : f32 = u_xlat68;
        u_xlat68 = ((x_1795 * x_1797) + x_1799);
        let x_1802 : vec4<f32> = u_xlat15;
        let x_1803 : vec2<f32> = vec2<f32>(x_1802.x, x_1802.y);
        let x_1805 : f32 = u_xlat3.z;
        txVec19 = vec3<f32>(x_1803.x, x_1803.y, x_1805);
        let x_1812 : vec3<f32> = txVec19;
        let x_1814 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1812.xy, x_1812.z);
        u_xlat48.x = x_1814;
        let x_1817 : f32 = u_xlat19.z;
        let x_1819 : f32 = u_xlat48.x;
        let x_1821 : f32 = u_xlat68;
        u_xlat68 = ((x_1817 * x_1819) + x_1821);
        let x_1824 : vec4<f32> = u_xlat16;
        let x_1825 : vec2<f32> = vec2<f32>(x_1824.z, x_1824.w);
        let x_1827 : f32 = u_xlat3.z;
        txVec20 = vec3<f32>(x_1825.x, x_1825.y, x_1827);
        let x_1834 : vec3<f32> = txVec20;
        let x_1836 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1834.xy, x_1834.z);
        u_xlat48.x = x_1836;
        let x_1839 : f32 = u_xlat19.w;
        let x_1841 : f32 = u_xlat48.x;
        let x_1843 : f32 = u_xlat68;
        u_xlat68 = ((x_1839 * x_1841) + x_1843);
        let x_1846 : vec4<f32> = u_xlat17;
        let x_1847 : vec2<f32> = vec2<f32>(x_1846.x, x_1846.y);
        let x_1849 : f32 = u_xlat3.z;
        txVec21 = vec3<f32>(x_1847.x, x_1847.y, x_1849);
        let x_1856 : vec3<f32> = txVec21;
        let x_1858 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1856.xy, x_1856.z);
        u_xlat48.x = x_1858;
        let x_1861 : f32 = u_xlat20.x;
        let x_1863 : f32 = u_xlat48.x;
        let x_1865 : f32 = u_xlat68;
        u_xlat68 = ((x_1861 * x_1863) + x_1865);
        let x_1868 : vec4<f32> = u_xlat17;
        let x_1869 : vec2<f32> = vec2<f32>(x_1868.z, x_1868.w);
        let x_1871 : f32 = u_xlat3.z;
        txVec22 = vec3<f32>(x_1869.x, x_1869.y, x_1871);
        let x_1878 : vec3<f32> = txVec22;
        let x_1880 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1878.xy, x_1878.z);
        u_xlat48.x = x_1880;
        let x_1883 : f32 = u_xlat20.y;
        let x_1885 : f32 = u_xlat48.x;
        let x_1887 : f32 = u_xlat68;
        u_xlat68 = ((x_1883 * x_1885) + x_1887);
        let x_1890 : vec2<f32> = u_xlat30;
        let x_1892 : f32 = u_xlat3.z;
        txVec23 = vec3<f32>(x_1890.x, x_1890.y, x_1892);
        let x_1899 : vec3<f32> = txVec23;
        let x_1901 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1899.xy, x_1899.z);
        u_xlat48.x = x_1901;
        let x_1904 : f32 = u_xlat20.z;
        let x_1906 : f32 = u_xlat48.x;
        let x_1908 : f32 = u_xlat68;
        u_xlat68 = ((x_1904 * x_1906) + x_1908);
        let x_1911 : vec2<f32> = u_xlat57;
        let x_1913 : f32 = u_xlat3.z;
        txVec24 = vec3<f32>(x_1911.x, x_1911.y, x_1913);
        let x_1920 : vec3<f32> = txVec24;
        let x_1922 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1920.xy, x_1920.z);
        u_xlat48.x = x_1922;
        let x_1925 : f32 = u_xlat20.w;
        let x_1927 : f32 = u_xlat48.x;
        let x_1929 : f32 = u_xlat68;
        u_xlat68 = ((x_1925 * x_1927) + x_1929);
        let x_1932 : vec4<f32> = u_xlat12;
        let x_1933 : vec2<f32> = vec2<f32>(x_1932.x, x_1932.y);
        let x_1935 : f32 = u_xlat3.z;
        txVec25 = vec3<f32>(x_1933.x, x_1933.y, x_1935);
        let x_1942 : vec3<f32> = txVec25;
        let x_1944 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1942.xy, x_1942.z);
        u_xlat48.x = x_1944;
        let x_1947 : f32 = u_xlat8.x;
        let x_1949 : f32 = u_xlat48.x;
        let x_1951 : f32 = u_xlat68;
        u_xlat68 = ((x_1947 * x_1949) + x_1951);
        let x_1954 : vec4<f32> = u_xlat12;
        let x_1955 : vec2<f32> = vec2<f32>(x_1954.z, x_1954.w);
        let x_1957 : f32 = u_xlat3.z;
        txVec26 = vec3<f32>(x_1955.x, x_1955.y, x_1957);
        let x_1964 : vec3<f32> = txVec26;
        let x_1966 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1964.xy, x_1964.z);
        u_xlat48.x = x_1966;
        let x_1969 : f32 = u_xlat8.y;
        let x_1971 : f32 = u_xlat48.x;
        let x_1973 : f32 = u_xlat68;
        u_xlat68 = ((x_1969 * x_1971) + x_1973);
        let x_1976 : vec2<f32> = u_xlat52;
        let x_1978 : f32 = u_xlat3.z;
        txVec27 = vec3<f32>(x_1976.x, x_1976.y, x_1978);
        let x_1985 : vec3<f32> = txVec27;
        let x_1987 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1985.xy, x_1985.z);
        u_xlat48.x = x_1987;
        let x_1990 : f32 = u_xlat8.z;
        let x_1992 : f32 = u_xlat48.x;
        let x_1994 : f32 = u_xlat68;
        u_xlat68 = ((x_1990 * x_1992) + x_1994);
        let x_1997 : vec4<f32> = u_xlat6;
        let x_1998 : vec2<f32> = vec2<f32>(x_1997.x, x_1997.y);
        let x_2000 : f32 = u_xlat3.z;
        txVec28 = vec3<f32>(x_1998.x, x_1998.y, x_2000);
        let x_2007 : vec3<f32> = txVec28;
        let x_2009 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2007.xy, x_2007.z);
        u_xlat6.x = x_2009;
        let x_2012 : f32 = u_xlat8.w;
        let x_2014 : f32 = u_xlat6.x;
        let x_2016 : f32 = u_xlat68;
        u_xlat66 = ((x_2012 * x_2014) + x_2016);
      }
    }
  } else {
    let x_2020 : vec4<f32> = u_xlat3;
    let x_2021 : vec2<f32> = vec2<f32>(x_2020.x, x_2020.y);
    let x_2023 : f32 = u_xlat3.z;
    txVec29 = vec3<f32>(x_2021.x, x_2021.y, x_2023);
    let x_2030 : vec3<f32> = txVec29;
    let x_2032 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_2030.xy, x_2030.z);
    u_xlat66 = x_2032;
  }
  let x_2034 : f32 = x_436.x_MainLightShadowParams.x;
  u_xlat3.x = (-(x_2034) + 1.0f);
  let x_2038 : f32 = u_xlat66;
  let x_2040 : f32 = x_436.x_MainLightShadowParams.x;
  let x_2043 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2038 * x_2040) + x_2043);
  let x_2050 : f32 = u_xlat3.z;
  u_xlatb24.x = (0.0f >= x_2050);
  let x_2055 : f32 = u_xlat3.z;
  u_xlatb45 = (x_2055 >= 1.0f);
  let x_2057 : bool = u_xlatb45;
  let x_2059 : bool = u_xlatb24.x;
  u_xlatb24.x = (x_2057 | x_2059);
  let x_2063 : bool = u_xlatb24.x;
  if (x_2063) {
    x_2064 = 1.0f;
  } else {
    let x_2069 : f32 = u_xlat3.x;
    x_2064 = x_2069;
  }
  let x_2070 : f32 = x_2064;
  u_xlat3.x = x_2070;
  let x_2073 : vec3<f32> = vs_INTERP0;
  let x_2075 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  u_xlat24 = (x_2073 + -(x_2075));
  let x_2078 : vec3<f32> = u_xlat24;
  let x_2079 : vec3<f32> = u_xlat24;
  u_xlat24.x = dot(x_2078, x_2079);
  let x_2083 : f32 = u_xlat24.x;
  let x_2085 : f32 = x_436.x_MainLightShadowParams.z;
  let x_2088 : f32 = x_436.x_MainLightShadowParams.w;
  u_xlat24.x = ((x_2083 * x_2085) + x_2088);
  let x_2092 : f32 = u_xlat24.x;
  u_xlat24.x = clamp(x_2092, 0.0f, 1.0f);
  let x_2097 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_2097) + 1.0f);
  let x_2101 : f32 = u_xlat24.x;
  let x_2102 : f32 = u_xlat45;
  let x_2105 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_2101 * x_2102) + x_2105);
  let x_2114 : f32 = x_2112.x_MainLightCookieTextureFormat;
  u_xlatb24.x = !((x_2114 == -1.0f));
  let x_2118 : bool = u_xlatb24.x;
  if (x_2118) {
    let x_2121 : vec3<f32> = vs_INTERP0;
    let x_2124 : vec4<f32> = x_2112.x_MainLightWorldToLight[1i];
    let x_2126 : vec2<f32> = (vec2<f32>(x_2121.y, x_2121.y) * vec2<f32>(x_2124.x, x_2124.y));
    let x_2127 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2126.x, x_2126.y, x_2127.z);
    let x_2130 : vec4<f32> = x_2112.x_MainLightWorldToLight[0i];
    let x_2132 : vec3<f32> = vs_INTERP0;
    let x_2135 : vec3<f32> = u_xlat24;
    let x_2137 : vec2<f32> = ((vec2<f32>(x_2130.x, x_2130.y) * vec2<f32>(x_2132.x, x_2132.x)) + vec2<f32>(x_2135.x, x_2135.y));
    let x_2138 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2137.x, x_2137.y, x_2138.z);
    let x_2141 : vec4<f32> = x_2112.x_MainLightWorldToLight[2i];
    let x_2143 : vec3<f32> = vs_INTERP0;
    let x_2146 : vec3<f32> = u_xlat24;
    let x_2148 : vec2<f32> = ((vec2<f32>(x_2141.x, x_2141.y) * vec2<f32>(x_2143.z, x_2143.z)) + vec2<f32>(x_2146.x, x_2146.y));
    let x_2149 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2148.x, x_2148.y, x_2149.z);
    let x_2151 : vec3<f32> = u_xlat24;
    let x_2154 : vec4<f32> = x_2112.x_MainLightWorldToLight[3i];
    let x_2156 : vec2<f32> = (vec2<f32>(x_2151.x, x_2151.y) + vec2<f32>(x_2154.x, x_2154.y));
    let x_2157 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2156.x, x_2156.y, x_2157.z);
    let x_2159 : vec3<f32> = u_xlat24;
    let x_2162 : vec2<f32> = ((vec2<f32>(x_2159.x, x_2159.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_2163 : vec3<f32> = u_xlat24;
    u_xlat24 = vec3<f32>(x_2162.x, x_2162.y, x_2163.z);
    let x_2170 : vec3<f32> = u_xlat24;
    let x_2173 : f32 = x_44.x_GlobalMipBias.x;
    let x_2174 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_2170.x, x_2170.y), x_2173);
    u_xlat6 = x_2174;
    let x_2176 : f32 = x_2112.x_MainLightCookieTextureFormat;
    let x_2178 : f32 = x_2112.x_MainLightCookieTextureFormat;
    let x_2180 : f32 = x_2112.x_MainLightCookieTextureFormat;
    let x_2182 : f32 = x_2112.x_MainLightCookieTextureFormat;
    let x_2183 : vec4<f32> = vec4<f32>(x_2176, x_2178, x_2180, x_2182);
    let x_2190 : vec4<bool> = (vec4<f32>(x_2183.x, x_2183.y, x_2183.z, x_2183.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb24 = vec2<bool>(x_2190.x, x_2190.y);
    let x_2193 : bool = u_xlatb24.y;
    if (x_2193) {
      let x_2198 : f32 = u_xlat6.w;
      x_2194 = x_2198;
    } else {
      let x_2201 : f32 = u_xlat6.x;
      x_2194 = x_2201;
    }
    let x_2202 : f32 = x_2194;
    u_xlat45 = x_2202;
    let x_2204 : bool = u_xlatb24.x;
    if (x_2204) {
      let x_2208 : vec4<f32> = u_xlat6;
      x_2205 = vec3<f32>(x_2208.x, x_2208.y, x_2208.z);
    } else {
      let x_2211 : f32 = u_xlat45;
      x_2205 = vec3<f32>(x_2211, x_2211, x_2211);
    }
    let x_2213 : vec3<f32> = x_2205;
    u_xlat24 = x_2213;
  } else {
    u_xlat24.x = 1.0f;
    u_xlat24.y = 1.0f;
    u_xlat24.z = 1.0f;
  }
  let x_2218 : vec3<f32> = u_xlat24;
  let x_2220 : vec4<f32> = x_44.x_MainLightColor;
  u_xlat24 = (x_2218 * vec3<f32>(x_2220.x, x_2220.y, x_2220.z));
  let x_2223 : f32 = u_xlat67;
  let x_2225 : vec3<f32> = u_xlat24;
  u_xlat24 = (vec3<f32>(x_2223, x_2223, x_2223) * x_2225);
  let x_2227 : vec3<f32> = u_xlat4;
  let x_2229 : vec3<f32> = u_xlat22;
  u_xlat68 = dot(-(x_2227), x_2229);
  let x_2231 : f32 = u_xlat68;
  let x_2232 : f32 = u_xlat68;
  u_xlat68 = (x_2231 + x_2232);
  let x_2234 : vec3<f32> = u_xlat22;
  let x_2235 : f32 = u_xlat68;
  let x_2239 : vec3<f32> = u_xlat4;
  let x_2241 : vec3<f32> = ((x_2234 * -(vec3<f32>(x_2235, x_2235, x_2235))) + -(x_2239));
  let x_2242 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2241.x, x_2241.y, x_2241.z, x_2242.w);
  let x_2244 : vec3<f32> = u_xlat22;
  let x_2245 : vec3<f32> = u_xlat4;
  u_xlat68 = dot(x_2244, x_2245);
  let x_2247 : f32 = u_xlat68;
  u_xlat68 = clamp(x_2247, 0.0f, 1.0f);
  let x_2249 : f32 = u_xlat68;
  u_xlat68 = (-(x_2249) + 1.0f);
  let x_2252 : f32 = u_xlat68;
  let x_2253 : f32 = u_xlat68;
  u_xlat68 = (x_2252 * x_2253);
  let x_2255 : f32 = u_xlat68;
  let x_2256 : f32 = u_xlat68;
  u_xlat68 = (x_2255 * x_2256);
  let x_2260 : f32 = u_xlat0.x;
  u_xlat69 = ((-(x_2260) * 0.699999988f) + 1.700000048f);
  let x_2267 : f32 = u_xlat0.x;
  let x_2268 : f32 = u_xlat69;
  u_xlat0.x = (x_2267 * x_2268);
  let x_2272 : f32 = u_xlat0.x;
  u_xlat0.x = (x_2272 * 6.0f);
  let x_2284 : vec4<f32> = u_xlat6;
  let x_2287 : f32 = u_xlat0.x;
  let x_2288 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2284.x, x_2284.y, x_2284.z), x_2287);
  u_xlat6 = x_2288;
  let x_2290 : f32 = u_xlat6.w;
  u_xlat0.x = (x_2290 + -1.0f);
  let x_2294 : f32 = x_282.unity_SpecCube0_HDR.w;
  let x_2296 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_2294 * x_2296) + 1.0f);
  let x_2301 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_2301, 0.0f);
  let x_2305 : f32 = u_xlat0.x;
  u_xlat0.x = log2(x_2305);
  let x_2309 : f32 = u_xlat0.x;
  let x_2311 : f32 = x_282.unity_SpecCube0_HDR.y;
  u_xlat0.x = (x_2309 * x_2311);
  let x_2315 : f32 = u_xlat0.x;
  u_xlat0.x = exp2(x_2315);
  let x_2319 : f32 = u_xlat0.x;
  let x_2321 : f32 = x_282.unity_SpecCube0_HDR.x;
  u_xlat0.x = (x_2319 * x_2321);
  let x_2324 : vec4<f32> = u_xlat6;
  let x_2326 : vec4<f32> = u_xlat0;
  let x_2328 : vec3<f32> = (vec3<f32>(x_2324.x, x_2324.y, x_2324.z) * vec3<f32>(x_2326.x, x_2326.x, x_2326.x));
  let x_2329 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2328.x, x_2328.y, x_2328.z, x_2329.w);
  let x_2331 : vec2<f32> = u_xlat21;
  let x_2333 : vec2<f32> = u_xlat21;
  let x_2337 : vec2<f32> = ((vec2<f32>(x_2331.x, x_2331.x) * vec2<f32>(x_2333.x, x_2333.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_2338 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2337.x, x_2337.y, x_2338.z, x_2338.w);
  let x_2341 : f32 = u_xlat0.y;
  u_xlat21.x = (1.0f / x_2341);
  let x_2344 : vec3<f32> = u_xlat2;
  let x_2346 : f32 = u_xlat42;
  let x_2348 : vec3<f32> = (-(x_2344) + vec3<f32>(x_2346, x_2346, x_2346));
  let x_2349 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2348.x, x_2348.y, x_2348.z, x_2349.w);
  let x_2351 : f32 = u_xlat68;
  let x_2353 : vec4<f32> = u_xlat8;
  let x_2356 : vec3<f32> = u_xlat2;
  let x_2357 : vec3<f32> = ((vec3<f32>(x_2351, x_2351, x_2351) * vec3<f32>(x_2353.x, x_2353.y, x_2353.z)) + x_2356);
  let x_2358 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2357.x, x_2357.y, x_2357.z, x_2358.w);
  let x_2360 : vec2<f32> = u_xlat21;
  let x_2362 : vec4<f32> = u_xlat8;
  let x_2364 : vec3<f32> = (vec3<f32>(x_2360.x, x_2360.x, x_2360.x) * vec3<f32>(x_2362.x, x_2362.y, x_2362.z));
  let x_2365 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2364.x, x_2364.y, x_2364.z, x_2365.w);
  let x_2367 : vec4<f32> = u_xlat6;
  let x_2369 : vec4<f32> = u_xlat8;
  let x_2371 : vec3<f32> = (vec3<f32>(x_2367.x, x_2367.y, x_2367.z) * vec3<f32>(x_2369.x, x_2369.y, x_2369.z));
  let x_2372 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2371.x, x_2371.y, x_2371.z, x_2372.w);
  let x_2374 : vec4<f32> = u_xlat5;
  let x_2376 : vec3<f32> = u_xlat7;
  let x_2378 : vec4<f32> = u_xlat6;
  let x_2380 : vec3<f32> = ((vec3<f32>(x_2374.x, x_2374.y, x_2374.z) * x_2376) + vec3<f32>(x_2378.x, x_2378.y, x_2378.z));
  let x_2381 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_2380.x, x_2380.y, x_2380.z, x_2381.w);
  let x_2384 : f32 = u_xlat3.x;
  let x_2386 : f32 = x_282.unity_LightData.z;
  u_xlat21.x = (x_2384 * x_2386);
  let x_2389 : vec3<f32> = u_xlat22;
  let x_2391 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat42 = dot(x_2389, vec3<f32>(x_2391.x, x_2391.y, x_2391.z));
  let x_2394 : f32 = u_xlat42;
  u_xlat42 = clamp(x_2394, 0.0f, 1.0f);
  let x_2396 : f32 = u_xlat42;
  let x_2398 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2396 * x_2398);
  let x_2401 : vec2<f32> = u_xlat21;
  let x_2403 : vec3<f32> = u_xlat24;
  let x_2404 : vec3<f32> = (vec3<f32>(x_2401.x, x_2401.x, x_2401.x) * x_2403);
  let x_2405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2404.x, x_2404.y, x_2404.z, x_2405.w);
  let x_2407 : vec3<f32> = u_xlat4;
  let x_2409 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2411 : vec3<f32> = (x_2407 + vec3<f32>(x_2409.x, x_2409.y, x_2409.z));
  let x_2412 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2411.x, x_2411.y, x_2411.z, x_2412.w);
  let x_2414 : vec4<f32> = u_xlat6;
  let x_2416 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(vec3<f32>(x_2414.x, x_2414.y, x_2414.z), vec3<f32>(x_2416.x, x_2416.y, x_2416.z));
  let x_2421 : f32 = u_xlat21.x;
  u_xlat21.x = max(x_2421, 1.17549435e-37f);
  let x_2426 : f32 = u_xlat21.x;
  u_xlat21.x = inverseSqrt(x_2426);
  let x_2429 : vec2<f32> = u_xlat21;
  let x_2431 : vec4<f32> = u_xlat6;
  let x_2433 : vec3<f32> = (vec3<f32>(x_2429.x, x_2429.x, x_2429.x) * vec3<f32>(x_2431.x, x_2431.y, x_2431.z));
  let x_2434 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2433.x, x_2433.y, x_2433.z, x_2434.w);
  let x_2436 : vec3<f32> = u_xlat22;
  let x_2437 : vec4<f32> = u_xlat6;
  u_xlat21.x = dot(x_2436, vec3<f32>(x_2437.x, x_2437.y, x_2437.z));
  let x_2442 : f32 = u_xlat21.x;
  u_xlat21.x = clamp(x_2442, 0.0f, 1.0f);
  let x_2446 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2448 : vec4<f32> = u_xlat6;
  u_xlat21.y = dot(vec3<f32>(x_2446.x, x_2446.y, x_2446.z), vec3<f32>(x_2448.x, x_2448.y, x_2448.z));
  let x_2453 : f32 = u_xlat21.y;
  u_xlat21.y = clamp(x_2453, 0.0f, 1.0f);
  let x_2456 : vec2<f32> = u_xlat21;
  let x_2457 : vec2<f32> = u_xlat21;
  u_xlat21 = (x_2456 * x_2457);
  let x_2460 : f32 = u_xlat21.x;
  let x_2462 : f32 = u_xlat0.x;
  u_xlat21.x = ((x_2460 * x_2462) + 1.000010014f);
  let x_2468 : f32 = u_xlat21.x;
  let x_2470 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2468 * x_2470);
  let x_2474 : f32 = u_xlat21.y;
  u_xlat42 = max(x_2474, 0.100000001f);
  let x_2477 : f32 = u_xlat42;
  let x_2479 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2477 * x_2479);
  let x_2482 : f32 = u_xlat65;
  let x_2484 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2482 * x_2484);
  let x_2488 : f32 = u_xlat1.x;
  let x_2490 : f32 = u_xlat21.x;
  u_xlat21.x = (x_2488 / x_2490);
  let x_2493 : vec3<f32> = u_xlat2;
  let x_2494 : vec2<f32> = u_xlat21;
  let x_2497 : vec3<f32> = u_xlat7;
  let x_2498 : vec3<f32> = ((x_2493 * vec3<f32>(x_2494.x, x_2494.x, x_2494.x)) + x_2497);
  let x_2499 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2498.x, x_2498.y, x_2498.z, x_2499.w);
  let x_2501 : vec4<f32> = u_xlat3;
  let x_2503 : vec4<f32> = u_xlat6;
  let x_2505 : vec3<f32> = (vec3<f32>(x_2501.x, x_2501.y, x_2501.z) * vec3<f32>(x_2503.x, x_2503.y, x_2503.z));
  let x_2506 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2505.x, x_2505.y, x_2505.z, x_2506.w);
  let x_2509 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2511 : f32 = x_282.unity_LightData.y;
  u_xlat21.x = min(x_2509, x_2511);
  let x_2515 : f32 = u_xlat21.x;
  u_xlatu21 = bitcast<u32>(i32(x_2515));
  let x_2520 : f32 = x_2112.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2522 : f32 = x_2112.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2524 : f32 = x_2112.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2526 : f32 = x_2112.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2527 : vec4<f32> = vec4<f32>(x_2520, x_2522, x_2524, x_2526);
  let x_2533 : vec4<bool> = (vec4<f32>(x_2527.x, x_2527.y, x_2527.z, x_2527.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2533.x, x_2533.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2544 : u32 = u_xlatu_loop_1;
    let x_2545 : u32 = u_xlatu21;
    if ((x_2544 < x_2545)) {
    } else {
      break;
    }
    let x_2548 : u32 = u_xlatu_loop_1;
    u_xlatu66 = (x_2548 >> 2u);
    let x_2551 : u32 = u_xlatu_loop_1;
    u_xlati68 = bitcast<i32>((x_2551 & 3u));
    let x_2554 : u32 = u_xlatu66;
    let x_2557 : vec4<f32> = x_282.unity_LightIndices[bitcast<i32>(x_2554)];
    let x_2567 : i32 = u_xlati68;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2572 : vec4<u32> = indexable[x_2567];
    u_xlat66 = dot(x_2557, bitcast<vec4<f32>>(x_2572));
    let x_2575 : f32 = u_xlat66;
    u_xlatu66 = bitcast<u32>(i32(x_2575));
    let x_2578 : vec3<f32> = vs_INTERP0;
    let x_2590 : u32 = u_xlatu66;
    let x_2593 : vec4<f32> = x_2589.x_AdditionalLightsPosition[bitcast<i32>(x_2590)];
    let x_2596 : u32 = u_xlatu66;
    let x_2599 : vec4<f32> = x_2589.x_AdditionalLightsPosition[bitcast<i32>(x_2596)];
    let x_2601 : vec3<f32> = ((-(x_2578) * vec3<f32>(x_2593.w, x_2593.w, x_2593.w)) + vec3<f32>(x_2599.x, x_2599.y, x_2599.z));
    let x_2602 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_2601.x, x_2601.y, x_2601.z, x_2602.w);
    let x_2604 : vec4<f32> = u_xlat9;
    let x_2606 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_2604.x, x_2604.y, x_2604.z), vec3<f32>(x_2606.x, x_2606.y, x_2606.z));
    let x_2609 : f32 = u_xlat68;
    u_xlat68 = max(x_2609, 6.10351562e-05f);
    let x_2612 : f32 = u_xlat68;
    u_xlat48.x = inverseSqrt(x_2612);
    let x_2615 : vec2<f32> = u_xlat48;
    let x_2617 : vec4<f32> = u_xlat9;
    let x_2619 : vec3<f32> = (vec3<f32>(x_2615.x, x_2615.x, x_2615.x) * vec3<f32>(x_2617.x, x_2617.y, x_2617.z));
    let x_2620 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2619.x, x_2619.y, x_2619.z, x_2620.w);
    let x_2622 : f32 = u_xlat68;
    u_xlat69 = (1.0f / x_2622);
    let x_2624 : f32 = u_xlat68;
    let x_2625 : u32 = u_xlatu66;
    let x_2628 : f32 = x_2589.x_AdditionalLightsAttenuation[bitcast<i32>(x_2625)].x;
    u_xlat68 = (x_2624 * x_2628);
    let x_2630 : f32 = u_xlat68;
    let x_2632 : f32 = u_xlat68;
    u_xlat68 = ((-(x_2630) * x_2632) + 1.0f);
    let x_2635 : f32 = u_xlat68;
    u_xlat68 = max(x_2635, 0.0f);
    let x_2637 : f32 = u_xlat68;
    let x_2638 : f32 = u_xlat68;
    u_xlat68 = (x_2637 * x_2638);
    let x_2640 : f32 = u_xlat68;
    let x_2641 : f32 = u_xlat69;
    u_xlat68 = (x_2640 * x_2641);
    let x_2643 : u32 = u_xlatu66;
    let x_2646 : vec4<f32> = x_2589.x_AdditionalLightsSpotDir[bitcast<i32>(x_2643)];
    let x_2648 : vec4<f32> = u_xlat10;
    u_xlat69 = dot(vec3<f32>(x_2646.x, x_2646.y, x_2646.z), vec3<f32>(x_2648.x, x_2648.y, x_2648.z));
    let x_2651 : f32 = u_xlat69;
    let x_2652 : u32 = u_xlatu66;
    let x_2655 : f32 = x_2589.x_AdditionalLightsAttenuation[bitcast<i32>(x_2652)].z;
    let x_2657 : u32 = u_xlatu66;
    let x_2660 : f32 = x_2589.x_AdditionalLightsAttenuation[bitcast<i32>(x_2657)].w;
    u_xlat69 = ((x_2651 * x_2655) + x_2660);
    let x_2662 : f32 = u_xlat69;
    u_xlat69 = clamp(x_2662, 0.0f, 1.0f);
    let x_2664 : f32 = u_xlat69;
    let x_2665 : f32 = u_xlat69;
    u_xlat69 = (x_2664 * x_2665);
    let x_2667 : f32 = u_xlat68;
    let x_2668 : f32 = u_xlat69;
    u_xlat68 = (x_2667 * x_2668);
    let x_2671 : u32 = u_xlatu66;
    u_xlatu69 = (x_2671 >> 5u);
    let x_2674 : u32 = u_xlatu66;
    u_xlati70 = (1i << bitcast<u32>((bitcast<i32>(x_2674) & 31i)));
    let x_2680 : i32 = u_xlati70;
    let x_2682 : u32 = u_xlatu69;
    let x_2685 : f32 = x_2112.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2682)].el;
    u_xlati69 = bitcast<i32>((bitcast<u32>(x_2680) & bitcast<u32>(x_2685)));
    let x_2689 : i32 = u_xlati69;
    if ((x_2689 != 0i)) {
      let x_2699 : u32 = u_xlatu66;
      let x_2702 : f32 = x_2698.x_AdditionalLightsLightTypes[bitcast<i32>(x_2699)].el;
      u_xlati69 = i32(x_2702);
      let x_2704 : i32 = u_xlati69;
      u_xlati70 = select(1i, 0i, (x_2704 != 0i));
      let x_2708 : u32 = u_xlatu66;
      u_xlati71 = (bitcast<i32>(x_2708) << bitcast<u32>(2i));
      let x_2711 : i32 = u_xlati70;
      if ((x_2711 != 0i)) {
        let x_2715 : vec3<f32> = vs_INTERP0;
        let x_2717 : i32 = u_xlati71;
        let x_2720 : i32 = u_xlati71;
        let x_2724 : vec4<f32> = x_2698.x_AdditionalLightsWorldToLights[((x_2717 + 1i) / 4i)][((x_2720 + 1i) % 4i)];
        let x_2726 : vec3<f32> = (vec3<f32>(x_2715.y, x_2715.y, x_2715.y) * vec3<f32>(x_2724.x, x_2724.y, x_2724.w));
        let x_2727 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2726.x, x_2726.y, x_2726.z, x_2727.w);
        let x_2729 : i32 = u_xlati71;
        let x_2731 : i32 = u_xlati71;
        let x_2734 : vec4<f32> = x_2698.x_AdditionalLightsWorldToLights[(x_2729 / 4i)][(x_2731 % 4i)];
        let x_2736 : vec3<f32> = vs_INTERP0;
        let x_2739 : vec4<f32> = u_xlat11;
        let x_2741 : vec3<f32> = ((vec3<f32>(x_2734.x, x_2734.y, x_2734.w) * vec3<f32>(x_2736.x, x_2736.x, x_2736.x)) + vec3<f32>(x_2739.x, x_2739.y, x_2739.z));
        let x_2742 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2741.x, x_2741.y, x_2741.z, x_2742.w);
        let x_2744 : i32 = u_xlati71;
        let x_2747 : i32 = u_xlati71;
        let x_2751 : vec4<f32> = x_2698.x_AdditionalLightsWorldToLights[((x_2744 + 2i) / 4i)][((x_2747 + 2i) % 4i)];
        let x_2753 : vec3<f32> = vs_INTERP0;
        let x_2756 : vec4<f32> = u_xlat11;
        let x_2758 : vec3<f32> = ((vec3<f32>(x_2751.x, x_2751.y, x_2751.w) * vec3<f32>(x_2753.z, x_2753.z, x_2753.z)) + vec3<f32>(x_2756.x, x_2756.y, x_2756.z));
        let x_2759 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2758.x, x_2758.y, x_2758.z, x_2759.w);
        let x_2761 : vec4<f32> = u_xlat11;
        let x_2763 : i32 = u_xlati71;
        let x_2766 : i32 = u_xlati71;
        let x_2770 : vec4<f32> = x_2698.x_AdditionalLightsWorldToLights[((x_2763 + 3i) / 4i)][((x_2766 + 3i) % 4i)];
        let x_2772 : vec3<f32> = (vec3<f32>(x_2761.x, x_2761.y, x_2761.z) + vec3<f32>(x_2770.x, x_2770.y, x_2770.w));
        let x_2773 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2772.x, x_2772.y, x_2772.z, x_2773.w);
        let x_2775 : vec4<f32> = u_xlat11;
        let x_2777 : vec4<f32> = u_xlat11;
        let x_2779 : vec2<f32> = (vec2<f32>(x_2775.x, x_2775.y) / vec2<f32>(x_2777.z, x_2777.z));
        let x_2780 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2779.x, x_2779.y, x_2780.z, x_2780.w);
        let x_2782 : vec4<f32> = u_xlat11;
        let x_2785 : vec2<f32> = ((vec2<f32>(x_2782.x, x_2782.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2786 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2785.x, x_2785.y, x_2786.z, x_2786.w);
        let x_2788 : vec4<f32> = u_xlat11;
        let x_2792 : vec2<f32> = clamp(vec2<f32>(x_2788.x, x_2788.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2793 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2792.x, x_2792.y, x_2793.z, x_2793.w);
        let x_2795 : u32 = u_xlatu66;
        let x_2798 : vec4<f32> = x_2698.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2795)];
        let x_2800 : vec4<f32> = u_xlat11;
        let x_2803 : u32 = u_xlatu66;
        let x_2806 : vec4<f32> = x_2698.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2803)];
        let x_2808 : vec2<f32> = ((vec2<f32>(x_2798.x, x_2798.y) * vec2<f32>(x_2800.x, x_2800.y)) + vec2<f32>(x_2806.z, x_2806.w));
        let x_2809 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2808.x, x_2808.y, x_2809.z, x_2809.w);
      } else {
        let x_2813 : i32 = u_xlati69;
        u_xlatb69 = (x_2813 == 1i);
        let x_2815 : bool = u_xlatb69;
        u_xlati69 = select(0i, 1i, x_2815);
        let x_2817 : i32 = u_xlati69;
        if ((x_2817 != 0i)) {
          let x_2822 : vec3<f32> = vs_INTERP0;
          let x_2824 : i32 = u_xlati71;
          let x_2827 : i32 = u_xlati71;
          let x_2831 : vec4<f32> = x_2698.x_AdditionalLightsWorldToLights[((x_2824 + 1i) / 4i)][((x_2827 + 1i) % 4i)];
          u_xlat53 = (vec2<f32>(x_2822.y, x_2822.y) * vec2<f32>(x_2831.x, x_2831.y));
          let x_2834 : i32 = u_xlati71;
          let x_2836 : i32 = u_xlati71;
          let x_2839 : vec4<f32> = x_2698.x_AdditionalLightsWorldToLights[(x_2834 / 4i)][(x_2836 % 4i)];
          let x_2841 : vec3<f32> = vs_INTERP0;
          let x_2844 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2839.x, x_2839.y) * vec2<f32>(x_2841.x, x_2841.x)) + x_2844);
          let x_2846 : i32 = u_xlati71;
          let x_2849 : i32 = u_xlati71;
          let x_2853 : vec4<f32> = x_2698.x_AdditionalLightsWorldToLights[((x_2846 + 2i) / 4i)][((x_2849 + 2i) % 4i)];
          let x_2855 : vec3<f32> = vs_INTERP0;
          let x_2858 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_2853.x, x_2853.y) * vec2<f32>(x_2855.z, x_2855.z)) + x_2858);
          let x_2860 : vec2<f32> = u_xlat53;
          let x_2861 : i32 = u_xlati71;
          let x_2864 : i32 = u_xlati71;
          let x_2868 : vec4<f32> = x_2698.x_AdditionalLightsWorldToLights[((x_2861 + 3i) / 4i)][((x_2864 + 3i) % 4i)];
          u_xlat53 = (x_2860 + vec2<f32>(x_2868.x, x_2868.y));
          let x_2871 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_2871 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2874 : vec2<f32> = u_xlat53;
          u_xlat53 = fract(x_2874);
          let x_2876 : u32 = u_xlatu66;
          let x_2879 : vec4<f32> = x_2698.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2876)];
          let x_2881 : vec2<f32> = u_xlat53;
          let x_2883 : u32 = u_xlatu66;
          let x_2886 : vec4<f32> = x_2698.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2883)];
          let x_2888 : vec2<f32> = ((vec2<f32>(x_2879.x, x_2879.y) * x_2881) + vec2<f32>(x_2886.z, x_2886.w));
          let x_2889 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2888.x, x_2888.y, x_2889.z, x_2889.w);
        } else {
          let x_2892 : vec3<f32> = vs_INTERP0;
          let x_2894 : i32 = u_xlati71;
          let x_2897 : i32 = u_xlati71;
          let x_2901 : vec4<f32> = x_2698.x_AdditionalLightsWorldToLights[((x_2894 + 1i) / 4i)][((x_2897 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2892.y, x_2892.y, x_2892.y, x_2892.y) * x_2901);
          let x_2903 : i32 = u_xlati71;
          let x_2905 : i32 = u_xlati71;
          let x_2908 : vec4<f32> = x_2698.x_AdditionalLightsWorldToLights[(x_2903 / 4i)][(x_2905 % 4i)];
          let x_2909 : vec3<f32> = vs_INTERP0;
          let x_2912 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2908 * vec4<f32>(x_2909.x, x_2909.x, x_2909.x, x_2909.x)) + x_2912);
          let x_2914 : i32 = u_xlati71;
          let x_2917 : i32 = u_xlati71;
          let x_2921 : vec4<f32> = x_2698.x_AdditionalLightsWorldToLights[((x_2914 + 2i) / 4i)][((x_2917 + 2i) % 4i)];
          let x_2922 : vec3<f32> = vs_INTERP0;
          let x_2925 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2921 * vec4<f32>(x_2922.z, x_2922.z, x_2922.z, x_2922.z)) + x_2925);
          let x_2927 : vec4<f32> = u_xlat12;
          let x_2928 : i32 = u_xlati71;
          let x_2931 : i32 = u_xlati71;
          let x_2935 : vec4<f32> = x_2698.x_AdditionalLightsWorldToLights[((x_2928 + 3i) / 4i)][((x_2931 + 3i) % 4i)];
          u_xlat12 = (x_2927 + x_2935);
          let x_2937 : vec4<f32> = u_xlat12;
          let x_2939 : vec4<f32> = u_xlat12;
          let x_2941 : vec3<f32> = (vec3<f32>(x_2937.x, x_2937.y, x_2937.z) / vec3<f32>(x_2939.w, x_2939.w, x_2939.w));
          let x_2942 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2941.x, x_2941.y, x_2941.z, x_2942.w);
          let x_2944 : vec4<f32> = u_xlat12;
          let x_2946 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(vec3<f32>(x_2944.x, x_2944.y, x_2944.z), vec3<f32>(x_2946.x, x_2946.y, x_2946.z));
          let x_2949 : f32 = u_xlat69;
          u_xlat69 = inverseSqrt(x_2949);
          let x_2951 : f32 = u_xlat69;
          let x_2953 : vec4<f32> = u_xlat12;
          let x_2955 : vec3<f32> = (vec3<f32>(x_2951, x_2951, x_2951) * vec3<f32>(x_2953.x, x_2953.y, x_2953.z));
          let x_2956 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2955.x, x_2955.y, x_2955.z, x_2956.w);
          let x_2958 : vec4<f32> = u_xlat12;
          u_xlat69 = dot(abs(vec3<f32>(x_2958.x, x_2958.y, x_2958.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2962 : f32 = u_xlat69;
          u_xlat69 = max(x_2962, 0.000001f);
          let x_2965 : f32 = u_xlat69;
          u_xlat69 = (1.0f / x_2965);
          let x_2967 : f32 = u_xlat69;
          let x_2969 : vec4<f32> = u_xlat12;
          let x_2971 : vec3<f32> = (vec3<f32>(x_2967, x_2967, x_2967) * vec3<f32>(x_2969.z, x_2969.x, x_2969.y));
          let x_2972 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2971.x, x_2971.y, x_2971.z, x_2972.w);
          let x_2975 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2975);
          let x_2979 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2979, 0.0f, 1.0f);
          let x_2983 : vec4<f32> = u_xlat13;
          let x_2986 : vec4<bool> = (vec4<f32>(x_2983.y, x_2983.z, x_2983.y, x_2983.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb53 = vec2<bool>(x_2986.x, x_2986.y);
          let x_2989 : bool = u_xlatb53.x;
          if (x_2989) {
            let x_2994 : f32 = u_xlat13.x;
            x_2990 = x_2994;
          } else {
            let x_2997 : f32 = u_xlat13.x;
            x_2990 = -(x_2997);
          }
          let x_2999 : f32 = x_2990;
          u_xlat53.x = x_2999;
          let x_3002 : bool = u_xlatb53.y;
          if (x_3002) {
            let x_3007 : f32 = u_xlat13.x;
            x_3003 = x_3007;
          } else {
            let x_3010 : f32 = u_xlat13.x;
            x_3003 = -(x_3010);
          }
          let x_3012 : f32 = x_3003;
          u_xlat53.y = x_3012;
          let x_3014 : vec4<f32> = u_xlat12;
          let x_3016 : f32 = u_xlat69;
          let x_3019 : vec2<f32> = u_xlat53;
          u_xlat53 = ((vec2<f32>(x_3014.x, x_3014.y) * vec2<f32>(x_3016, x_3016)) + x_3019);
          let x_3021 : vec2<f32> = u_xlat53;
          u_xlat53 = ((x_3021 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_3024 : vec2<f32> = u_xlat53;
          u_xlat53 = clamp(x_3024, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_3028 : u32 = u_xlatu66;
          let x_3031 : vec4<f32> = x_2698.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3028)];
          let x_3033 : vec2<f32> = u_xlat53;
          let x_3035 : u32 = u_xlatu66;
          let x_3038 : vec4<f32> = x_2698.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_3035)];
          let x_3040 : vec2<f32> = ((vec2<f32>(x_3031.x, x_3031.y) * x_3033) + vec2<f32>(x_3038.z, x_3038.w));
          let x_3041 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_3040.x, x_3040.y, x_3041.z, x_3041.w);
        }
      }
      let x_3048 : vec4<f32> = u_xlat11;
      let x_3051 : f32 = x_44.x_GlobalMipBias.x;
      let x_3052 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_3048.x, x_3048.y), x_3051);
      u_xlat11 = x_3052;
      let x_3054 : bool = u_xlatb6.y;
      if (x_3054) {
        let x_3059 : f32 = u_xlat11.w;
        x_3055 = x_3059;
      } else {
        let x_3062 : f32 = u_xlat11.x;
        x_3055 = x_3062;
      }
      let x_3063 : f32 = x_3055;
      u_xlat69 = x_3063;
      let x_3065 : bool = u_xlatb6.x;
      if (x_3065) {
        let x_3069 : vec4<f32> = u_xlat11;
        x_3066 = vec3<f32>(x_3069.x, x_3069.y, x_3069.z);
      } else {
        let x_3072 : f32 = u_xlat69;
        x_3066 = vec3<f32>(x_3072, x_3072, x_3072);
      }
      let x_3074 : vec3<f32> = x_3066;
      let x_3075 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_3074.x, x_3074.y, x_3074.z, x_3075.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_3081 : vec4<f32> = u_xlat11;
    let x_3083 : u32 = u_xlatu66;
    let x_3086 : vec4<f32> = x_2589.x_AdditionalLightsColor[bitcast<i32>(x_3083)];
    let x_3088 : vec3<f32> = (vec3<f32>(x_3081.x, x_3081.y, x_3081.z) * vec3<f32>(x_3086.x, x_3086.y, x_3086.z));
    let x_3089 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3088.x, x_3088.y, x_3088.z, x_3089.w);
    let x_3091 : f32 = u_xlat67;
    let x_3093 : vec4<f32> = u_xlat11;
    let x_3095 : vec3<f32> = (vec3<f32>(x_3091, x_3091, x_3091) * vec3<f32>(x_3093.x, x_3093.y, x_3093.z));
    let x_3096 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3095.x, x_3095.y, x_3095.z, x_3096.w);
    let x_3098 : vec3<f32> = u_xlat22;
    let x_3099 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(x_3098, vec3<f32>(x_3099.x, x_3099.y, x_3099.z));
    let x_3102 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3102, 0.0f, 1.0f);
    let x_3104 : f32 = u_xlat66;
    let x_3105 : f32 = u_xlat68;
    u_xlat66 = (x_3104 * x_3105);
    let x_3107 : f32 = u_xlat66;
    let x_3109 : vec4<f32> = u_xlat11;
    let x_3111 : vec3<f32> = (vec3<f32>(x_3107, x_3107, x_3107) * vec3<f32>(x_3109.x, x_3109.y, x_3109.z));
    let x_3112 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_3111.x, x_3111.y, x_3111.z, x_3112.w);
    let x_3114 : vec4<f32> = u_xlat9;
    let x_3116 : vec2<f32> = u_xlat48;
    let x_3119 : vec3<f32> = u_xlat4;
    let x_3120 : vec3<f32> = ((vec3<f32>(x_3114.x, x_3114.y, x_3114.z) * vec3<f32>(x_3116.x, x_3116.x, x_3116.x)) + x_3119);
    let x_3121 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3120.x, x_3120.y, x_3120.z, x_3121.w);
    let x_3123 : vec4<f32> = u_xlat9;
    let x_3125 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(vec3<f32>(x_3123.x, x_3123.y, x_3123.z), vec3<f32>(x_3125.x, x_3125.y, x_3125.z));
    let x_3128 : f32 = u_xlat66;
    u_xlat66 = max(x_3128, 1.17549435e-37f);
    let x_3130 : f32 = u_xlat66;
    u_xlat66 = inverseSqrt(x_3130);
    let x_3132 : f32 = u_xlat66;
    let x_3134 : vec4<f32> = u_xlat9;
    let x_3136 : vec3<f32> = (vec3<f32>(x_3132, x_3132, x_3132) * vec3<f32>(x_3134.x, x_3134.y, x_3134.z));
    let x_3137 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3136.x, x_3136.y, x_3136.z, x_3137.w);
    let x_3139 : vec3<f32> = u_xlat22;
    let x_3140 : vec4<f32> = u_xlat9;
    u_xlat66 = dot(x_3139, vec3<f32>(x_3140.x, x_3140.y, x_3140.z));
    let x_3143 : f32 = u_xlat66;
    u_xlat66 = clamp(x_3143, 0.0f, 1.0f);
    let x_3145 : vec4<f32> = u_xlat10;
    let x_3147 : vec4<f32> = u_xlat9;
    u_xlat68 = dot(vec3<f32>(x_3145.x, x_3145.y, x_3145.z), vec3<f32>(x_3147.x, x_3147.y, x_3147.z));
    let x_3150 : f32 = u_xlat68;
    u_xlat68 = clamp(x_3150, 0.0f, 1.0f);
    let x_3152 : f32 = u_xlat66;
    let x_3153 : f32 = u_xlat66;
    u_xlat66 = (x_3152 * x_3153);
    let x_3155 : f32 = u_xlat66;
    let x_3157 : f32 = u_xlat0.x;
    u_xlat66 = ((x_3155 * x_3157) + 1.000010014f);
    let x_3160 : f32 = u_xlat68;
    let x_3161 : f32 = u_xlat68;
    u_xlat68 = (x_3160 * x_3161);
    let x_3163 : f32 = u_xlat66;
    let x_3164 : f32 = u_xlat66;
    u_xlat66 = (x_3163 * x_3164);
    let x_3166 : f32 = u_xlat68;
    u_xlat68 = max(x_3166, 0.100000001f);
    let x_3168 : f32 = u_xlat66;
    let x_3169 : f32 = u_xlat68;
    u_xlat66 = (x_3168 * x_3169);
    let x_3171 : f32 = u_xlat65;
    let x_3172 : f32 = u_xlat66;
    u_xlat66 = (x_3171 * x_3172);
    let x_3175 : f32 = u_xlat1.x;
    let x_3176 : f32 = u_xlat66;
    u_xlat66 = (x_3175 / x_3176);
    let x_3178 : vec3<f32> = u_xlat2;
    let x_3179 : f32 = u_xlat66;
    let x_3182 : vec3<f32> = u_xlat7;
    let x_3183 : vec3<f32> = ((x_3178 * vec3<f32>(x_3179, x_3179, x_3179)) + x_3182);
    let x_3184 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_3183.x, x_3183.y, x_3183.z, x_3184.w);
    let x_3186 : vec4<f32> = u_xlat9;
    let x_3188 : vec4<f32> = u_xlat11;
    let x_3191 : vec4<f32> = u_xlat8;
    let x_3193 : vec3<f32> = ((vec3<f32>(x_3186.x, x_3186.y, x_3186.z) * vec3<f32>(x_3188.x, x_3188.y, x_3188.z)) + vec3<f32>(x_3191.x, x_3191.y, x_3191.z));
    let x_3194 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_3193.x, x_3193.y, x_3193.z, x_3194.w);

    continuing {
      let x_3196 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_3196 + bitcast<u32>(1i));
    }
  }
  let x_3198 : vec4<f32> = u_xlat5;
  let x_3200 : f32 = u_xlat63;
  let x_3203 : vec4<f32> = u_xlat3;
  let x_3205 : vec3<f32> = ((vec3<f32>(x_3198.x, x_3198.y, x_3198.z) * vec3<f32>(x_3200, x_3200, x_3200)) + vec3<f32>(x_3203.x, x_3203.y, x_3203.z));
  let x_3206 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_3205.x, x_3205.y, x_3205.z, x_3206.w);
  let x_3210 : vec4<f32> = u_xlat8;
  let x_3212 : vec4<f32> = u_xlat0;
  let x_3214 : vec3<f32> = (vec3<f32>(x_3210.x, x_3210.y, x_3210.z) + vec3<f32>(x_3212.x, x_3212.y, x_3212.z));
  let x_3215 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_3214.x, x_3214.y, x_3214.z, x_3215.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(3) vs_INTERP3_param : vec4<f32>, @location(2) vs_INTERP2_param : vec4<f32>, @location(1) vs_INTERP1_param : vec3<f32>, @location(0) vs_INTERP0_param : vec3<f32>, @location(4) vs_INTERP4_param : vec2<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_INTERP3 = vs_INTERP3_param;
  vs_INTERP2 = vs_INTERP2_param;
  vs_INTERP1 = vs_INTERP1_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP4 = vs_INTERP4_param;
  main_1();
  return main_out(SV_Target0);
}

