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

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(4) var x_MetallicTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD7 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_91 : MainLightShadows;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(5) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(6) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(14) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1829 : LightCookies;

@group(0) @binding(7) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2042 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2297 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2401 : AdditionalLightsCookies;

@group(0) @binding(8) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(16) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

var<private> SV_Target0 : vec4<f32>;

fn main_1() {
  var hlslcc_FragCoord : vec4<f32>;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlat21 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb2 : vec4<bool>;
  var u_xlatu2 : u32;
  var u_xlati2 : i32;
  var u_xlat22 : vec3<f32>;
  var u_xlat62 : f32;
  var u_xlat63 : f32;
  var u_xlat24 : f32;
  var u_xlat64 : f32;
  var u_xlat60 : f32;
  var u_xlat44 : f32;
  var u_xlatb65 : bool;
  var u_xlat6 : vec4<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var txVec1 : vec3<f32>;
  var txVec2 : vec3<f32>;
  var txVec3 : vec3<f32>;
  var u_xlat65 : f32;
  var u_xlatb6 : vec2<bool>;
  var u_xlat46 : vec2<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat48 : vec2<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec4<f32>;
  var u_xlat14 : vec4<f32>;
  var txVec4 : vec3<f32>;
  var u_xlat26 : f32;
  var txVec5 : vec3<f32>;
  var txVec6 : vec3<f32>;
  var txVec7 : vec3<f32>;
  var txVec8 : vec3<f32>;
  var txVec9 : vec3<f32>;
  var txVec10 : vec3<f32>;
  var txVec11 : vec3<f32>;
  var txVec12 : vec3<f32>;
  var u_xlat27 : vec3<f32>;
  var u_xlat15 : vec4<f32>;
  var u_xlat16 : vec4<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat54 : vec2<f32>;
  var u_xlat49 : vec2<f32>;
  var u_xlat17 : vec4<f32>;
  var u_xlat18 : vec4<f32>;
  var u_xlat19 : vec4<f32>;
  var txVec13 : vec3<f32>;
  var txVec14 : vec3<f32>;
  var u_xlat68 : f32;
  var txVec15 : vec3<f32>;
  var txVec16 : vec3<f32>;
  var u_xlat66 : f32;
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
  var u_xlatb22 : vec2<bool>;
  var u_xlatb42 : bool;
  var x_1777 : f32;
  var u_xlat42 : f32;
  var x_1911 : f32;
  var x_1922 : vec3<f32>;
  var u_xlat29 : vec3<f32>;
  var u_xlatu60 : u32;
  var u_xlatu_loop_1 : u32;
  var u_xlatu63 : u32;
  var u_xlati65 : i32;
  var indexable : array<vec4<u32>, 4u>;
  var u_xlatu66 : u32;
  var u_xlati67 : i32;
  var u_xlati66 : i32;
  var u_xlati68 : i32;
  var u_xlatb66 : bool;
  var u_xlat51 : vec2<f32>;
  var u_xlatb51 : vec2<bool>;
  var x_2694 : f32;
  var x_2707 : f32;
  var x_2759 : f32;
  var x_2770 : vec3<f32>;
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
  let x_86 : vec3<f32> = vs_TEXCOORD7;
  let x_94 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres0;
  let x_97 : vec3<f32> = (x_86 + -(vec3<f32>(x_94.x, x_94.y, x_94.z)));
  let x_98 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_101 : vec3<f32> = vs_TEXCOORD7;
  let x_104 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres1;
  let x_107 : vec3<f32> = (x_101 + -(vec3<f32>(x_104.x, x_104.y, x_104.z)));
  let x_108 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_107.x, x_107.y, x_107.z, x_108.w);
  let x_111 : vec3<f32> = vs_TEXCOORD7;
  let x_114 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres2;
  u_xlat4 = (x_111 + -(vec3<f32>(x_114.x, x_114.y, x_114.z)));
  let x_119 : vec3<f32> = vs_TEXCOORD7;
  let x_122 : vec4<f32> = x_91.x_CascadeShadowSplitSpheres3;
  u_xlat5 = (x_119 + -(vec3<f32>(x_122.x, x_122.y, x_122.z)));
  let x_126 : vec4<f32> = u_xlat2;
  let x_128 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_126.x, x_126.y, x_126.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_132 : vec4<f32> = u_xlat3;
  let x_134 : vec4<f32> = u_xlat3;
  u_xlat2.y = dot(vec3<f32>(x_132.x, x_132.y, x_132.z), vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_139 : vec3<f32> = u_xlat4;
  let x_140 : vec3<f32> = u_xlat4;
  u_xlat2.z = dot(x_139, x_140);
  let x_144 : vec3<f32> = u_xlat5;
  let x_145 : vec3<f32> = u_xlat5;
  u_xlat2.w = dot(x_144, x_145);
  let x_152 : vec4<f32> = u_xlat2;
  let x_155 : vec4<f32> = x_91.x_CascadeShadowSplitSphereRadii;
  u_xlatb2 = (x_152 < x_155);
  let x_159 : bool = u_xlatb2.x;
  u_xlat3.x = select(0.0f, 1.0f, x_159);
  let x_164 : bool = u_xlatb2.y;
  u_xlat3.y = select(0.0f, 1.0f, x_164);
  let x_168 : bool = u_xlatb2.z;
  u_xlat3.z = select(0.0f, 1.0f, x_168);
  let x_172 : bool = u_xlatb2.w;
  u_xlat3.w = select(0.0f, 1.0f, x_172);
  let x_176 : bool = u_xlatb2.x;
  u_xlat2.x = select(-0.0f, -1.0f, x_176);
  let x_182 : bool = u_xlatb2.y;
  u_xlat2.y = select(-0.0f, -1.0f, x_182);
  let x_186 : bool = u_xlatb2.z;
  u_xlat2.z = select(-0.0f, -1.0f, x_186);
  let x_189 : vec4<f32> = u_xlat2;
  let x_191 : vec4<f32> = u_xlat3;
  let x_193 : vec3<f32> = (vec3<f32>(x_189.x, x_189.y, x_189.z) + vec3<f32>(x_191.y, x_191.z, x_191.w));
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat2;
  let x_199 : vec3<f32> = max(vec3<f32>(x_196.x, x_196.y, x_196.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_200 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_200.x, x_199.x, x_199.y, x_199.z);
  let x_202 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(x_202, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_210 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_210) + 4.0f);
  let x_217 : f32 = u_xlat2.x;
  u_xlatu2 = u32(x_217);
  let x_221 : u32 = u_xlatu2;
  u_xlati2 = (bitcast<i32>(x_221) << bitcast<u32>(2i));
  let x_225 : vec3<f32> = vs_TEXCOORD7;
  let x_228 : i32 = u_xlati2;
  let x_231 : i32 = u_xlati2;
  let x_235 : vec4<f32> = x_91.x_MainLightWorldToShadow[((x_228 + 1i) / 4i)][((x_231 + 1i) % 4i)];
  u_xlat22 = (vec3<f32>(x_225.y, x_225.y, x_225.y) * vec3<f32>(x_235.x, x_235.y, x_235.z));
  let x_238 : i32 = u_xlati2;
  let x_240 : i32 = u_xlati2;
  let x_243 : vec4<f32> = x_91.x_MainLightWorldToShadow[(x_238 / 4i)][(x_240 % 4i)];
  let x_245 : vec3<f32> = vs_TEXCOORD7;
  let x_248 : vec3<f32> = u_xlat22;
  u_xlat22 = ((vec3<f32>(x_243.x, x_243.y, x_243.z) * vec3<f32>(x_245.x, x_245.x, x_245.x)) + x_248);
  let x_250 : i32 = u_xlati2;
  let x_253 : i32 = u_xlati2;
  let x_257 : vec4<f32> = x_91.x_MainLightWorldToShadow[((x_250 + 2i) / 4i)][((x_253 + 2i) % 4i)];
  let x_259 : vec3<f32> = vs_TEXCOORD7;
  let x_262 : vec3<f32> = u_xlat22;
  u_xlat22 = ((vec3<f32>(x_257.x, x_257.y, x_257.z) * vec3<f32>(x_259.z, x_259.z, x_259.z)) + x_262);
  let x_264 : vec3<f32> = u_xlat22;
  let x_265 : i32 = u_xlati2;
  let x_268 : i32 = u_xlati2;
  let x_272 : vec4<f32> = x_91.x_MainLightWorldToShadow[((x_265 + 3i) / 4i)][((x_268 + 3i) % 4i)];
  let x_274 : vec3<f32> = (x_264 + vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_275 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_279 : f32 = vs_TEXCOORD7.y;
  let x_282 : f32 = x_44.unity_MatrixV[1i].z;
  u_xlat62 = (x_279 * x_282);
  let x_285 : f32 = x_44.unity_MatrixV[0i].z;
  let x_287 : f32 = vs_TEXCOORD7.x;
  let x_289 : f32 = u_xlat62;
  u_xlat62 = ((x_285 * x_287) + x_289);
  let x_292 : f32 = x_44.unity_MatrixV[2i].z;
  let x_294 : f32 = vs_TEXCOORD7.z;
  let x_296 : f32 = u_xlat62;
  u_xlat62 = ((x_292 * x_294) + x_296);
  let x_298 : f32 = u_xlat62;
  let x_300 : f32 = x_44.unity_MatrixV[3i].z;
  u_xlat62 = (x_298 + x_300);
  let x_302 : f32 = u_xlat62;
  let x_306 : f32 = x_44.x_ProjectionParams.y;
  u_xlat62 = (-(x_302) + -(x_306));
  let x_309 : f32 = u_xlat62;
  u_xlat62 = max(x_309, 0.0f);
  let x_311 : f32 = u_xlat62;
  let x_314 : f32 = x_44.unity_FogParams.x;
  u_xlat62 = (x_311 * x_314);
  let x_321 : vec4<f32> = vs_TEXCOORD0;
  let x_324 : f32 = x_44.x_GlobalMipBias.x;
  let x_325 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, vec2<f32>(x_321.z, x_321.w), x_324);
  u_xlat3 = x_325;
  let x_330 : vec4<f32> = vs_TEXCOORD0;
  let x_333 : f32 = x_44.x_GlobalMipBias.x;
  let x_334 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_330.z, x_330.w), x_333);
  u_xlat4 = vec3<f32>(x_334.x, x_334.y, x_334.z);
  let x_336 : vec4<f32> = u_xlat3;
  let x_340 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_341 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_340.x, x_340.y, x_340.z, x_341.w);
  let x_343 : vec3<f32> = u_xlat21;
  let x_344 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(x_343, vec3<f32>(x_344.x, x_344.y, x_344.z));
  let x_349 : f32 = u_xlat3.x;
  u_xlat3.x = (x_349 + 0.5f);
  let x_353 : vec4<f32> = u_xlat3;
  let x_355 : vec3<f32> = u_xlat4;
  let x_356 : vec3<f32> = (vec3<f32>(x_353.x, x_353.x, x_353.x) * x_355);
  let x_357 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_361 : f32 = u_xlat3.w;
  u_xlat63 = max(x_361, 0.0001f);
  let x_364 : vec4<f32> = u_xlat3;
  let x_366 : f32 = u_xlat63;
  let x_368 : vec3<f32> = (vec3<f32>(x_364.x, x_364.y, x_364.z) / vec3<f32>(x_366, x_366, x_366));
  let x_369 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_368.x, x_368.y, x_368.z, x_369.w);
  let x_373 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_374 : vec2<f32> = vec2<f32>(x_373.x, x_373.y);
  let x_378 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_374.x, x_374.y));
  let x_379 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_381 : vec3<f32> = u_xlat4;
  let x_383 : vec4<f32> = hlslcc_FragCoord;
  let x_385 : vec2<f32> = (vec2<f32>(x_381.x, x_381.y) * vec2<f32>(x_383.x, x_383.y));
  let x_386 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_385.x, x_385.y, x_386.z);
  let x_389 : f32 = u_xlat4.y;
  let x_392 : f32 = x_44.x_ScaleBiasRt.x;
  let x_395 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_389 * x_392) + x_395);
  let x_397 : f32 = u_xlat63;
  u_xlat4.z = (-(x_397) + 1.0f);
  let x_401 : f32 = u_xlat1;
  u_xlat63 = ((-(x_401) * 0.959999979f) + 0.959999979f);
  let x_407 : f32 = u_xlat63;
  u_xlat24 = (-(x_407) + 1.0f);
  let x_410 : vec4<f32> = u_xlat0;
  let x_412 : f32 = u_xlat63;
  u_xlat5 = (vec3<f32>(x_410.x, x_410.y, x_410.z) * vec3<f32>(x_412, x_412, x_412));
  let x_415 : vec4<f32> = u_xlat0;
  let x_419 : vec3<f32> = (vec3<f32>(x_415.x, x_415.y, x_415.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_420 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_422 : f32 = u_xlat1;
  let x_424 : vec4<f32> = u_xlat0;
  let x_429 : vec3<f32> = ((vec3<f32>(x_422, x_422, x_422) * vec3<f32>(x_424.x, x_424.y, x_424.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_430 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_433 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_433) + 1.0f);
  let x_436 : f32 = u_xlat1;
  let x_437 : f32 = u_xlat1;
  u_xlat63 = (x_436 * x_437);
  let x_439 : f32 = u_xlat63;
  u_xlat63 = max(x_439, 0.0078125f);
  let x_443 : f32 = u_xlat63;
  let x_444 : f32 = u_xlat63;
  u_xlat64 = (x_443 * x_444);
  let x_448 : f32 = u_xlat0.w;
  let x_449 : f32 = u_xlat24;
  u_xlat60 = (x_448 + x_449);
  let x_451 : f32 = u_xlat60;
  u_xlat60 = clamp(x_451, 0.0f, 1.0f);
  let x_453 : f32 = u_xlat63;
  u_xlat24 = ((x_453 * 4.0f) + 2.0f);
  let x_461 : vec3<f32> = u_xlat4;
  let x_464 : f32 = x_44.x_GlobalMipBias.x;
  let x_465 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_461.x, x_461.z), x_464);
  u_xlat4.x = x_465.x;
  let x_470 : f32 = u_xlat4.x;
  u_xlat44 = (x_470 + -1.0f);
  let x_473 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_474 : f32 = u_xlat44;
  u_xlat44 = ((x_473 * x_474) + 1.0f);
  let x_478 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_478, 1.0f);
  let x_483 : f32 = x_91.x_MainLightShadowParams.y;
  u_xlatb65 = (0.0f < x_483);
  let x_485 : bool = u_xlatb65;
  if (x_485) {
    let x_489 : f32 = x_91.x_MainLightShadowParams.y;
    u_xlatb65 = (x_489 == 1.0f);
    let x_491 : bool = u_xlatb65;
    if (x_491) {
      let x_495 : vec4<f32> = u_xlat2;
      let x_499 : vec4<f32> = x_91.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_495.x, x_495.y, x_495.x, x_495.y) + x_499);
      let x_502 : vec4<f32> = u_xlat6;
      let x_503 : vec2<f32> = vec2<f32>(x_502.x, x_502.y);
      let x_505 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_503.x, x_503.y, x_505);
      let x_518 : vec3<f32> = txVec0;
      let x_520 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_518.xy, x_518.z);
      u_xlat7.x = x_520;
      let x_523 : vec4<f32> = u_xlat6;
      let x_524 : vec2<f32> = vec2<f32>(x_523.z, x_523.w);
      let x_526 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_524.x, x_524.y, x_526);
      let x_533 : vec3<f32> = txVec1;
      let x_535 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_533.xy, x_533.z);
      u_xlat7.y = x_535;
      let x_537 : vec4<f32> = u_xlat2;
      let x_540 : vec4<f32> = x_91.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_537.x, x_537.y, x_537.x, x_537.y) + x_540);
      let x_543 : vec4<f32> = u_xlat6;
      let x_544 : vec2<f32> = vec2<f32>(x_543.x, x_543.y);
      let x_546 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_544.x, x_544.y, x_546);
      let x_553 : vec3<f32> = txVec2;
      let x_555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_553.xy, x_553.z);
      u_xlat7.z = x_555;
      let x_558 : vec4<f32> = u_xlat6;
      let x_559 : vec2<f32> = vec2<f32>(x_558.z, x_558.w);
      let x_561 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_559.x, x_559.y, x_561);
      let x_568 : vec3<f32> = txVec3;
      let x_570 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_568.xy, x_568.z);
      u_xlat7.w = x_570;
      let x_573 : vec4<f32> = u_xlat7;
      u_xlat65 = dot(x_573, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_582 : f32 = x_91.x_MainLightShadowParams.y;
      u_xlatb6.x = (x_582 == 2.0f);
      let x_586 : bool = u_xlatb6.x;
      if (x_586) {
        let x_589 : vec4<f32> = u_xlat2;
        let x_592 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_596 : vec2<f32> = ((vec2<f32>(x_589.x, x_589.y) * vec2<f32>(x_592.z, x_592.w)) + vec2<f32>(0.5f, 0.5f));
        let x_597 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_596.x, x_596.y, x_597.z, x_597.w);
        let x_599 : vec4<f32> = u_xlat6;
        let x_601 : vec2<f32> = floor(vec2<f32>(x_599.x, x_599.y));
        let x_602 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_601.x, x_601.y, x_602.z, x_602.w);
        let x_606 : vec4<f32> = u_xlat2;
        let x_609 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_612 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_606.x, x_606.y) * vec2<f32>(x_609.z, x_609.w)) + -(vec2<f32>(x_612.x, x_612.y)));
        let x_616 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_616.x, x_616.x, x_616.y, x_616.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_621 : vec4<f32> = u_xlat7;
        let x_623 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_621.x, x_621.x, x_621.z, x_621.z) * vec4<f32>(x_623.x, x_623.x, x_623.z, x_623.z));
        let x_626 : vec4<f32> = u_xlat8;
        let x_630 : vec2<f32> = (vec2<f32>(x_626.y, x_626.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_631 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_630.x, x_631.y, x_630.y, x_631.w);
        let x_633 : vec4<f32> = u_xlat8;
        let x_636 : vec2<f32> = u_xlat46;
        let x_638 : vec2<f32> = ((vec2<f32>(x_633.x, x_633.z) * vec2<f32>(0.5f, 0.5f)) + -(x_636));
        let x_639 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_638.x, x_638.y, x_639.z, x_639.w);
        let x_642 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_642) + vec2<f32>(1.0f, 1.0f));
        let x_646 : vec2<f32> = u_xlat46;
        let x_648 : vec2<f32> = min(x_646, vec2<f32>(0.0f, 0.0f));
        let x_649 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_648.x, x_648.y, x_649.z, x_649.w);
        let x_651 : vec4<f32> = u_xlat9;
        let x_654 : vec4<f32> = u_xlat9;
        let x_657 : vec2<f32> = u_xlat48;
        let x_658 : vec2<f32> = ((-(vec2<f32>(x_651.x, x_651.y)) * vec2<f32>(x_654.x, x_654.y)) + x_657);
        let x_659 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_658.x, x_658.y, x_659.z, x_659.w);
        let x_661 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_661, vec2<f32>(0.0f, 0.0f));
        let x_663 : vec2<f32> = u_xlat46;
        let x_665 : vec2<f32> = u_xlat46;
        let x_667 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_663) * x_665) + vec2<f32>(x_667.y, x_667.w));
        let x_670 : vec4<f32> = u_xlat9;
        let x_672 : vec2<f32> = (vec2<f32>(x_670.x, x_670.y) + vec2<f32>(1.0f, 1.0f));
        let x_673 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_672.x, x_672.y, x_673.z, x_673.w);
        let x_675 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_675 + vec2<f32>(1.0f, 1.0f));
        let x_678 : vec4<f32> = u_xlat8;
        let x_682 : vec2<f32> = (vec2<f32>(x_678.x, x_678.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_683 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_682.x, x_682.y, x_683.z, x_683.w);
        let x_685 : vec2<f32> = u_xlat48;
        let x_686 : vec2<f32> = (x_685 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_687 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_686.x, x_686.y, x_687.z, x_687.w);
        let x_689 : vec4<f32> = u_xlat9;
        let x_691 : vec2<f32> = (vec2<f32>(x_689.x, x_689.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_692 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_691.x, x_691.y, x_692.z, x_692.w);
        let x_695 : vec2<f32> = u_xlat46;
        let x_696 : vec2<f32> = (x_695 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_697 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_696.x, x_696.y, x_697.z, x_697.w);
        let x_699 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_699.y, x_699.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_703 : f32 = u_xlat9.x;
        u_xlat10.z = x_703;
        let x_706 : f32 = u_xlat46.x;
        u_xlat10.w = x_706;
        let x_709 : f32 = u_xlat11.x;
        u_xlat8.z = x_709;
        let x_712 : f32 = u_xlat7.x;
        u_xlat8.w = x_712;
        let x_715 : vec4<f32> = u_xlat8;
        let x_717 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_715.z, x_715.w, x_715.x, x_715.z) + vec4<f32>(x_717.z, x_717.w, x_717.x, x_717.z));
        let x_721 : f32 = u_xlat10.y;
        u_xlat9.z = x_721;
        let x_724 : f32 = u_xlat46.y;
        u_xlat9.w = x_724;
        let x_727 : f32 = u_xlat8.y;
        u_xlat11.z = x_727;
        let x_730 : f32 = u_xlat7.z;
        u_xlat11.w = x_730;
        let x_732 : vec4<f32> = u_xlat9;
        let x_734 : vec4<f32> = u_xlat11;
        let x_736 : vec3<f32> = (vec3<f32>(x_732.z, x_732.y, x_732.w) + vec3<f32>(x_734.z, x_734.y, x_734.w));
        let x_737 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
        let x_739 : vec4<f32> = u_xlat8;
        let x_741 : vec4<f32> = u_xlat12;
        let x_743 : vec3<f32> = (vec3<f32>(x_739.x, x_739.z, x_739.w) / vec3<f32>(x_741.z, x_741.w, x_741.y));
        let x_744 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
        let x_746 : vec4<f32> = u_xlat8;
        let x_751 : vec3<f32> = (vec3<f32>(x_746.x, x_746.y, x_746.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_752 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
        let x_754 : vec4<f32> = u_xlat11;
        let x_756 : vec4<f32> = u_xlat7;
        let x_758 : vec3<f32> = (vec3<f32>(x_754.z, x_754.y, x_754.w) / vec3<f32>(x_756.x, x_756.y, x_756.z));
        let x_759 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
        let x_761 : vec4<f32> = u_xlat9;
        let x_763 : vec3<f32> = (vec3<f32>(x_761.x, x_761.y, x_761.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_764 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_763.x, x_763.y, x_763.z, x_764.w);
        let x_766 : vec4<f32> = u_xlat8;
        let x_769 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_771 : vec3<f32> = (vec3<f32>(x_766.y, x_766.x, x_766.z) * vec3<f32>(x_769.x, x_769.x, x_769.x));
        let x_772 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_771.x, x_771.y, x_771.z, x_772.w);
        let x_774 : vec4<f32> = u_xlat9;
        let x_777 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_779 : vec3<f32> = (vec3<f32>(x_774.x, x_774.y, x_774.z) * vec3<f32>(x_777.y, x_777.y, x_777.y));
        let x_780 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_779.x, x_779.y, x_779.z, x_780.w);
        let x_783 : f32 = u_xlat9.x;
        u_xlat8.w = x_783;
        let x_785 : vec4<f32> = u_xlat6;
        let x_788 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_791 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_785.x, x_785.y, x_785.x, x_785.y) * vec4<f32>(x_788.x, x_788.y, x_788.x, x_788.y)) + vec4<f32>(x_791.y, x_791.w, x_791.x, x_791.w));
        let x_794 : vec4<f32> = u_xlat6;
        let x_797 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_800 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_794.x, x_794.y) * vec2<f32>(x_797.x, x_797.y)) + vec2<f32>(x_800.z, x_800.w));
        let x_804 : f32 = u_xlat8.y;
        u_xlat9.w = x_804;
        let x_806 : vec4<f32> = u_xlat9;
        let x_807 : vec2<f32> = vec2<f32>(x_806.y, x_806.z);
        let x_808 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_808.x, x_807.x, x_808.z, x_807.y);
        let x_810 : vec4<f32> = u_xlat6;
        let x_813 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_816 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_810.x, x_810.y, x_810.x, x_810.y) * vec4<f32>(x_813.x, x_813.y, x_813.x, x_813.y)) + vec4<f32>(x_816.x, x_816.y, x_816.z, x_816.y));
        let x_819 : vec4<f32> = u_xlat6;
        let x_822 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_825 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_819.x, x_819.y, x_819.x, x_819.y) * vec4<f32>(x_822.x, x_822.y, x_822.x, x_822.y)) + vec4<f32>(x_825.w, x_825.y, x_825.w, x_825.z));
        let x_828 : vec4<f32> = u_xlat6;
        let x_831 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_834 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_828.x, x_828.y, x_828.x, x_828.y) * vec4<f32>(x_831.x, x_831.y, x_831.x, x_831.y)) + vec4<f32>(x_834.x, x_834.w, x_834.z, x_834.w));
        let x_838 : vec4<f32> = u_xlat7;
        let x_840 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_838.x, x_838.x, x_838.x, x_838.y) * vec4<f32>(x_840.z, x_840.w, x_840.y, x_840.z));
        let x_844 : vec4<f32> = u_xlat7;
        let x_846 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_844.y, x_844.y, x_844.z, x_844.z) * x_846);
        let x_849 : f32 = u_xlat7.z;
        let x_851 : f32 = u_xlat12.y;
        u_xlat6.x = (x_849 * x_851);
        let x_855 : vec4<f32> = u_xlat10;
        let x_856 : vec2<f32> = vec2<f32>(x_855.x, x_855.y);
        let x_858 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_856.x, x_856.y, x_858);
        let x_866 : vec3<f32> = txVec4;
        let x_868 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_866.xy, x_866.z);
        u_xlat26 = x_868;
        let x_870 : vec4<f32> = u_xlat10;
        let x_871 : vec2<f32> = vec2<f32>(x_870.z, x_870.w);
        let x_873 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_871.x, x_871.y, x_873);
        let x_880 : vec3<f32> = txVec5;
        let x_882 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_880.xy, x_880.z);
        u_xlat7.x = x_882;
        let x_885 : f32 = u_xlat7.x;
        let x_887 : f32 = u_xlat13.y;
        u_xlat7.x = (x_885 * x_887);
        let x_891 : f32 = u_xlat13.x;
        let x_892 : f32 = u_xlat26;
        let x_895 : f32 = u_xlat7.x;
        u_xlat26 = ((x_891 * x_892) + x_895);
        let x_898 : vec2<f32> = u_xlat46;
        let x_900 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_898.x, x_898.y, x_900);
        let x_907 : vec3<f32> = txVec6;
        let x_909 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_907.xy, x_907.z);
        u_xlat46.x = x_909;
        let x_912 : f32 = u_xlat13.z;
        let x_914 : f32 = u_xlat46.x;
        let x_916 : f32 = u_xlat26;
        u_xlat26 = ((x_912 * x_914) + x_916);
        let x_919 : vec4<f32> = u_xlat9;
        let x_920 : vec2<f32> = vec2<f32>(x_919.x, x_919.y);
        let x_922 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_920.x, x_920.y, x_922);
        let x_929 : vec3<f32> = txVec7;
        let x_931 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_929.xy, x_929.z);
        u_xlat46.x = x_931;
        let x_934 : f32 = u_xlat13.w;
        let x_936 : f32 = u_xlat46.x;
        let x_938 : f32 = u_xlat26;
        u_xlat26 = ((x_934 * x_936) + x_938);
        let x_941 : vec4<f32> = u_xlat11;
        let x_942 : vec2<f32> = vec2<f32>(x_941.x, x_941.y);
        let x_944 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_942.x, x_942.y, x_944);
        let x_951 : vec3<f32> = txVec8;
        let x_953 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_951.xy, x_951.z);
        u_xlat46.x = x_953;
        let x_956 : f32 = u_xlat14.x;
        let x_958 : f32 = u_xlat46.x;
        let x_960 : f32 = u_xlat26;
        u_xlat26 = ((x_956 * x_958) + x_960);
        let x_963 : vec4<f32> = u_xlat11;
        let x_964 : vec2<f32> = vec2<f32>(x_963.z, x_963.w);
        let x_966 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_964.x, x_964.y, x_966);
        let x_973 : vec3<f32> = txVec9;
        let x_975 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_973.xy, x_973.z);
        u_xlat46.x = x_975;
        let x_978 : f32 = u_xlat14.y;
        let x_980 : f32 = u_xlat46.x;
        let x_982 : f32 = u_xlat26;
        u_xlat26 = ((x_978 * x_980) + x_982);
        let x_985 : vec4<f32> = u_xlat9;
        let x_986 : vec2<f32> = vec2<f32>(x_985.z, x_985.w);
        let x_988 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_986.x, x_986.y, x_988);
        let x_995 : vec3<f32> = txVec10;
        let x_997 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_995.xy, x_995.z);
        u_xlat46.x = x_997;
        let x_1000 : f32 = u_xlat14.z;
        let x_1002 : f32 = u_xlat46.x;
        let x_1004 : f32 = u_xlat26;
        u_xlat26 = ((x_1000 * x_1002) + x_1004);
        let x_1007 : vec4<f32> = u_xlat8;
        let x_1008 : vec2<f32> = vec2<f32>(x_1007.x, x_1007.y);
        let x_1010 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_1008.x, x_1008.y, x_1010);
        let x_1017 : vec3<f32> = txVec11;
        let x_1019 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1017.xy, x_1017.z);
        u_xlat46.x = x_1019;
        let x_1022 : f32 = u_xlat14.w;
        let x_1024 : f32 = u_xlat46.x;
        let x_1026 : f32 = u_xlat26;
        u_xlat26 = ((x_1022 * x_1024) + x_1026);
        let x_1029 : vec4<f32> = u_xlat8;
        let x_1030 : vec2<f32> = vec2<f32>(x_1029.z, x_1029.w);
        let x_1032 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_1030.x, x_1030.y, x_1032);
        let x_1039 : vec3<f32> = txVec12;
        let x_1041 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1039.xy, x_1039.z);
        u_xlat46.x = x_1041;
        let x_1044 : f32 = u_xlat6.x;
        let x_1046 : f32 = u_xlat46.x;
        let x_1048 : f32 = u_xlat26;
        u_xlat65 = ((x_1044 * x_1046) + x_1048);
      } else {
        let x_1051 : vec4<f32> = u_xlat2;
        let x_1054 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1057 : vec2<f32> = ((vec2<f32>(x_1051.x, x_1051.y) * vec2<f32>(x_1054.z, x_1054.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1058 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1057.x, x_1057.y, x_1058.z, x_1058.w);
        let x_1060 : vec4<f32> = u_xlat6;
        let x_1062 : vec2<f32> = floor(vec2<f32>(x_1060.x, x_1060.y));
        let x_1063 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1062.x, x_1062.y, x_1063.z, x_1063.w);
        let x_1065 : vec4<f32> = u_xlat2;
        let x_1068 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1071 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1065.x, x_1065.y) * vec2<f32>(x_1068.z, x_1068.w)) + -(vec2<f32>(x_1071.x, x_1071.y)));
        let x_1075 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1075.x, x_1075.x, x_1075.y, x_1075.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1078 : vec4<f32> = u_xlat7;
        let x_1080 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1078.x, x_1078.x, x_1078.z, x_1078.z) * vec4<f32>(x_1080.x, x_1080.x, x_1080.z, x_1080.z));
        let x_1083 : vec4<f32> = u_xlat8;
        let x_1087 : vec2<f32> = (vec2<f32>(x_1083.y, x_1083.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1088 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1088.x, x_1087.x, x_1088.z, x_1087.y);
        let x_1090 : vec4<f32> = u_xlat8;
        let x_1093 : vec2<f32> = u_xlat46;
        let x_1095 : vec2<f32> = ((vec2<f32>(x_1090.x, x_1090.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1093));
        let x_1096 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1095.x, x_1096.y, x_1095.y, x_1096.w);
        let x_1098 : vec2<f32> = u_xlat46;
        let x_1100 : vec2<f32> = (-(x_1098) + vec2<f32>(1.0f, 1.0f));
        let x_1101 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1100.x, x_1100.y, x_1101.z, x_1101.w);
        let x_1103 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1103, vec2<f32>(0.0f, 0.0f));
        let x_1105 : vec2<f32> = u_xlat48;
        let x_1107 : vec2<f32> = u_xlat48;
        let x_1109 : vec4<f32> = u_xlat8;
        let x_1111 : vec2<f32> = ((-(x_1105) * x_1107) + vec2<f32>(x_1109.x, x_1109.y));
        let x_1112 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1111.x, x_1111.y, x_1112.z, x_1112.w);
        let x_1114 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1114, vec2<f32>(0.0f, 0.0f));
        let x_1117 : vec2<f32> = u_xlat48;
        let x_1119 : vec2<f32> = u_xlat48;
        let x_1121 : vec4<f32> = u_xlat7;
        let x_1123 : vec2<f32> = ((-(x_1117) * x_1119) + vec2<f32>(x_1121.y, x_1121.w));
        let x_1124 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1123.x, x_1124.y, x_1123.y);
        let x_1126 : vec4<f32> = u_xlat8;
        let x_1129 : vec2<f32> = (vec2<f32>(x_1126.x, x_1126.y) + vec2<f32>(2.0f, 2.0f));
        let x_1130 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1129.x, x_1129.y, x_1130.z, x_1130.w);
        let x_1132 : vec3<f32> = u_xlat27;
        let x_1134 : vec2<f32> = (vec2<f32>(x_1132.x, x_1132.z) + vec2<f32>(2.0f, 2.0f));
        let x_1135 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1135.x, x_1134.x, x_1135.z, x_1134.y);
        let x_1138 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1138 * 0.081632003f);
        let x_1142 : vec4<f32> = u_xlat7;
        let x_1145 : vec3<f32> = (vec3<f32>(x_1142.z, x_1142.x, x_1142.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1146 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1145.x, x_1145.y, x_1145.z, x_1146.w);
        let x_1148 : vec4<f32> = u_xlat8;
        let x_1151 : vec2<f32> = (vec2<f32>(x_1148.x, x_1148.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1152 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1151.x, x_1151.y, x_1152.z, x_1152.w);
        let x_1155 : f32 = u_xlat11.y;
        u_xlat10.x = x_1155;
        let x_1157 : vec2<f32> = u_xlat46;
        let x_1164 : vec2<f32> = ((vec2<f32>(x_1157.x, x_1157.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1165 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1165.x, x_1164.x, x_1165.z, x_1164.y);
        let x_1167 : vec2<f32> = u_xlat46;
        let x_1171 : vec2<f32> = ((vec2<f32>(x_1167.x, x_1167.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1172 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1171.x, x_1172.y, x_1171.y, x_1172.w);
        let x_1175 : f32 = u_xlat7.x;
        u_xlat8.y = x_1175;
        let x_1178 : f32 = u_xlat9.y;
        u_xlat8.w = x_1178;
        let x_1180 : vec4<f32> = u_xlat8;
        let x_1181 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1180 + x_1181);
        let x_1183 : vec2<f32> = u_xlat46;
        let x_1186 : vec2<f32> = ((vec2<f32>(x_1183.y, x_1183.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1187 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1187.x, x_1186.x, x_1187.z, x_1186.y);
        let x_1189 : vec2<f32> = u_xlat46;
        let x_1192 : vec2<f32> = ((vec2<f32>(x_1189.y, x_1189.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1193 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1192.x, x_1193.y, x_1192.y, x_1193.w);
        let x_1196 : f32 = u_xlat7.y;
        u_xlat9.y = x_1196;
        let x_1198 : vec4<f32> = u_xlat9;
        let x_1199 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1198 + x_1199);
        let x_1201 : vec4<f32> = u_xlat8;
        let x_1202 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1201 / x_1202);
        let x_1204 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1204 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1210 : vec4<f32> = u_xlat9;
        let x_1211 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1210 / x_1211);
        let x_1213 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1213 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1215 : vec4<f32> = u_xlat8;
        let x_1218 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1215.w, x_1215.x, x_1215.y, x_1215.z) * vec4<f32>(x_1218.x, x_1218.x, x_1218.x, x_1218.x));
        let x_1221 : vec4<f32> = u_xlat9;
        let x_1224 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1221.x, x_1221.w, x_1221.y, x_1221.z) * vec4<f32>(x_1224.y, x_1224.y, x_1224.y, x_1224.y));
        let x_1227 : vec4<f32> = u_xlat8;
        let x_1228 : vec3<f32> = vec3<f32>(x_1227.y, x_1227.z, x_1227.w);
        let x_1229 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1228.x, x_1229.y, x_1228.y, x_1228.z);
        let x_1232 : f32 = u_xlat9.x;
        u_xlat11.y = x_1232;
        let x_1234 : vec4<f32> = u_xlat6;
        let x_1237 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1240 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1234.x, x_1234.y, x_1234.x, x_1234.y) * vec4<f32>(x_1237.x, x_1237.y, x_1237.x, x_1237.y)) + vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1240.y));
        let x_1243 : vec4<f32> = u_xlat6;
        let x_1246 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1243.x, x_1243.y) * vec2<f32>(x_1246.x, x_1246.y)) + vec2<f32>(x_1249.w, x_1249.y));
        let x_1253 : f32 = u_xlat11.y;
        u_xlat8.y = x_1253;
        let x_1256 : f32 = u_xlat9.z;
        u_xlat11.y = x_1256;
        let x_1258 : vec4<f32> = u_xlat6;
        let x_1261 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1264 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1258.x, x_1258.y, x_1258.x, x_1258.y) * vec4<f32>(x_1261.x, x_1261.y, x_1261.x, x_1261.y)) + vec4<f32>(x_1264.x, x_1264.y, x_1264.z, x_1264.y));
        let x_1267 : vec4<f32> = u_xlat6;
        let x_1270 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1273 : vec4<f32> = u_xlat11;
        let x_1275 : vec2<f32> = ((vec2<f32>(x_1267.x, x_1267.y) * vec2<f32>(x_1270.x, x_1270.y)) + vec2<f32>(x_1273.w, x_1273.y));
        let x_1276 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1275.x, x_1275.y, x_1276.z, x_1276.w);
        let x_1279 : f32 = u_xlat11.y;
        u_xlat8.z = x_1279;
        let x_1282 : vec4<f32> = u_xlat6;
        let x_1285 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1288 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1282.x, x_1282.y, x_1282.x, x_1282.y) * vec4<f32>(x_1285.x, x_1285.y, x_1285.x, x_1285.y)) + vec4<f32>(x_1288.x, x_1288.y, x_1288.x, x_1288.z));
        let x_1292 : f32 = u_xlat9.w;
        u_xlat11.y = x_1292;
        let x_1295 : vec4<f32> = u_xlat6;
        let x_1298 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1301 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y) * vec4<f32>(x_1298.x, x_1298.y, x_1298.x, x_1298.y)) + vec4<f32>(x_1301.x, x_1301.y, x_1301.z, x_1301.y));
        let x_1305 : vec4<f32> = u_xlat6;
        let x_1308 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1311 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1305.x, x_1305.y) * vec2<f32>(x_1308.x, x_1308.y)) + vec2<f32>(x_1311.w, x_1311.y));
        let x_1315 : f32 = u_xlat11.y;
        u_xlat8.w = x_1315;
        let x_1318 : vec4<f32> = u_xlat6;
        let x_1321 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1324 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1318.x, x_1318.y) * vec2<f32>(x_1321.x, x_1321.y)) + vec2<f32>(x_1324.x, x_1324.w));
        let x_1327 : vec4<f32> = u_xlat11;
        let x_1328 : vec3<f32> = vec3<f32>(x_1327.x, x_1327.z, x_1327.w);
        let x_1329 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1328.x, x_1329.y, x_1328.y, x_1328.z);
        let x_1331 : vec4<f32> = u_xlat6;
        let x_1334 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1337 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1331.x, x_1331.y, x_1331.x, x_1331.y) * vec4<f32>(x_1334.x, x_1334.y, x_1334.x, x_1334.y)) + vec4<f32>(x_1337.x, x_1337.y, x_1337.z, x_1337.y));
        let x_1341 : vec4<f32> = u_xlat6;
        let x_1344 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1347 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1341.x, x_1341.y) * vec2<f32>(x_1344.x, x_1344.y)) + vec2<f32>(x_1347.w, x_1347.y));
        let x_1351 : f32 = u_xlat8.x;
        u_xlat9.x = x_1351;
        let x_1353 : vec4<f32> = u_xlat6;
        let x_1356 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1359 : vec4<f32> = u_xlat9;
        let x_1361 : vec2<f32> = ((vec2<f32>(x_1353.x, x_1353.y) * vec2<f32>(x_1356.x, x_1356.y)) + vec2<f32>(x_1359.x, x_1359.y));
        let x_1362 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1361.x, x_1361.y, x_1362.z, x_1362.w);
        let x_1365 : vec4<f32> = u_xlat7;
        let x_1367 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1365.x, x_1365.x, x_1365.x, x_1365.x) * x_1367);
        let x_1370 : vec4<f32> = u_xlat7;
        let x_1372 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1370.y, x_1370.y, x_1370.y, x_1370.y) * x_1372);
        let x_1375 : vec4<f32> = u_xlat7;
        let x_1377 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1375.z, x_1375.z, x_1375.z, x_1375.z) * x_1377);
        let x_1379 : vec4<f32> = u_xlat7;
        let x_1381 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1379.w, x_1379.w, x_1379.w, x_1379.w) * x_1381);
        let x_1384 : vec4<f32> = u_xlat12;
        let x_1385 : vec2<f32> = vec2<f32>(x_1384.x, x_1384.y);
        let x_1387 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1385.x, x_1385.y, x_1387);
        let x_1394 : vec3<f32> = txVec13;
        let x_1396 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1394.xy, x_1394.z);
        u_xlat8.x = x_1396;
        let x_1399 : vec4<f32> = u_xlat12;
        let x_1400 : vec2<f32> = vec2<f32>(x_1399.z, x_1399.w);
        let x_1402 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1400.x, x_1400.y, x_1402);
        let x_1410 : vec3<f32> = txVec14;
        let x_1412 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1410.xy, x_1410.z);
        u_xlat68 = x_1412;
        let x_1413 : f32 = u_xlat68;
        let x_1415 : f32 = u_xlat17.y;
        u_xlat68 = (x_1413 * x_1415);
        let x_1418 : f32 = u_xlat17.x;
        let x_1420 : f32 = u_xlat8.x;
        let x_1422 : f32 = u_xlat68;
        u_xlat8.x = ((x_1418 * x_1420) + x_1422);
        let x_1426 : vec2<f32> = u_xlat46;
        let x_1428 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1426.x, x_1426.y, x_1428);
        let x_1435 : vec3<f32> = txVec15;
        let x_1437 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1435.xy, x_1435.z);
        u_xlat46.x = x_1437;
        let x_1440 : f32 = u_xlat17.z;
        let x_1442 : f32 = u_xlat46.x;
        let x_1445 : f32 = u_xlat8.x;
        u_xlat46.x = ((x_1440 * x_1442) + x_1445);
        let x_1449 : vec4<f32> = u_xlat15;
        let x_1450 : vec2<f32> = vec2<f32>(x_1449.x, x_1449.y);
        let x_1452 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1450.x, x_1450.y, x_1452);
        let x_1460 : vec3<f32> = txVec16;
        let x_1462 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1460.xy, x_1460.z);
        u_xlat66 = x_1462;
        let x_1464 : f32 = u_xlat17.w;
        let x_1465 : f32 = u_xlat66;
        let x_1468 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1464 * x_1465) + x_1468);
        let x_1472 : vec4<f32> = u_xlat13;
        let x_1473 : vec2<f32> = vec2<f32>(x_1472.x, x_1472.y);
        let x_1475 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1473.x, x_1473.y, x_1475);
        let x_1482 : vec3<f32> = txVec17;
        let x_1484 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1482.xy, x_1482.z);
        u_xlat66 = x_1484;
        let x_1486 : f32 = u_xlat18.x;
        let x_1487 : f32 = u_xlat66;
        let x_1490 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1486 * x_1487) + x_1490);
        let x_1494 : vec4<f32> = u_xlat13;
        let x_1495 : vec2<f32> = vec2<f32>(x_1494.z, x_1494.w);
        let x_1497 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1495.x, x_1495.y, x_1497);
        let x_1504 : vec3<f32> = txVec18;
        let x_1506 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1504.xy, x_1504.z);
        u_xlat66 = x_1506;
        let x_1508 : f32 = u_xlat18.y;
        let x_1509 : f32 = u_xlat66;
        let x_1512 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1508 * x_1509) + x_1512);
        let x_1516 : vec4<f32> = u_xlat14;
        let x_1517 : vec2<f32> = vec2<f32>(x_1516.x, x_1516.y);
        let x_1519 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1517.x, x_1517.y, x_1519);
        let x_1526 : vec3<f32> = txVec19;
        let x_1528 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1526.xy, x_1526.z);
        u_xlat66 = x_1528;
        let x_1530 : f32 = u_xlat18.z;
        let x_1531 : f32 = u_xlat66;
        let x_1534 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1530 * x_1531) + x_1534);
        let x_1538 : vec4<f32> = u_xlat15;
        let x_1539 : vec2<f32> = vec2<f32>(x_1538.z, x_1538.w);
        let x_1541 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1539.x, x_1539.y, x_1541);
        let x_1548 : vec3<f32> = txVec20;
        let x_1550 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1548.xy, x_1548.z);
        u_xlat66 = x_1550;
        let x_1552 : f32 = u_xlat18.w;
        let x_1553 : f32 = u_xlat66;
        let x_1556 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1552 * x_1553) + x_1556);
        let x_1560 : vec4<f32> = u_xlat16;
        let x_1561 : vec2<f32> = vec2<f32>(x_1560.x, x_1560.y);
        let x_1563 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1561.x, x_1561.y, x_1563);
        let x_1570 : vec3<f32> = txVec21;
        let x_1572 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1570.xy, x_1570.z);
        u_xlat66 = x_1572;
        let x_1574 : f32 = u_xlat19.x;
        let x_1575 : f32 = u_xlat66;
        let x_1578 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1574 * x_1575) + x_1578);
        let x_1582 : vec4<f32> = u_xlat16;
        let x_1583 : vec2<f32> = vec2<f32>(x_1582.z, x_1582.w);
        let x_1585 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1583.x, x_1583.y, x_1585);
        let x_1592 : vec3<f32> = txVec22;
        let x_1594 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1592.xy, x_1592.z);
        u_xlat66 = x_1594;
        let x_1596 : f32 = u_xlat19.y;
        let x_1597 : f32 = u_xlat66;
        let x_1600 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1596 * x_1597) + x_1600);
        let x_1604 : vec2<f32> = u_xlat28;
        let x_1606 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1604.x, x_1604.y, x_1606);
        let x_1613 : vec3<f32> = txVec23;
        let x_1615 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1613.xy, x_1613.z);
        u_xlat66 = x_1615;
        let x_1617 : f32 = u_xlat19.z;
        let x_1618 : f32 = u_xlat66;
        let x_1621 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1617 * x_1618) + x_1621);
        let x_1625 : vec2<f32> = u_xlat54;
        let x_1627 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1625.x, x_1625.y, x_1627);
        let x_1634 : vec3<f32> = txVec24;
        let x_1636 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1634.xy, x_1634.z);
        u_xlat66 = x_1636;
        let x_1638 : f32 = u_xlat19.w;
        let x_1639 : f32 = u_xlat66;
        let x_1642 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1638 * x_1639) + x_1642);
        let x_1646 : vec4<f32> = u_xlat11;
        let x_1647 : vec2<f32> = vec2<f32>(x_1646.x, x_1646.y);
        let x_1649 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1647.x, x_1647.y, x_1649);
        let x_1656 : vec3<f32> = txVec25;
        let x_1658 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1656.xy, x_1656.z);
        u_xlat66 = x_1658;
        let x_1660 : f32 = u_xlat7.x;
        let x_1661 : f32 = u_xlat66;
        let x_1664 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1660 * x_1661) + x_1664);
        let x_1668 : vec4<f32> = u_xlat11;
        let x_1669 : vec2<f32> = vec2<f32>(x_1668.z, x_1668.w);
        let x_1671 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1669.x, x_1669.y, x_1671);
        let x_1678 : vec3<f32> = txVec26;
        let x_1680 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1678.xy, x_1678.z);
        u_xlat66 = x_1680;
        let x_1682 : f32 = u_xlat7.y;
        let x_1683 : f32 = u_xlat66;
        let x_1686 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1682 * x_1683) + x_1686);
        let x_1690 : vec2<f32> = u_xlat49;
        let x_1692 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1690.x, x_1690.y, x_1692);
        let x_1699 : vec3<f32> = txVec27;
        let x_1701 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1699.xy, x_1699.z);
        u_xlat66 = x_1701;
        let x_1703 : f32 = u_xlat7.z;
        let x_1704 : f32 = u_xlat66;
        let x_1707 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1703 * x_1704) + x_1707);
        let x_1711 : vec4<f32> = u_xlat6;
        let x_1712 : vec2<f32> = vec2<f32>(x_1711.x, x_1711.y);
        let x_1714 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1712.x, x_1712.y, x_1714);
        let x_1721 : vec3<f32> = txVec28;
        let x_1723 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1721.xy, x_1721.z);
        u_xlat6.x = x_1723;
        let x_1726 : f32 = u_xlat7.w;
        let x_1728 : f32 = u_xlat6.x;
        let x_1731 : f32 = u_xlat46.x;
        u_xlat65 = ((x_1726 * x_1728) + x_1731);
      }
    }
  } else {
    let x_1735 : vec4<f32> = u_xlat2;
    let x_1736 : vec2<f32> = vec2<f32>(x_1735.x, x_1735.y);
    let x_1738 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1736.x, x_1736.y, x_1738);
    let x_1745 : vec3<f32> = txVec29;
    let x_1747 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1745.xy, x_1745.z);
    u_xlat65 = x_1747;
  }
  let x_1749 : f32 = x_91.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1749) + 1.0f);
  let x_1753 : f32 = u_xlat65;
  let x_1755 : f32 = x_91.x_MainLightShadowParams.x;
  let x_1758 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1753 * x_1755) + x_1758);
  let x_1763 : f32 = u_xlat2.z;
  u_xlatb22.x = (0.0f >= x_1763);
  let x_1768 : f32 = u_xlat2.z;
  u_xlatb42 = (x_1768 >= 1.0f);
  let x_1770 : bool = u_xlatb42;
  let x_1772 : bool = u_xlatb22.x;
  u_xlatb22.x = (x_1770 | x_1772);
  let x_1776 : bool = u_xlatb22.x;
  if (x_1776) {
    x_1777 = 1.0f;
  } else {
    let x_1782 : f32 = u_xlat2.x;
    x_1777 = x_1782;
  }
  let x_1783 : f32 = x_1777;
  u_xlat2.x = x_1783;
  let x_1785 : vec3<f32> = vs_TEXCOORD7;
  let x_1788 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1790 : vec3<f32> = (x_1785 + -(x_1788));
  let x_1791 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1790.x, x_1790.y, x_1790.z, x_1791.w);
  let x_1793 : vec4<f32> = u_xlat6;
  let x_1795 : vec4<f32> = u_xlat6;
  u_xlat22.x = dot(vec3<f32>(x_1793.x, x_1793.y, x_1793.z), vec3<f32>(x_1795.x, x_1795.y, x_1795.z));
  let x_1800 : f32 = u_xlat22.x;
  let x_1802 : f32 = x_91.x_MainLightShadowParams.z;
  let x_1805 : f32 = x_91.x_MainLightShadowParams.w;
  u_xlat22.x = ((x_1800 * x_1802) + x_1805);
  let x_1809 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_1809, 0.0f, 1.0f);
  let x_1814 : f32 = u_xlat2.x;
  u_xlat42 = (-(x_1814) + 1.0f);
  let x_1818 : f32 = u_xlat22.x;
  let x_1819 : f32 = u_xlat42;
  let x_1822 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1818 * x_1819) + x_1822);
  let x_1831 : f32 = x_1829.x_MainLightCookieTextureFormat;
  u_xlatb22.x = !((x_1831 == -1.0f));
  let x_1835 : bool = u_xlatb22.x;
  if (x_1835) {
    let x_1838 : vec3<f32> = vs_TEXCOORD7;
    let x_1841 : vec4<f32> = x_1829.x_MainLightWorldToLight[1i];
    let x_1843 : vec2<f32> = (vec2<f32>(x_1838.y, x_1838.y) * vec2<f32>(x_1841.x, x_1841.y));
    let x_1844 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1843.x, x_1843.y, x_1844.z);
    let x_1847 : vec4<f32> = x_1829.x_MainLightWorldToLight[0i];
    let x_1849 : vec3<f32> = vs_TEXCOORD7;
    let x_1852 : vec3<f32> = u_xlat22;
    let x_1854 : vec2<f32> = ((vec2<f32>(x_1847.x, x_1847.y) * vec2<f32>(x_1849.x, x_1849.x)) + vec2<f32>(x_1852.x, x_1852.y));
    let x_1855 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1854.x, x_1854.y, x_1855.z);
    let x_1858 : vec4<f32> = x_1829.x_MainLightWorldToLight[2i];
    let x_1860 : vec3<f32> = vs_TEXCOORD7;
    let x_1863 : vec3<f32> = u_xlat22;
    let x_1865 : vec2<f32> = ((vec2<f32>(x_1858.x, x_1858.y) * vec2<f32>(x_1860.z, x_1860.z)) + vec2<f32>(x_1863.x, x_1863.y));
    let x_1866 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1865.x, x_1865.y, x_1866.z);
    let x_1868 : vec3<f32> = u_xlat22;
    let x_1871 : vec4<f32> = x_1829.x_MainLightWorldToLight[3i];
    let x_1873 : vec2<f32> = (vec2<f32>(x_1868.x, x_1868.y) + vec2<f32>(x_1871.x, x_1871.y));
    let x_1874 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1873.x, x_1873.y, x_1874.z);
    let x_1876 : vec3<f32> = u_xlat22;
    let x_1879 : vec2<f32> = ((vec2<f32>(x_1876.x, x_1876.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1880 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1879.x, x_1879.y, x_1880.z);
    let x_1887 : vec3<f32> = u_xlat22;
    let x_1890 : f32 = x_44.x_GlobalMipBias.x;
    let x_1891 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1887.x, x_1887.y), x_1890);
    u_xlat6 = x_1891;
    let x_1893 : f32 = x_1829.x_MainLightCookieTextureFormat;
    let x_1895 : f32 = x_1829.x_MainLightCookieTextureFormat;
    let x_1897 : f32 = x_1829.x_MainLightCookieTextureFormat;
    let x_1899 : f32 = x_1829.x_MainLightCookieTextureFormat;
    let x_1900 : vec4<f32> = vec4<f32>(x_1893, x_1895, x_1897, x_1899);
    let x_1907 : vec4<bool> = (vec4<f32>(x_1900.x, x_1900.y, x_1900.z, x_1900.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb22 = vec2<bool>(x_1907.x, x_1907.y);
    let x_1910 : bool = u_xlatb22.y;
    if (x_1910) {
      let x_1915 : f32 = u_xlat6.w;
      x_1911 = x_1915;
    } else {
      let x_1918 : f32 = u_xlat6.x;
      x_1911 = x_1918;
    }
    let x_1919 : f32 = x_1911;
    u_xlat42 = x_1919;
    let x_1921 : bool = u_xlatb22.x;
    if (x_1921) {
      let x_1925 : vec4<f32> = u_xlat6;
      x_1922 = vec3<f32>(x_1925.x, x_1925.y, x_1925.z);
    } else {
      let x_1928 : f32 = u_xlat42;
      x_1922 = vec3<f32>(x_1928, x_1928, x_1928);
    }
    let x_1930 : vec3<f32> = x_1922;
    let x_1931 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1930.x, x_1930.y, x_1930.z, x_1931.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1937 : vec4<f32> = u_xlat6;
  let x_1940 : vec4<f32> = x_44.x_MainLightColor;
  let x_1942 : vec3<f32> = (vec3<f32>(x_1937.x, x_1937.y, x_1937.z) * vec3<f32>(x_1940.x, x_1940.y, x_1940.z));
  let x_1943 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1942.x, x_1942.y, x_1942.z, x_1943.w);
  let x_1945 : f32 = u_xlat44;
  let x_1947 : vec4<f32> = u_xlat6;
  let x_1949 : vec3<f32> = (vec3<f32>(x_1945, x_1945, x_1945) * vec3<f32>(x_1947.x, x_1947.y, x_1947.z));
  let x_1950 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1949.x, x_1949.y, x_1949.z, x_1950.w);
  let x_1953 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1953;
  let x_1957 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1957;
  let x_1961 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1961;
  let x_1963 : vec4<f32> = u_xlat7;
  let x_1966 : vec3<f32> = u_xlat21;
  u_xlat22.x = dot(-(vec3<f32>(x_1963.x, x_1963.y, x_1963.z)), x_1966);
  let x_1970 : f32 = u_xlat22.x;
  let x_1972 : f32 = u_xlat22.x;
  u_xlat22.x = (x_1970 + x_1972);
  let x_1975 : vec3<f32> = u_xlat21;
  let x_1976 : vec3<f32> = u_xlat22;
  let x_1980 : vec4<f32> = u_xlat7;
  let x_1983 : vec3<f32> = ((x_1975 * -(vec3<f32>(x_1976.x, x_1976.x, x_1976.x))) + -(vec3<f32>(x_1980.x, x_1980.y, x_1980.z)));
  let x_1984 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1983.x, x_1983.y, x_1983.z, x_1984.w);
  let x_1986 : vec3<f32> = u_xlat21;
  let x_1987 : vec4<f32> = u_xlat7;
  u_xlat22.x = dot(x_1986, vec3<f32>(x_1987.x, x_1987.y, x_1987.z));
  let x_1992 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_1992, 0.0f, 1.0f);
  let x_1996 : f32 = u_xlat22.x;
  u_xlat22.x = (-(x_1996) + 1.0f);
  let x_2001 : f32 = u_xlat22.x;
  let x_2003 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2001 * x_2003);
  let x_2007 : f32 = u_xlat22.x;
  let x_2009 : f32 = u_xlat22.x;
  u_xlat22.x = (x_2007 * x_2009);
  let x_2012 : f32 = u_xlat1;
  u_xlat42 = ((-(x_2012) * 0.699999988f) + 1.700000048f);
  let x_2018 : f32 = u_xlat1;
  let x_2019 : f32 = u_xlat42;
  u_xlat1 = (x_2018 * x_2019);
  let x_2021 : f32 = u_xlat1;
  u_xlat1 = (x_2021 * 6.0f);
  let x_2032 : vec4<f32> = u_xlat8;
  let x_2034 : f32 = u_xlat1;
  let x_2035 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_2032.x, x_2032.y, x_2032.z), x_2034);
  u_xlat8 = x_2035;
  let x_2037 : f32 = u_xlat8.w;
  u_xlat1 = (x_2037 + -1.0f);
  let x_2044 : f32 = x_2042.unity_SpecCube0_HDR.w;
  let x_2045 : f32 = u_xlat1;
  u_xlat1 = ((x_2044 * x_2045) + 1.0f);
  let x_2048 : f32 = u_xlat1;
  u_xlat1 = max(x_2048, 0.0f);
  let x_2050 : f32 = u_xlat1;
  u_xlat1 = log2(x_2050);
  let x_2052 : f32 = u_xlat1;
  let x_2054 : f32 = x_2042.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_2052 * x_2054);
  let x_2056 : f32 = u_xlat1;
  u_xlat1 = exp2(x_2056);
  let x_2058 : f32 = u_xlat1;
  let x_2060 : f32 = x_2042.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_2058 * x_2060);
  let x_2062 : vec4<f32> = u_xlat8;
  let x_2064 : f32 = u_xlat1;
  let x_2066 : vec3<f32> = (vec3<f32>(x_2062.x, x_2062.y, x_2062.z) * vec3<f32>(x_2064, x_2064, x_2064));
  let x_2067 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2066.x, x_2066.y, x_2066.z, x_2067.w);
  let x_2069 : f32 = u_xlat63;
  let x_2071 : f32 = u_xlat63;
  let x_2075 : vec2<f32> = ((vec2<f32>(x_2069, x_2069) * vec2<f32>(x_2071, x_2071)) + vec2<f32>(-1.0f, 1.0f));
  let x_2076 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2075.x, x_2075.y, x_2076.z, x_2076.w);
  let x_2079 : f32 = u_xlat9.y;
  u_xlat1 = (1.0f / x_2079);
  let x_2082 : vec4<f32> = u_xlat0;
  let x_2085 : f32 = u_xlat60;
  u_xlat29 = (-(vec3<f32>(x_2082.x, x_2082.y, x_2082.z)) + vec3<f32>(x_2085, x_2085, x_2085));
  let x_2088 : vec3<f32> = u_xlat22;
  let x_2090 : vec3<f32> = u_xlat29;
  let x_2092 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2088.x, x_2088.x, x_2088.x) * x_2090) + vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
  let x_2095 : f32 = u_xlat1;
  let x_2097 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2095, x_2095, x_2095) * x_2097);
  let x_2099 : vec4<f32> = u_xlat8;
  let x_2101 : vec3<f32> = u_xlat29;
  let x_2102 : vec3<f32> = (vec3<f32>(x_2099.x, x_2099.y, x_2099.z) * x_2101);
  let x_2103 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2102.x, x_2102.y, x_2102.z, x_2103.w);
  let x_2105 : vec4<f32> = u_xlat3;
  let x_2107 : vec3<f32> = u_xlat5;
  let x_2109 : vec4<f32> = u_xlat8;
  let x_2111 : vec3<f32> = ((vec3<f32>(x_2105.x, x_2105.y, x_2105.z) * x_2107) + vec3<f32>(x_2109.x, x_2109.y, x_2109.z));
  let x_2112 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2111.x, x_2111.y, x_2111.z, x_2112.w);
  let x_2115 : f32 = u_xlat2.x;
  let x_2117 : f32 = x_2042.unity_LightData.z;
  u_xlat60 = (x_2115 * x_2117);
  let x_2119 : vec3<f32> = u_xlat21;
  let x_2121 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_2119, vec3<f32>(x_2121.x, x_2121.y, x_2121.z));
  let x_2124 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2124, 0.0f, 1.0f);
  let x_2126 : f32 = u_xlat60;
  let x_2127 : f32 = u_xlat1;
  u_xlat60 = (x_2126 * x_2127);
  let x_2129 : f32 = u_xlat60;
  let x_2131 : vec4<f32> = u_xlat6;
  let x_2133 : vec3<f32> = (vec3<f32>(x_2129, x_2129, x_2129) * vec3<f32>(x_2131.x, x_2131.y, x_2131.z));
  let x_2134 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2133.x, x_2133.y, x_2133.z, x_2134.w);
  let x_2136 : vec4<f32> = u_xlat7;
  let x_2139 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2141 : vec3<f32> = (vec3<f32>(x_2136.x, x_2136.y, x_2136.z) + vec3<f32>(x_2139.x, x_2139.y, x_2139.z));
  let x_2142 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2141.x, x_2141.y, x_2141.z, x_2142.w);
  let x_2144 : vec4<f32> = u_xlat6;
  let x_2146 : vec4<f32> = u_xlat6;
  u_xlat60 = dot(vec3<f32>(x_2144.x, x_2144.y, x_2144.z), vec3<f32>(x_2146.x, x_2146.y, x_2146.z));
  let x_2149 : f32 = u_xlat60;
  u_xlat60 = max(x_2149, 1.17549435e-37f);
  let x_2152 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_2152);
  let x_2154 : f32 = u_xlat60;
  let x_2156 : vec4<f32> = u_xlat6;
  let x_2158 : vec3<f32> = (vec3<f32>(x_2154, x_2154, x_2154) * vec3<f32>(x_2156.x, x_2156.y, x_2156.z));
  let x_2159 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2158.x, x_2158.y, x_2158.z, x_2159.w);
  let x_2161 : vec3<f32> = u_xlat21;
  let x_2162 : vec4<f32> = u_xlat6;
  u_xlat60 = dot(x_2161, vec3<f32>(x_2162.x, x_2162.y, x_2162.z));
  let x_2165 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2165, 0.0f, 1.0f);
  let x_2168 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2170 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_2168.x, x_2168.y, x_2168.z), vec3<f32>(x_2170.x, x_2170.y, x_2170.z));
  let x_2173 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2173, 0.0f, 1.0f);
  let x_2175 : f32 = u_xlat60;
  let x_2176 : f32 = u_xlat60;
  u_xlat60 = (x_2175 * x_2176);
  let x_2178 : f32 = u_xlat60;
  let x_2180 : f32 = u_xlat9.x;
  u_xlat60 = ((x_2178 * x_2180) + 1.000010014f);
  let x_2184 : f32 = u_xlat1;
  let x_2185 : f32 = u_xlat1;
  u_xlat1 = (x_2184 * x_2185);
  let x_2187 : f32 = u_xlat60;
  let x_2188 : f32 = u_xlat60;
  u_xlat60 = (x_2187 * x_2188);
  let x_2190 : f32 = u_xlat1;
  u_xlat1 = max(x_2190, 0.100000001f);
  let x_2193 : f32 = u_xlat60;
  let x_2194 : f32 = u_xlat1;
  u_xlat60 = (x_2193 * x_2194);
  let x_2196 : f32 = u_xlat24;
  let x_2197 : f32 = u_xlat60;
  u_xlat60 = (x_2196 * x_2197);
  let x_2199 : f32 = u_xlat64;
  let x_2200 : f32 = u_xlat60;
  u_xlat60 = (x_2199 / x_2200);
  let x_2202 : vec4<f32> = u_xlat0;
  let x_2204 : f32 = u_xlat60;
  let x_2207 : vec3<f32> = u_xlat5;
  let x_2208 : vec3<f32> = ((vec3<f32>(x_2202.x, x_2202.y, x_2202.z) * vec3<f32>(x_2204, x_2204, x_2204)) + x_2207);
  let x_2209 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
  let x_2211 : vec4<f32> = u_xlat2;
  let x_2213 : vec4<f32> = u_xlat6;
  let x_2215 : vec3<f32> = (vec3<f32>(x_2211.x, x_2211.y, x_2211.z) * vec3<f32>(x_2213.x, x_2213.y, x_2213.z));
  let x_2216 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2215.x, x_2215.y, x_2215.z, x_2216.w);
  let x_2219 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2221 : f32 = x_2042.unity_LightData.y;
  u_xlat60 = min(x_2219, x_2221);
  let x_2224 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2224));
  let x_2228 : f32 = x_1829.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2230 : f32 = x_1829.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2232 : f32 = x_1829.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2234 : f32 = x_1829.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2235 : vec4<f32> = vec4<f32>(x_2228, x_2230, x_2232, x_2234);
  let x_2241 : vec4<bool> = (vec4<f32>(x_2235.x, x_2235.y, x_2235.z, x_2235.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2241.x, x_2241.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2252 : u32 = u_xlatu_loop_1;
    let x_2253 : u32 = u_xlatu60;
    if ((x_2252 < x_2253)) {
    } else {
      break;
    }
    let x_2256 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_2256 >> 2u);
    let x_2259 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2259 & 3u));
    let x_2262 : u32 = u_xlatu63;
    let x_2265 : vec4<f32> = x_2042.unity_LightIndices[bitcast<i32>(x_2262)];
    let x_2275 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2280 : vec4<u32> = indexable[x_2275];
    u_xlat63 = dot(x_2265, bitcast<vec4<f32>>(x_2280));
    let x_2283 : f32 = u_xlat63;
    u_xlatu63 = bitcast<u32>(i32(x_2283));
    let x_2286 : vec3<f32> = vs_TEXCOORD7;
    let x_2298 : u32 = u_xlatu63;
    let x_2301 : vec4<f32> = x_2297.x_AdditionalLightsPosition[bitcast<i32>(x_2298)];
    let x_2304 : u32 = u_xlatu63;
    let x_2307 : vec4<f32> = x_2297.x_AdditionalLightsPosition[bitcast<i32>(x_2304)];
    u_xlat29 = ((-(x_2286) * vec3<f32>(x_2301.w, x_2301.w, x_2301.w)) + vec3<f32>(x_2307.x, x_2307.y, x_2307.z));
    let x_2310 : vec3<f32> = u_xlat29;
    let x_2311 : vec3<f32> = u_xlat29;
    u_xlat65 = dot(x_2310, x_2311);
    let x_2313 : f32 = u_xlat65;
    u_xlat65 = max(x_2313, 6.10351562e-05f);
    let x_2316 : f32 = u_xlat65;
    u_xlat46.x = inverseSqrt(x_2316);
    let x_2319 : vec2<f32> = u_xlat46;
    let x_2321 : vec3<f32> = u_xlat29;
    let x_2322 : vec3<f32> = (vec3<f32>(x_2319.x, x_2319.x, x_2319.x) * x_2321);
    let x_2323 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2322.x, x_2322.y, x_2322.z, x_2323.w);
    let x_2325 : f32 = u_xlat65;
    u_xlat66 = (1.0f / x_2325);
    let x_2327 : f32 = u_xlat65;
    let x_2328 : u32 = u_xlatu63;
    let x_2331 : f32 = x_2297.x_AdditionalLightsAttenuation[bitcast<i32>(x_2328)].x;
    u_xlat65 = (x_2327 * x_2331);
    let x_2333 : f32 = u_xlat65;
    let x_2335 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2333) * x_2335) + 1.0f);
    let x_2338 : f32 = u_xlat65;
    u_xlat65 = max(x_2338, 0.0f);
    let x_2340 : f32 = u_xlat65;
    let x_2341 : f32 = u_xlat65;
    u_xlat65 = (x_2340 * x_2341);
    let x_2343 : f32 = u_xlat65;
    let x_2344 : f32 = u_xlat66;
    u_xlat65 = (x_2343 * x_2344);
    let x_2346 : u32 = u_xlatu63;
    let x_2349 : vec4<f32> = x_2297.x_AdditionalLightsSpotDir[bitcast<i32>(x_2346)];
    let x_2351 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2349.x, x_2349.y, x_2349.z), vec3<f32>(x_2351.x, x_2351.y, x_2351.z));
    let x_2354 : f32 = u_xlat66;
    let x_2355 : u32 = u_xlatu63;
    let x_2358 : f32 = x_2297.x_AdditionalLightsAttenuation[bitcast<i32>(x_2355)].z;
    let x_2360 : u32 = u_xlatu63;
    let x_2363 : f32 = x_2297.x_AdditionalLightsAttenuation[bitcast<i32>(x_2360)].w;
    u_xlat66 = ((x_2354 * x_2358) + x_2363);
    let x_2365 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2365, 0.0f, 1.0f);
    let x_2367 : f32 = u_xlat66;
    let x_2368 : f32 = u_xlat66;
    u_xlat66 = (x_2367 * x_2368);
    let x_2370 : f32 = u_xlat65;
    let x_2371 : f32 = u_xlat66;
    u_xlat65 = (x_2370 * x_2371);
    let x_2374 : u32 = u_xlatu63;
    u_xlatu66 = (x_2374 >> 5u);
    let x_2377 : u32 = u_xlatu63;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2377) & 31i)));
    let x_2383 : i32 = u_xlati67;
    let x_2385 : u32 = u_xlatu66;
    let x_2388 : f32 = x_1829.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2385)].el;
    u_xlati66 = bitcast<i32>((bitcast<u32>(x_2383) & bitcast<u32>(x_2388)));
    let x_2392 : i32 = u_xlati66;
    if ((x_2392 != 0i)) {
      let x_2402 : u32 = u_xlatu63;
      let x_2405 : f32 = x_2401.x_AdditionalLightsLightTypes[bitcast<i32>(x_2402)].el;
      u_xlati66 = i32(x_2405);
      let x_2407 : i32 = u_xlati66;
      u_xlati67 = select(1i, 0i, (x_2407 != 0i));
      let x_2411 : u32 = u_xlatu63;
      u_xlati68 = (bitcast<i32>(x_2411) << bitcast<u32>(2i));
      let x_2414 : i32 = u_xlati67;
      if ((x_2414 != 0i)) {
        let x_2418 : vec3<f32> = vs_TEXCOORD7;
        let x_2420 : i32 = u_xlati68;
        let x_2423 : i32 = u_xlati68;
        let x_2427 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2420 + 1i) / 4i)][((x_2423 + 1i) % 4i)];
        let x_2429 : vec3<f32> = (vec3<f32>(x_2418.y, x_2418.y, x_2418.y) * vec3<f32>(x_2427.x, x_2427.y, x_2427.w));
        let x_2430 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2429.x, x_2429.y, x_2429.z, x_2430.w);
        let x_2432 : i32 = u_xlati68;
        let x_2434 : i32 = u_xlati68;
        let x_2437 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[(x_2432 / 4i)][(x_2434 % 4i)];
        let x_2439 : vec3<f32> = vs_TEXCOORD7;
        let x_2442 : vec4<f32> = u_xlat11;
        let x_2444 : vec3<f32> = ((vec3<f32>(x_2437.x, x_2437.y, x_2437.w) * vec3<f32>(x_2439.x, x_2439.x, x_2439.x)) + vec3<f32>(x_2442.x, x_2442.y, x_2442.z));
        let x_2445 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2444.x, x_2444.y, x_2444.z, x_2445.w);
        let x_2447 : i32 = u_xlati68;
        let x_2450 : i32 = u_xlati68;
        let x_2454 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2447 + 2i) / 4i)][((x_2450 + 2i) % 4i)];
        let x_2456 : vec3<f32> = vs_TEXCOORD7;
        let x_2459 : vec4<f32> = u_xlat11;
        let x_2461 : vec3<f32> = ((vec3<f32>(x_2454.x, x_2454.y, x_2454.w) * vec3<f32>(x_2456.z, x_2456.z, x_2456.z)) + vec3<f32>(x_2459.x, x_2459.y, x_2459.z));
        let x_2462 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2461.x, x_2461.y, x_2461.z, x_2462.w);
        let x_2464 : vec4<f32> = u_xlat11;
        let x_2466 : i32 = u_xlati68;
        let x_2469 : i32 = u_xlati68;
        let x_2473 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2466 + 3i) / 4i)][((x_2469 + 3i) % 4i)];
        let x_2475 : vec3<f32> = (vec3<f32>(x_2464.x, x_2464.y, x_2464.z) + vec3<f32>(x_2473.x, x_2473.y, x_2473.w));
        let x_2476 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2475.x, x_2475.y, x_2475.z, x_2476.w);
        let x_2478 : vec4<f32> = u_xlat11;
        let x_2480 : vec4<f32> = u_xlat11;
        let x_2482 : vec2<f32> = (vec2<f32>(x_2478.x, x_2478.y) / vec2<f32>(x_2480.z, x_2480.z));
        let x_2483 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2482.x, x_2482.y, x_2483.z, x_2483.w);
        let x_2485 : vec4<f32> = u_xlat11;
        let x_2488 : vec2<f32> = ((vec2<f32>(x_2485.x, x_2485.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2489 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2488.x, x_2488.y, x_2489.z, x_2489.w);
        let x_2491 : vec4<f32> = u_xlat11;
        let x_2495 : vec2<f32> = clamp(vec2<f32>(x_2491.x, x_2491.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2496 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2495.x, x_2495.y, x_2496.z, x_2496.w);
        let x_2498 : u32 = u_xlatu63;
        let x_2501 : vec4<f32> = x_2401.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2498)];
        let x_2503 : vec4<f32> = u_xlat11;
        let x_2506 : u32 = u_xlatu63;
        let x_2509 : vec4<f32> = x_2401.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2506)];
        let x_2511 : vec2<f32> = ((vec2<f32>(x_2501.x, x_2501.y) * vec2<f32>(x_2503.x, x_2503.y)) + vec2<f32>(x_2509.z, x_2509.w));
        let x_2512 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2511.x, x_2511.y, x_2512.z, x_2512.w);
      } else {
        let x_2516 : i32 = u_xlati66;
        u_xlatb66 = (x_2516 == 1i);
        let x_2518 : bool = u_xlatb66;
        u_xlati66 = select(0i, 1i, x_2518);
        let x_2520 : i32 = u_xlati66;
        if ((x_2520 != 0i)) {
          let x_2525 : vec3<f32> = vs_TEXCOORD7;
          let x_2527 : i32 = u_xlati68;
          let x_2530 : i32 = u_xlati68;
          let x_2534 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2527 + 1i) / 4i)][((x_2530 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2525.y, x_2525.y) * vec2<f32>(x_2534.x, x_2534.y));
          let x_2537 : i32 = u_xlati68;
          let x_2539 : i32 = u_xlati68;
          let x_2542 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[(x_2537 / 4i)][(x_2539 % 4i)];
          let x_2544 : vec3<f32> = vs_TEXCOORD7;
          let x_2547 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2542.x, x_2542.y) * vec2<f32>(x_2544.x, x_2544.x)) + x_2547);
          let x_2549 : i32 = u_xlati68;
          let x_2552 : i32 = u_xlati68;
          let x_2556 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2549 + 2i) / 4i)][((x_2552 + 2i) % 4i)];
          let x_2558 : vec3<f32> = vs_TEXCOORD7;
          let x_2561 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2556.x, x_2556.y) * vec2<f32>(x_2558.z, x_2558.z)) + x_2561);
          let x_2563 : vec2<f32> = u_xlat51;
          let x_2564 : i32 = u_xlati68;
          let x_2567 : i32 = u_xlati68;
          let x_2571 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2564 + 3i) / 4i)][((x_2567 + 3i) % 4i)];
          u_xlat51 = (x_2563 + vec2<f32>(x_2571.x, x_2571.y));
          let x_2574 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2574 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2577 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2577);
          let x_2579 : u32 = u_xlatu63;
          let x_2582 : vec4<f32> = x_2401.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2579)];
          let x_2584 : vec2<f32> = u_xlat51;
          let x_2586 : u32 = u_xlatu63;
          let x_2589 : vec4<f32> = x_2401.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2586)];
          let x_2591 : vec2<f32> = ((vec2<f32>(x_2582.x, x_2582.y) * x_2584) + vec2<f32>(x_2589.z, x_2589.w));
          let x_2592 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2591.x, x_2591.y, x_2592.z, x_2592.w);
        } else {
          let x_2595 : vec3<f32> = vs_TEXCOORD7;
          let x_2597 : i32 = u_xlati68;
          let x_2600 : i32 = u_xlati68;
          let x_2604 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2597 + 1i) / 4i)][((x_2600 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2595.y, x_2595.y, x_2595.y, x_2595.y) * x_2604);
          let x_2606 : i32 = u_xlati68;
          let x_2608 : i32 = u_xlati68;
          let x_2611 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[(x_2606 / 4i)][(x_2608 % 4i)];
          let x_2612 : vec3<f32> = vs_TEXCOORD7;
          let x_2615 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2611 * vec4<f32>(x_2612.x, x_2612.x, x_2612.x, x_2612.x)) + x_2615);
          let x_2617 : i32 = u_xlati68;
          let x_2620 : i32 = u_xlati68;
          let x_2624 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2617 + 2i) / 4i)][((x_2620 + 2i) % 4i)];
          let x_2625 : vec3<f32> = vs_TEXCOORD7;
          let x_2628 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2624 * vec4<f32>(x_2625.z, x_2625.z, x_2625.z, x_2625.z)) + x_2628);
          let x_2630 : vec4<f32> = u_xlat12;
          let x_2631 : i32 = u_xlati68;
          let x_2634 : i32 = u_xlati68;
          let x_2638 : vec4<f32> = x_2401.x_AdditionalLightsWorldToLights[((x_2631 + 3i) / 4i)][((x_2634 + 3i) % 4i)];
          u_xlat12 = (x_2630 + x_2638);
          let x_2640 : vec4<f32> = u_xlat12;
          let x_2642 : vec4<f32> = u_xlat12;
          let x_2644 : vec3<f32> = (vec3<f32>(x_2640.x, x_2640.y, x_2640.z) / vec3<f32>(x_2642.w, x_2642.w, x_2642.w));
          let x_2645 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2644.x, x_2644.y, x_2644.z, x_2645.w);
          let x_2647 : vec4<f32> = u_xlat12;
          let x_2649 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(vec3<f32>(x_2647.x, x_2647.y, x_2647.z), vec3<f32>(x_2649.x, x_2649.y, x_2649.z));
          let x_2652 : f32 = u_xlat66;
          u_xlat66 = inverseSqrt(x_2652);
          let x_2654 : f32 = u_xlat66;
          let x_2656 : vec4<f32> = u_xlat12;
          let x_2658 : vec3<f32> = (vec3<f32>(x_2654, x_2654, x_2654) * vec3<f32>(x_2656.x, x_2656.y, x_2656.z));
          let x_2659 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2658.x, x_2658.y, x_2658.z, x_2659.w);
          let x_2661 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(abs(vec3<f32>(x_2661.x, x_2661.y, x_2661.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2666 : f32 = u_xlat66;
          u_xlat66 = max(x_2666, 0.000001f);
          let x_2669 : f32 = u_xlat66;
          u_xlat66 = (1.0f / x_2669);
          let x_2671 : f32 = u_xlat66;
          let x_2673 : vec4<f32> = u_xlat12;
          let x_2675 : vec3<f32> = (vec3<f32>(x_2671, x_2671, x_2671) * vec3<f32>(x_2673.z, x_2673.x, x_2673.y));
          let x_2676 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2675.x, x_2675.y, x_2675.z, x_2676.w);
          let x_2679 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2679);
          let x_2683 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2683, 0.0f, 1.0f);
          let x_2687 : vec4<f32> = u_xlat13;
          let x_2690 : vec4<bool> = (vec4<f32>(x_2687.y, x_2687.z, x_2687.y, x_2687.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2690.x, x_2690.y);
          let x_2693 : bool = u_xlatb51.x;
          if (x_2693) {
            let x_2698 : f32 = u_xlat13.x;
            x_2694 = x_2698;
          } else {
            let x_2701 : f32 = u_xlat13.x;
            x_2694 = -(x_2701);
          }
          let x_2703 : f32 = x_2694;
          u_xlat51.x = x_2703;
          let x_2706 : bool = u_xlatb51.y;
          if (x_2706) {
            let x_2711 : f32 = u_xlat13.x;
            x_2707 = x_2711;
          } else {
            let x_2714 : f32 = u_xlat13.x;
            x_2707 = -(x_2714);
          }
          let x_2716 : f32 = x_2707;
          u_xlat51.y = x_2716;
          let x_2718 : vec4<f32> = u_xlat12;
          let x_2720 : f32 = u_xlat66;
          let x_2723 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2718.x, x_2718.y) * vec2<f32>(x_2720, x_2720)) + x_2723);
          let x_2725 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2725 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2728 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_2728, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2732 : u32 = u_xlatu63;
          let x_2735 : vec4<f32> = x_2401.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2732)];
          let x_2737 : vec2<f32> = u_xlat51;
          let x_2739 : u32 = u_xlatu63;
          let x_2742 : vec4<f32> = x_2401.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2739)];
          let x_2744 : vec2<f32> = ((vec2<f32>(x_2735.x, x_2735.y) * x_2737) + vec2<f32>(x_2742.z, x_2742.w));
          let x_2745 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2744.x, x_2744.y, x_2745.z, x_2745.w);
        }
      }
      let x_2752 : vec4<f32> = u_xlat11;
      let x_2755 : f32 = x_44.x_GlobalMipBias.x;
      let x_2756 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2752.x, x_2752.y), x_2755);
      u_xlat11 = x_2756;
      let x_2758 : bool = u_xlatb6.y;
      if (x_2758) {
        let x_2763 : f32 = u_xlat11.w;
        x_2759 = x_2763;
      } else {
        let x_2766 : f32 = u_xlat11.x;
        x_2759 = x_2766;
      }
      let x_2767 : f32 = x_2759;
      u_xlat66 = x_2767;
      let x_2769 : bool = u_xlatb6.x;
      if (x_2769) {
        let x_2773 : vec4<f32> = u_xlat11;
        x_2770 = vec3<f32>(x_2773.x, x_2773.y, x_2773.z);
      } else {
        let x_2776 : f32 = u_xlat66;
        x_2770 = vec3<f32>(x_2776, x_2776, x_2776);
      }
      let x_2778 : vec3<f32> = x_2770;
      let x_2779 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2778.x, x_2778.y, x_2778.z, x_2779.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2785 : vec4<f32> = u_xlat11;
    let x_2787 : u32 = u_xlatu63;
    let x_2790 : vec4<f32> = x_2297.x_AdditionalLightsColor[bitcast<i32>(x_2787)];
    let x_2792 : vec3<f32> = (vec3<f32>(x_2785.x, x_2785.y, x_2785.z) * vec3<f32>(x_2790.x, x_2790.y, x_2790.z));
    let x_2793 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2792.x, x_2792.y, x_2792.z, x_2793.w);
    let x_2795 : f32 = u_xlat44;
    let x_2797 : vec4<f32> = u_xlat11;
    let x_2799 : vec3<f32> = (vec3<f32>(x_2795, x_2795, x_2795) * vec3<f32>(x_2797.x, x_2797.y, x_2797.z));
    let x_2800 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2799.x, x_2799.y, x_2799.z, x_2800.w);
    let x_2802 : vec3<f32> = u_xlat21;
    let x_2803 : vec4<f32> = u_xlat10;
    u_xlat63 = dot(x_2802, vec3<f32>(x_2803.x, x_2803.y, x_2803.z));
    let x_2806 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2806, 0.0f, 1.0f);
    let x_2808 : f32 = u_xlat63;
    let x_2809 : f32 = u_xlat65;
    u_xlat63 = (x_2808 * x_2809);
    let x_2811 : f32 = u_xlat63;
    let x_2813 : vec4<f32> = u_xlat11;
    let x_2815 : vec3<f32> = (vec3<f32>(x_2811, x_2811, x_2811) * vec3<f32>(x_2813.x, x_2813.y, x_2813.z));
    let x_2816 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2815.x, x_2815.y, x_2815.z, x_2816.w);
    let x_2818 : vec3<f32> = u_xlat29;
    let x_2819 : vec2<f32> = u_xlat46;
    let x_2822 : vec4<f32> = u_xlat7;
    u_xlat29 = ((x_2818 * vec3<f32>(x_2819.x, x_2819.x, x_2819.x)) + vec3<f32>(x_2822.x, x_2822.y, x_2822.z));
    let x_2825 : vec3<f32> = u_xlat29;
    let x_2826 : vec3<f32> = u_xlat29;
    u_xlat63 = dot(x_2825, x_2826);
    let x_2828 : f32 = u_xlat63;
    u_xlat63 = max(x_2828, 1.17549435e-37f);
    let x_2830 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_2830);
    let x_2832 : f32 = u_xlat63;
    let x_2834 : vec3<f32> = u_xlat29;
    u_xlat29 = (vec3<f32>(x_2832, x_2832, x_2832) * x_2834);
    let x_2836 : vec3<f32> = u_xlat21;
    let x_2837 : vec3<f32> = u_xlat29;
    u_xlat63 = dot(x_2836, x_2837);
    let x_2839 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2839, 0.0f, 1.0f);
    let x_2841 : vec4<f32> = u_xlat10;
    let x_2843 : vec3<f32> = u_xlat29;
    u_xlat65 = dot(vec3<f32>(x_2841.x, x_2841.y, x_2841.z), x_2843);
    let x_2845 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2845, 0.0f, 1.0f);
    let x_2847 : f32 = u_xlat63;
    let x_2848 : f32 = u_xlat63;
    u_xlat63 = (x_2847 * x_2848);
    let x_2850 : f32 = u_xlat63;
    let x_2852 : f32 = u_xlat9.x;
    u_xlat63 = ((x_2850 * x_2852) + 1.000010014f);
    let x_2855 : f32 = u_xlat65;
    let x_2856 : f32 = u_xlat65;
    u_xlat65 = (x_2855 * x_2856);
    let x_2858 : f32 = u_xlat63;
    let x_2859 : f32 = u_xlat63;
    u_xlat63 = (x_2858 * x_2859);
    let x_2861 : f32 = u_xlat65;
    u_xlat65 = max(x_2861, 0.100000001f);
    let x_2863 : f32 = u_xlat63;
    let x_2864 : f32 = u_xlat65;
    u_xlat63 = (x_2863 * x_2864);
    let x_2866 : f32 = u_xlat24;
    let x_2867 : f32 = u_xlat63;
    u_xlat63 = (x_2866 * x_2867);
    let x_2869 : f32 = u_xlat64;
    let x_2870 : f32 = u_xlat63;
    u_xlat63 = (x_2869 / x_2870);
    let x_2872 : vec4<f32> = u_xlat0;
    let x_2874 : f32 = u_xlat63;
    let x_2877 : vec3<f32> = u_xlat5;
    u_xlat29 = ((vec3<f32>(x_2872.x, x_2872.y, x_2872.z) * vec3<f32>(x_2874, x_2874, x_2874)) + x_2877);
    let x_2879 : vec3<f32> = u_xlat29;
    let x_2880 : vec4<f32> = u_xlat11;
    let x_2883 : vec4<f32> = u_xlat8;
    let x_2885 : vec3<f32> = ((x_2879 * vec3<f32>(x_2880.x, x_2880.y, x_2880.z)) + vec3<f32>(x_2883.x, x_2883.y, x_2883.z));
    let x_2886 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2885.x, x_2885.y, x_2885.z, x_2886.w);

    continuing {
      let x_2888 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2888 + bitcast<u32>(1i));
    }
  }
  let x_2890 : vec4<f32> = u_xlat3;
  let x_2892 : vec3<f32> = u_xlat4;
  let x_2895 : vec4<f32> = u_xlat2;
  let x_2897 : vec3<f32> = ((vec3<f32>(x_2890.x, x_2890.y, x_2890.z) * vec3<f32>(x_2892.x, x_2892.x, x_2892.x)) + vec3<f32>(x_2895.x, x_2895.y, x_2895.z));
  let x_2898 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2897.x, x_2897.y, x_2897.z, x_2898.w);
  let x_2900 : vec4<f32> = u_xlat8;
  let x_2902 : vec4<f32> = u_xlat0;
  let x_2904 : vec3<f32> = (vec3<f32>(x_2900.x, x_2900.y, x_2900.z) + vec3<f32>(x_2902.x, x_2902.y, x_2902.z));
  let x_2905 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2904.x, x_2904.y, x_2904.z, x_2905.w);
  let x_2907 : f32 = u_xlat62;
  let x_2908 : f32 = u_xlat62;
  u_xlat60 = (x_2907 * -(x_2908));
  let x_2911 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2911);
  let x_2913 : vec4<f32> = u_xlat0;
  let x_2917 : vec4<f32> = x_44.unity_FogColor;
  let x_2920 : vec3<f32> = (vec3<f32>(x_2913.x, x_2913.y, x_2913.z) + -(vec3<f32>(x_2917.x, x_2917.y, x_2917.z)));
  let x_2921 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2920.x, x_2920.y, x_2920.z, x_2921.w);
  let x_2925 : f32 = u_xlat60;
  let x_2927 : vec4<f32> = u_xlat0;
  let x_2931 : vec4<f32> = x_44.unity_FogColor;
  let x_2933 : vec3<f32> = ((vec3<f32>(x_2925, x_2925, x_2925) * vec3<f32>(x_2927.x, x_2927.y, x_2927.z)) + vec3<f32>(x_2931.x, x_2931.y, x_2931.z));
  let x_2934 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2933.x, x_2933.y, x_2933.z, x_2934.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@builtin(position) gl_FragCoord_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD7_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD5_param : vec4<f32>) -> main_out {
  gl_FragCoord = gl_FragCoord_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  main_1();
  return main_out(SV_Target0);
}

