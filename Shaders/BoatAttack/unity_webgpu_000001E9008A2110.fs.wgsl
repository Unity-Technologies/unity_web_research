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

@group(1) @binding(3) var<uniform> x_91 : MainLightShadows;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_Lightmap : sampler;

@group(0) @binding(4) var x_ScreenSpaceOcclusionTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ScreenSpaceOcclusionTexture : sampler;

@group(0) @binding(5) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(13) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(4) var<uniform> x_1790 : LightCookies;

@group(0) @binding(6) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(14) var sampler_MainLightCookieTexture : sampler;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(1) @binding(2) var<uniform> x_2003 : UnityPerDraw;

@group(1) @binding(1) var<uniform> x_2258 : AdditionalLights;

@group(1) @binding(5) var<uniform> x_2362 : AdditionalLightsCookies;

@group(0) @binding(7) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(15) var sampler_AdditionalLightsCookieAtlasTexture : sampler;

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
  var x_1738 : f32;
  var u_xlat42 : f32;
  var x_1872 : f32;
  var x_1883 : vec3<f32>;
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
  var x_2655 : f32;
  var x_2668 : f32;
  var x_2720 : f32;
  var x_2731 : vec3<f32>;
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
  let x_325 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, vec2<f32>(x_321.z, x_321.w), x_324);
  let x_326 : vec3<f32> = vec3<f32>(x_325.x, x_325.y, x_325.z);
  let x_327 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
  let x_331 : vec4<f32> = x_44.x_ScaledScreenParams;
  let x_332 : vec2<f32> = vec2<f32>(x_331.x, x_331.y);
  let x_336 : vec2<f32> = (vec2<f32>(1.0f, 1.0f) / vec2<f32>(x_332.x, x_332.y));
  let x_337 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_336.x, x_336.y, x_337.z);
  let x_339 : vec3<f32> = u_xlat4;
  let x_341 : vec4<f32> = hlslcc_FragCoord;
  let x_343 : vec2<f32> = (vec2<f32>(x_339.x, x_339.y) * vec2<f32>(x_341.x, x_341.y));
  let x_344 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_343.x, x_343.y, x_344.z);
  let x_348 : f32 = u_xlat4.y;
  let x_351 : f32 = x_44.x_ScaleBiasRt.x;
  let x_354 : f32 = x_44.x_ScaleBiasRt.y;
  u_xlat63 = ((x_348 * x_351) + x_354);
  let x_356 : f32 = u_xlat63;
  u_xlat4.z = (-(x_356) + 1.0f);
  let x_360 : f32 = u_xlat1;
  u_xlat63 = ((-(x_360) * 0.959999979f) + 0.959999979f);
  let x_366 : f32 = u_xlat63;
  u_xlat24 = (-(x_366) + 1.0f);
  let x_369 : vec4<f32> = u_xlat0;
  let x_371 : f32 = u_xlat63;
  u_xlat5 = (vec3<f32>(x_369.x, x_369.y, x_369.z) * vec3<f32>(x_371, x_371, x_371));
  let x_374 : vec4<f32> = u_xlat0;
  let x_378 : vec3<f32> = (vec3<f32>(x_374.x, x_374.y, x_374.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_379 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
  let x_381 : f32 = u_xlat1;
  let x_383 : vec4<f32> = u_xlat0;
  let x_388 : vec3<f32> = ((vec3<f32>(x_381, x_381, x_381) * vec3<f32>(x_383.x, x_383.y, x_383.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_389 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
  let x_392 : f32 = u_xlat0.w;
  u_xlat1 = (-(x_392) + 1.0f);
  let x_395 : f32 = u_xlat1;
  let x_396 : f32 = u_xlat1;
  u_xlat63 = (x_395 * x_396);
  let x_398 : f32 = u_xlat63;
  u_xlat63 = max(x_398, 0.0078125f);
  let x_402 : f32 = u_xlat63;
  let x_403 : f32 = u_xlat63;
  u_xlat64 = (x_402 * x_403);
  let x_407 : f32 = u_xlat0.w;
  let x_408 : f32 = u_xlat24;
  u_xlat60 = (x_407 + x_408);
  let x_410 : f32 = u_xlat60;
  u_xlat60 = clamp(x_410, 0.0f, 1.0f);
  let x_412 : f32 = u_xlat63;
  u_xlat24 = ((x_412 * 4.0f) + 2.0f);
  let x_420 : vec3<f32> = u_xlat4;
  let x_423 : f32 = x_44.x_GlobalMipBias.x;
  let x_424 : vec4<f32> = textureSampleBias(x_ScreenSpaceOcclusionTexture, sampler_ScreenSpaceOcclusionTexture, vec2<f32>(x_420.x, x_420.z), x_423);
  u_xlat4.x = x_424.x;
  let x_429 : f32 = u_xlat4.x;
  u_xlat44 = (x_429 + -1.0f);
  let x_432 : f32 = x_44.x_AmbientOcclusionParam.w;
  let x_433 : f32 = u_xlat44;
  u_xlat44 = ((x_432 * x_433) + 1.0f);
  let x_437 : f32 = u_xlat4.x;
  u_xlat4.x = min(x_437, 1.0f);
  let x_442 : f32 = x_91.x_MainLightShadowParams.y;
  u_xlatb65 = (0.0f < x_442);
  let x_444 : bool = u_xlatb65;
  if (x_444) {
    let x_448 : f32 = x_91.x_MainLightShadowParams.y;
    u_xlatb65 = (x_448 == 1.0f);
    let x_450 : bool = u_xlatb65;
    if (x_450) {
      let x_454 : vec4<f32> = u_xlat2;
      let x_458 : vec4<f32> = x_91.x_MainLightShadowOffset0;
      u_xlat6 = (vec4<f32>(x_454.x, x_454.y, x_454.x, x_454.y) + x_458);
      let x_461 : vec4<f32> = u_xlat6;
      let x_462 : vec2<f32> = vec2<f32>(x_461.x, x_461.y);
      let x_464 : f32 = u_xlat2.z;
      txVec0 = vec3<f32>(x_462.x, x_462.y, x_464);
      let x_477 : vec3<f32> = txVec0;
      let x_479 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_477.xy, x_477.z);
      u_xlat7.x = x_479;
      let x_482 : vec4<f32> = u_xlat6;
      let x_483 : vec2<f32> = vec2<f32>(x_482.z, x_482.w);
      let x_485 : f32 = u_xlat2.z;
      txVec1 = vec3<f32>(x_483.x, x_483.y, x_485);
      let x_492 : vec3<f32> = txVec1;
      let x_494 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_492.xy, x_492.z);
      u_xlat7.y = x_494;
      let x_496 : vec4<f32> = u_xlat2;
      let x_499 : vec4<f32> = x_91.x_MainLightShadowOffset1;
      u_xlat6 = (vec4<f32>(x_496.x, x_496.y, x_496.x, x_496.y) + x_499);
      let x_502 : vec4<f32> = u_xlat6;
      let x_503 : vec2<f32> = vec2<f32>(x_502.x, x_502.y);
      let x_505 : f32 = u_xlat2.z;
      txVec2 = vec3<f32>(x_503.x, x_503.y, x_505);
      let x_512 : vec3<f32> = txVec2;
      let x_514 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_512.xy, x_512.z);
      u_xlat7.z = x_514;
      let x_517 : vec4<f32> = u_xlat6;
      let x_518 : vec2<f32> = vec2<f32>(x_517.z, x_517.w);
      let x_520 : f32 = u_xlat2.z;
      txVec3 = vec3<f32>(x_518.x, x_518.y, x_520);
      let x_527 : vec3<f32> = txVec3;
      let x_529 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_527.xy, x_527.z);
      u_xlat7.w = x_529;
      let x_532 : vec4<f32> = u_xlat7;
      u_xlat65 = dot(x_532, vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f));
    } else {
      let x_541 : f32 = x_91.x_MainLightShadowParams.y;
      u_xlatb6.x = (x_541 == 2.0f);
      let x_545 : bool = u_xlatb6.x;
      if (x_545) {
        let x_548 : vec4<f32> = u_xlat2;
        let x_551 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_556 : vec2<f32> = ((vec2<f32>(x_548.x, x_548.y) * vec2<f32>(x_551.z, x_551.w)) + vec2<f32>(0.5f, 0.5f));
        let x_557 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_556.x, x_556.y, x_557.z, x_557.w);
        let x_559 : vec4<f32> = u_xlat6;
        let x_561 : vec2<f32> = floor(vec2<f32>(x_559.x, x_559.y));
        let x_562 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_561.x, x_561.y, x_562.z, x_562.w);
        let x_566 : vec4<f32> = u_xlat2;
        let x_569 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_572 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_566.x, x_566.y) * vec2<f32>(x_569.z, x_569.w)) + -(vec2<f32>(x_572.x, x_572.y)));
        let x_576 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_576.x, x_576.x, x_576.y, x_576.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_581 : vec4<f32> = u_xlat7;
        let x_583 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_581.x, x_581.x, x_581.z, x_581.z) * vec4<f32>(x_583.x, x_583.x, x_583.z, x_583.z));
        let x_586 : vec4<f32> = u_xlat8;
        let x_590 : vec2<f32> = (vec2<f32>(x_586.y, x_586.w) * vec2<f32>(0.079999998f, 0.079999998f));
        let x_591 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_590.x, x_591.y, x_590.y, x_591.w);
        let x_593 : vec4<f32> = u_xlat8;
        let x_596 : vec2<f32> = u_xlat46;
        let x_598 : vec2<f32> = ((vec2<f32>(x_593.x, x_593.z) * vec2<f32>(0.5f, 0.5f)) + -(x_596));
        let x_599 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_598.x, x_598.y, x_599.z, x_599.w);
        let x_602 : vec2<f32> = u_xlat46;
        u_xlat48 = (-(x_602) + vec2<f32>(1.0f, 1.0f));
        let x_606 : vec2<f32> = u_xlat46;
        let x_608 : vec2<f32> = min(x_606, vec2<f32>(0.0f, 0.0f));
        let x_609 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_608.x, x_608.y, x_609.z, x_609.w);
        let x_611 : vec4<f32> = u_xlat9;
        let x_614 : vec4<f32> = u_xlat9;
        let x_617 : vec2<f32> = u_xlat48;
        let x_618 : vec2<f32> = ((-(vec2<f32>(x_611.x, x_611.y)) * vec2<f32>(x_614.x, x_614.y)) + x_617);
        let x_619 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_618.x, x_618.y, x_619.z, x_619.w);
        let x_621 : vec2<f32> = u_xlat46;
        u_xlat46 = max(x_621, vec2<f32>(0.0f, 0.0f));
        let x_623 : vec2<f32> = u_xlat46;
        let x_625 : vec2<f32> = u_xlat46;
        let x_627 : vec4<f32> = u_xlat7;
        u_xlat46 = ((-(x_623) * x_625) + vec2<f32>(x_627.y, x_627.w));
        let x_630 : vec4<f32> = u_xlat9;
        let x_632 : vec2<f32> = (vec2<f32>(x_630.x, x_630.y) + vec2<f32>(1.0f, 1.0f));
        let x_633 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_632.x, x_632.y, x_633.z, x_633.w);
        let x_635 : vec2<f32> = u_xlat46;
        u_xlat46 = (x_635 + vec2<f32>(1.0f, 1.0f));
        let x_638 : vec4<f32> = u_xlat8;
        let x_642 : vec2<f32> = (vec2<f32>(x_638.x, x_638.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_643 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_642.x, x_642.y, x_643.z, x_643.w);
        let x_645 : vec2<f32> = u_xlat48;
        let x_646 : vec2<f32> = (x_645 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_647 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_646.x, x_646.y, x_647.z, x_647.w);
        let x_649 : vec4<f32> = u_xlat9;
        let x_651 : vec2<f32> = (vec2<f32>(x_649.x, x_649.y) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_652 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_651.x, x_651.y, x_652.z, x_652.w);
        let x_655 : vec2<f32> = u_xlat46;
        let x_656 : vec2<f32> = (x_655 * vec2<f32>(0.159999996f, 0.159999996f));
        let x_657 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_656.x, x_656.y, x_657.z, x_657.w);
        let x_659 : vec4<f32> = u_xlat7;
        u_xlat46 = (vec2<f32>(x_659.y, x_659.w) * vec2<f32>(0.159999996f, 0.159999996f));
        let x_663 : f32 = u_xlat9.x;
        u_xlat10.z = x_663;
        let x_666 : f32 = u_xlat46.x;
        u_xlat10.w = x_666;
        let x_669 : f32 = u_xlat11.x;
        u_xlat8.z = x_669;
        let x_672 : f32 = u_xlat7.x;
        u_xlat8.w = x_672;
        let x_675 : vec4<f32> = u_xlat8;
        let x_677 : vec4<f32> = u_xlat10;
        u_xlat12 = (vec4<f32>(x_675.z, x_675.w, x_675.x, x_675.z) + vec4<f32>(x_677.z, x_677.w, x_677.x, x_677.z));
        let x_681 : f32 = u_xlat10.y;
        u_xlat9.z = x_681;
        let x_684 : f32 = u_xlat46.y;
        u_xlat9.w = x_684;
        let x_687 : f32 = u_xlat8.y;
        u_xlat11.z = x_687;
        let x_690 : f32 = u_xlat7.z;
        u_xlat11.w = x_690;
        let x_692 : vec4<f32> = u_xlat9;
        let x_694 : vec4<f32> = u_xlat11;
        let x_696 : vec3<f32> = (vec3<f32>(x_692.z, x_692.y, x_692.w) + vec3<f32>(x_694.z, x_694.y, x_694.w));
        let x_697 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
        let x_699 : vec4<f32> = u_xlat8;
        let x_701 : vec4<f32> = u_xlat12;
        let x_703 : vec3<f32> = (vec3<f32>(x_699.x, x_699.z, x_699.w) / vec3<f32>(x_701.z, x_701.w, x_701.y));
        let x_704 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
        let x_706 : vec4<f32> = u_xlat8;
        let x_712 : vec3<f32> = (vec3<f32>(x_706.x, x_706.y, x_706.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_713 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_712.x, x_712.y, x_712.z, x_713.w);
        let x_715 : vec4<f32> = u_xlat11;
        let x_717 : vec4<f32> = u_xlat7;
        let x_719 : vec3<f32> = (vec3<f32>(x_715.z, x_715.y, x_715.w) / vec3<f32>(x_717.x, x_717.y, x_717.z));
        let x_720 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_719.x, x_719.y, x_719.z, x_720.w);
        let x_722 : vec4<f32> = u_xlat9;
        let x_724 : vec3<f32> = (vec3<f32>(x_722.x, x_722.y, x_722.z) + vec3<f32>(-2.5f, -0.5f, 1.5f));
        let x_725 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
        let x_727 : vec4<f32> = u_xlat8;
        let x_730 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_732 : vec3<f32> = (vec3<f32>(x_727.y, x_727.x, x_727.z) * vec3<f32>(x_730.x, x_730.x, x_730.x));
        let x_733 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_732.x, x_732.y, x_732.z, x_733.w);
        let x_735 : vec4<f32> = u_xlat9;
        let x_738 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_740 : vec3<f32> = (vec3<f32>(x_735.x, x_735.y, x_735.z) * vec3<f32>(x_738.y, x_738.y, x_738.y));
        let x_741 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_740.x, x_740.y, x_740.z, x_741.w);
        let x_744 : f32 = u_xlat9.x;
        u_xlat8.w = x_744;
        let x_746 : vec4<f32> = u_xlat6;
        let x_749 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_752 : vec4<f32> = u_xlat8;
        u_xlat10 = ((vec4<f32>(x_746.x, x_746.y, x_746.x, x_746.y) * vec4<f32>(x_749.x, x_749.y, x_749.x, x_749.y)) + vec4<f32>(x_752.y, x_752.w, x_752.x, x_752.w));
        let x_755 : vec4<f32> = u_xlat6;
        let x_758 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_761 : vec4<f32> = u_xlat8;
        u_xlat46 = ((vec2<f32>(x_755.x, x_755.y) * vec2<f32>(x_758.x, x_758.y)) + vec2<f32>(x_761.z, x_761.w));
        let x_765 : f32 = u_xlat8.y;
        u_xlat9.w = x_765;
        let x_767 : vec4<f32> = u_xlat9;
        let x_768 : vec2<f32> = vec2<f32>(x_767.y, x_767.z);
        let x_769 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_769.x, x_768.x, x_769.z, x_768.y);
        let x_771 : vec4<f32> = u_xlat6;
        let x_774 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_777 : vec4<f32> = u_xlat8;
        u_xlat11 = ((vec4<f32>(x_771.x, x_771.y, x_771.x, x_771.y) * vec4<f32>(x_774.x, x_774.y, x_774.x, x_774.y)) + vec4<f32>(x_777.x, x_777.y, x_777.z, x_777.y));
        let x_780 : vec4<f32> = u_xlat6;
        let x_783 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_786 : vec4<f32> = u_xlat9;
        u_xlat9 = ((vec4<f32>(x_780.x, x_780.y, x_780.x, x_780.y) * vec4<f32>(x_783.x, x_783.y, x_783.x, x_783.y)) + vec4<f32>(x_786.w, x_786.y, x_786.w, x_786.z));
        let x_789 : vec4<f32> = u_xlat6;
        let x_792 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_795 : vec4<f32> = u_xlat8;
        u_xlat8 = ((vec4<f32>(x_789.x, x_789.y, x_789.x, x_789.y) * vec4<f32>(x_792.x, x_792.y, x_792.x, x_792.y)) + vec4<f32>(x_795.x, x_795.w, x_795.z, x_795.w));
        let x_799 : vec4<f32> = u_xlat7;
        let x_801 : vec4<f32> = u_xlat12;
        u_xlat13 = (vec4<f32>(x_799.x, x_799.x, x_799.x, x_799.y) * vec4<f32>(x_801.z, x_801.w, x_801.y, x_801.z));
        let x_805 : vec4<f32> = u_xlat7;
        let x_807 : vec4<f32> = u_xlat12;
        u_xlat14 = (vec4<f32>(x_805.y, x_805.y, x_805.z, x_805.z) * x_807);
        let x_810 : f32 = u_xlat7.z;
        let x_812 : f32 = u_xlat12.y;
        u_xlat6.x = (x_810 * x_812);
        let x_816 : vec4<f32> = u_xlat10;
        let x_817 : vec2<f32> = vec2<f32>(x_816.x, x_816.y);
        let x_819 : f32 = u_xlat2.z;
        txVec4 = vec3<f32>(x_817.x, x_817.y, x_819);
        let x_827 : vec3<f32> = txVec4;
        let x_829 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_827.xy, x_827.z);
        u_xlat26 = x_829;
        let x_831 : vec4<f32> = u_xlat10;
        let x_832 : vec2<f32> = vec2<f32>(x_831.z, x_831.w);
        let x_834 : f32 = u_xlat2.z;
        txVec5 = vec3<f32>(x_832.x, x_832.y, x_834);
        let x_841 : vec3<f32> = txVec5;
        let x_843 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_841.xy, x_841.z);
        u_xlat7.x = x_843;
        let x_846 : f32 = u_xlat7.x;
        let x_848 : f32 = u_xlat13.y;
        u_xlat7.x = (x_846 * x_848);
        let x_852 : f32 = u_xlat13.x;
        let x_853 : f32 = u_xlat26;
        let x_856 : f32 = u_xlat7.x;
        u_xlat26 = ((x_852 * x_853) + x_856);
        let x_859 : vec2<f32> = u_xlat46;
        let x_861 : f32 = u_xlat2.z;
        txVec6 = vec3<f32>(x_859.x, x_859.y, x_861);
        let x_868 : vec3<f32> = txVec6;
        let x_870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_868.xy, x_868.z);
        u_xlat46.x = x_870;
        let x_873 : f32 = u_xlat13.z;
        let x_875 : f32 = u_xlat46.x;
        let x_877 : f32 = u_xlat26;
        u_xlat26 = ((x_873 * x_875) + x_877);
        let x_880 : vec4<f32> = u_xlat9;
        let x_881 : vec2<f32> = vec2<f32>(x_880.x, x_880.y);
        let x_883 : f32 = u_xlat2.z;
        txVec7 = vec3<f32>(x_881.x, x_881.y, x_883);
        let x_890 : vec3<f32> = txVec7;
        let x_892 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_890.xy, x_890.z);
        u_xlat46.x = x_892;
        let x_895 : f32 = u_xlat13.w;
        let x_897 : f32 = u_xlat46.x;
        let x_899 : f32 = u_xlat26;
        u_xlat26 = ((x_895 * x_897) + x_899);
        let x_902 : vec4<f32> = u_xlat11;
        let x_903 : vec2<f32> = vec2<f32>(x_902.x, x_902.y);
        let x_905 : f32 = u_xlat2.z;
        txVec8 = vec3<f32>(x_903.x, x_903.y, x_905);
        let x_912 : vec3<f32> = txVec8;
        let x_914 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_912.xy, x_912.z);
        u_xlat46.x = x_914;
        let x_917 : f32 = u_xlat14.x;
        let x_919 : f32 = u_xlat46.x;
        let x_921 : f32 = u_xlat26;
        u_xlat26 = ((x_917 * x_919) + x_921);
        let x_924 : vec4<f32> = u_xlat11;
        let x_925 : vec2<f32> = vec2<f32>(x_924.z, x_924.w);
        let x_927 : f32 = u_xlat2.z;
        txVec9 = vec3<f32>(x_925.x, x_925.y, x_927);
        let x_934 : vec3<f32> = txVec9;
        let x_936 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_934.xy, x_934.z);
        u_xlat46.x = x_936;
        let x_939 : f32 = u_xlat14.y;
        let x_941 : f32 = u_xlat46.x;
        let x_943 : f32 = u_xlat26;
        u_xlat26 = ((x_939 * x_941) + x_943);
        let x_946 : vec4<f32> = u_xlat9;
        let x_947 : vec2<f32> = vec2<f32>(x_946.z, x_946.w);
        let x_949 : f32 = u_xlat2.z;
        txVec10 = vec3<f32>(x_947.x, x_947.y, x_949);
        let x_956 : vec3<f32> = txVec10;
        let x_958 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_956.xy, x_956.z);
        u_xlat46.x = x_958;
        let x_961 : f32 = u_xlat14.z;
        let x_963 : f32 = u_xlat46.x;
        let x_965 : f32 = u_xlat26;
        u_xlat26 = ((x_961 * x_963) + x_965);
        let x_968 : vec4<f32> = u_xlat8;
        let x_969 : vec2<f32> = vec2<f32>(x_968.x, x_968.y);
        let x_971 : f32 = u_xlat2.z;
        txVec11 = vec3<f32>(x_969.x, x_969.y, x_971);
        let x_978 : vec3<f32> = txVec11;
        let x_980 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_978.xy, x_978.z);
        u_xlat46.x = x_980;
        let x_983 : f32 = u_xlat14.w;
        let x_985 : f32 = u_xlat46.x;
        let x_987 : f32 = u_xlat26;
        u_xlat26 = ((x_983 * x_985) + x_987);
        let x_990 : vec4<f32> = u_xlat8;
        let x_991 : vec2<f32> = vec2<f32>(x_990.z, x_990.w);
        let x_993 : f32 = u_xlat2.z;
        txVec12 = vec3<f32>(x_991.x, x_991.y, x_993);
        let x_1000 : vec3<f32> = txVec12;
        let x_1002 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1000.xy, x_1000.z);
        u_xlat46.x = x_1002;
        let x_1005 : f32 = u_xlat6.x;
        let x_1007 : f32 = u_xlat46.x;
        let x_1009 : f32 = u_xlat26;
        u_xlat65 = ((x_1005 * x_1007) + x_1009);
      } else {
        let x_1012 : vec4<f32> = u_xlat2;
        let x_1015 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1018 : vec2<f32> = ((vec2<f32>(x_1012.x, x_1012.y) * vec2<f32>(x_1015.z, x_1015.w)) + vec2<f32>(0.5f, 0.5f));
        let x_1019 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1018.x, x_1018.y, x_1019.z, x_1019.w);
        let x_1021 : vec4<f32> = u_xlat6;
        let x_1023 : vec2<f32> = floor(vec2<f32>(x_1021.x, x_1021.y));
        let x_1024 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1023.x, x_1023.y, x_1024.z, x_1024.w);
        let x_1026 : vec4<f32> = u_xlat2;
        let x_1029 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1032 : vec4<f32> = u_xlat6;
        u_xlat46 = ((vec2<f32>(x_1026.x, x_1026.y) * vec2<f32>(x_1029.z, x_1029.w)) + -(vec2<f32>(x_1032.x, x_1032.y)));
        let x_1036 : vec2<f32> = u_xlat46;
        u_xlat7 = (vec4<f32>(x_1036.x, x_1036.x, x_1036.y, x_1036.y) + vec4<f32>(0.5f, 1.0f, 0.5f, 1.0f));
        let x_1039 : vec4<f32> = u_xlat7;
        let x_1041 : vec4<f32> = u_xlat7;
        u_xlat8 = (vec4<f32>(x_1039.x, x_1039.x, x_1039.z, x_1039.z) * vec4<f32>(x_1041.x, x_1041.x, x_1041.z, x_1041.z));
        let x_1044 : vec4<f32> = u_xlat8;
        let x_1048 : vec2<f32> = (vec2<f32>(x_1044.y, x_1044.w) * vec2<f32>(0.040816002f, 0.040816002f));
        let x_1049 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1049.x, x_1048.x, x_1049.z, x_1048.y);
        let x_1051 : vec4<f32> = u_xlat8;
        let x_1054 : vec2<f32> = u_xlat46;
        let x_1056 : vec2<f32> = ((vec2<f32>(x_1051.x, x_1051.z) * vec2<f32>(0.5f, 0.5f)) + -(x_1054));
        let x_1057 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1056.x, x_1057.y, x_1056.y, x_1057.w);
        let x_1059 : vec2<f32> = u_xlat46;
        let x_1061 : vec2<f32> = (-(x_1059) + vec2<f32>(1.0f, 1.0f));
        let x_1062 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1061.x, x_1061.y, x_1062.z, x_1062.w);
        let x_1064 : vec2<f32> = u_xlat46;
        u_xlat48 = min(x_1064, vec2<f32>(0.0f, 0.0f));
        let x_1066 : vec2<f32> = u_xlat48;
        let x_1068 : vec2<f32> = u_xlat48;
        let x_1070 : vec4<f32> = u_xlat8;
        let x_1072 : vec2<f32> = ((-(x_1066) * x_1068) + vec2<f32>(x_1070.x, x_1070.y));
        let x_1073 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1072.x, x_1072.y, x_1073.z, x_1073.w);
        let x_1075 : vec2<f32> = u_xlat46;
        u_xlat48 = max(x_1075, vec2<f32>(0.0f, 0.0f));
        let x_1078 : vec2<f32> = u_xlat48;
        let x_1080 : vec2<f32> = u_xlat48;
        let x_1082 : vec4<f32> = u_xlat7;
        let x_1084 : vec2<f32> = ((-(x_1078) * x_1080) + vec2<f32>(x_1082.y, x_1082.w));
        let x_1085 : vec3<f32> = u_xlat27;
        u_xlat27 = vec3<f32>(x_1084.x, x_1085.y, x_1084.y);
        let x_1087 : vec4<f32> = u_xlat8;
        let x_1090 : vec2<f32> = (vec2<f32>(x_1087.x, x_1087.y) + vec2<f32>(2.0f, 2.0f));
        let x_1091 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1090.x, x_1090.y, x_1091.z, x_1091.w);
        let x_1093 : vec3<f32> = u_xlat27;
        let x_1095 : vec2<f32> = (vec2<f32>(x_1093.x, x_1093.z) + vec2<f32>(2.0f, 2.0f));
        let x_1096 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1096.x, x_1095.x, x_1096.z, x_1095.y);
        let x_1099 : f32 = u_xlat7.y;
        u_xlat10.z = (x_1099 * 0.081632003f);
        let x_1103 : vec4<f32> = u_xlat7;
        let x_1106 : vec3<f32> = (vec3<f32>(x_1103.z, x_1103.x, x_1103.w) * vec3<f32>(0.081632003f, 0.081632003f, 0.081632003f));
        let x_1107 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1106.x, x_1106.y, x_1106.z, x_1107.w);
        let x_1109 : vec4<f32> = u_xlat8;
        let x_1112 : vec2<f32> = (vec2<f32>(x_1109.x, x_1109.y) * vec2<f32>(0.081632003f, 0.081632003f));
        let x_1113 : vec4<f32> = u_xlat7;
        u_xlat7 = vec4<f32>(x_1112.x, x_1112.y, x_1113.z, x_1113.w);
        let x_1116 : f32 = u_xlat11.y;
        u_xlat10.x = x_1116;
        let x_1118 : vec2<f32> = u_xlat46;
        let x_1125 : vec2<f32> = ((vec2<f32>(x_1118.x, x_1118.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1126 : vec4<f32> = u_xlat10;
        u_xlat10 = vec4<f32>(x_1126.x, x_1125.x, x_1126.z, x_1125.y);
        let x_1128 : vec2<f32> = u_xlat46;
        let x_1132 : vec2<f32> = ((vec2<f32>(x_1128.x, x_1128.x) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1133 : vec4<f32> = u_xlat8;
        u_xlat8 = vec4<f32>(x_1132.x, x_1133.y, x_1132.y, x_1133.w);
        let x_1136 : f32 = u_xlat7.x;
        u_xlat8.y = x_1136;
        let x_1139 : f32 = u_xlat9.y;
        u_xlat8.w = x_1139;
        let x_1141 : vec4<f32> = u_xlat8;
        let x_1142 : vec4<f32> = u_xlat10;
        u_xlat10 = (x_1141 + x_1142);
        let x_1144 : vec2<f32> = u_xlat46;
        let x_1147 : vec2<f32> = ((vec2<f32>(x_1144.y, x_1144.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.163264006f, 0.081632003f));
        let x_1148 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1148.x, x_1147.x, x_1148.z, x_1147.y);
        let x_1150 : vec2<f32> = u_xlat46;
        let x_1153 : vec2<f32> = ((vec2<f32>(x_1150.y, x_1150.y) * vec2<f32>(-0.081632003f, 0.081632003f)) + vec2<f32>(0.081632003f, 0.163264006f));
        let x_1154 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1153.x, x_1154.y, x_1153.y, x_1154.w);
        let x_1157 : f32 = u_xlat7.y;
        u_xlat9.y = x_1157;
        let x_1159 : vec4<f32> = u_xlat9;
        let x_1160 : vec4<f32> = u_xlat11;
        u_xlat7 = (x_1159 + x_1160);
        let x_1162 : vec4<f32> = u_xlat8;
        let x_1163 : vec4<f32> = u_xlat10;
        u_xlat8 = (x_1162 / x_1163);
        let x_1165 : vec4<f32> = u_xlat8;
        u_xlat8 = (x_1165 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1171 : vec4<f32> = u_xlat9;
        let x_1172 : vec4<f32> = u_xlat7;
        u_xlat9 = (x_1171 / x_1172);
        let x_1174 : vec4<f32> = u_xlat9;
        u_xlat9 = (x_1174 + vec4<f32>(-3.5f, -1.5f, 0.5f, 2.5f));
        let x_1176 : vec4<f32> = u_xlat8;
        let x_1179 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        u_xlat8 = (vec4<f32>(x_1176.w, x_1176.x, x_1176.y, x_1176.z) * vec4<f32>(x_1179.x, x_1179.x, x_1179.x, x_1179.x));
        let x_1182 : vec4<f32> = u_xlat9;
        let x_1185 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        u_xlat9 = (vec4<f32>(x_1182.x, x_1182.w, x_1182.y, x_1182.z) * vec4<f32>(x_1185.y, x_1185.y, x_1185.y, x_1185.y));
        let x_1188 : vec4<f32> = u_xlat8;
        let x_1189 : vec3<f32> = vec3<f32>(x_1188.y, x_1188.z, x_1188.w);
        let x_1190 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1189.x, x_1190.y, x_1189.y, x_1189.z);
        let x_1193 : f32 = u_xlat9.x;
        u_xlat11.y = x_1193;
        let x_1195 : vec4<f32> = u_xlat6;
        let x_1198 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1201 : vec4<f32> = u_xlat11;
        u_xlat12 = ((vec4<f32>(x_1195.x, x_1195.y, x_1195.x, x_1195.y) * vec4<f32>(x_1198.x, x_1198.y, x_1198.x, x_1198.y)) + vec4<f32>(x_1201.x, x_1201.y, x_1201.z, x_1201.y));
        let x_1204 : vec4<f32> = u_xlat6;
        let x_1207 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1210 : vec4<f32> = u_xlat11;
        u_xlat46 = ((vec2<f32>(x_1204.x, x_1204.y) * vec2<f32>(x_1207.x, x_1207.y)) + vec2<f32>(x_1210.w, x_1210.y));
        let x_1214 : f32 = u_xlat11.y;
        u_xlat8.y = x_1214;
        let x_1217 : f32 = u_xlat9.z;
        u_xlat11.y = x_1217;
        let x_1219 : vec4<f32> = u_xlat6;
        let x_1222 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1225 : vec4<f32> = u_xlat11;
        u_xlat13 = ((vec4<f32>(x_1219.x, x_1219.y, x_1219.x, x_1219.y) * vec4<f32>(x_1222.x, x_1222.y, x_1222.x, x_1222.y)) + vec4<f32>(x_1225.x, x_1225.y, x_1225.z, x_1225.y));
        let x_1228 : vec4<f32> = u_xlat6;
        let x_1231 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1234 : vec4<f32> = u_xlat11;
        let x_1236 : vec2<f32> = ((vec2<f32>(x_1228.x, x_1228.y) * vec2<f32>(x_1231.x, x_1231.y)) + vec2<f32>(x_1234.w, x_1234.y));
        let x_1237 : vec4<f32> = u_xlat14;
        u_xlat14 = vec4<f32>(x_1236.x, x_1236.y, x_1237.z, x_1237.w);
        let x_1240 : f32 = u_xlat11.y;
        u_xlat8.z = x_1240;
        let x_1243 : vec4<f32> = u_xlat6;
        let x_1246 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1249 : vec4<f32> = u_xlat8;
        u_xlat15 = ((vec4<f32>(x_1243.x, x_1243.y, x_1243.x, x_1243.y) * vec4<f32>(x_1246.x, x_1246.y, x_1246.x, x_1246.y)) + vec4<f32>(x_1249.x, x_1249.y, x_1249.x, x_1249.z));
        let x_1253 : f32 = u_xlat9.w;
        u_xlat11.y = x_1253;
        let x_1256 : vec4<f32> = u_xlat6;
        let x_1259 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1262 : vec4<f32> = u_xlat11;
        u_xlat16 = ((vec4<f32>(x_1256.x, x_1256.y, x_1256.x, x_1256.y) * vec4<f32>(x_1259.x, x_1259.y, x_1259.x, x_1259.y)) + vec4<f32>(x_1262.x, x_1262.y, x_1262.z, x_1262.y));
        let x_1266 : vec4<f32> = u_xlat6;
        let x_1269 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1272 : vec4<f32> = u_xlat11;
        u_xlat28 = ((vec2<f32>(x_1266.x, x_1266.y) * vec2<f32>(x_1269.x, x_1269.y)) + vec2<f32>(x_1272.w, x_1272.y));
        let x_1276 : f32 = u_xlat11.y;
        u_xlat8.w = x_1276;
        let x_1279 : vec4<f32> = u_xlat6;
        let x_1282 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1285 : vec4<f32> = u_xlat8;
        u_xlat54 = ((vec2<f32>(x_1279.x, x_1279.y) * vec2<f32>(x_1282.x, x_1282.y)) + vec2<f32>(x_1285.x, x_1285.w));
        let x_1288 : vec4<f32> = u_xlat11;
        let x_1289 : vec3<f32> = vec3<f32>(x_1288.x, x_1288.z, x_1288.w);
        let x_1290 : vec4<f32> = u_xlat9;
        u_xlat9 = vec4<f32>(x_1289.x, x_1290.y, x_1289.y, x_1289.z);
        let x_1292 : vec4<f32> = u_xlat6;
        let x_1295 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1298 : vec4<f32> = u_xlat9;
        u_xlat11 = ((vec4<f32>(x_1292.x, x_1292.y, x_1292.x, x_1292.y) * vec4<f32>(x_1295.x, x_1295.y, x_1295.x, x_1295.y)) + vec4<f32>(x_1298.x, x_1298.y, x_1298.z, x_1298.y));
        let x_1302 : vec4<f32> = u_xlat6;
        let x_1305 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1308 : vec4<f32> = u_xlat9;
        u_xlat49 = ((vec2<f32>(x_1302.x, x_1302.y) * vec2<f32>(x_1305.x, x_1305.y)) + vec2<f32>(x_1308.w, x_1308.y));
        let x_1312 : f32 = u_xlat8.x;
        u_xlat9.x = x_1312;
        let x_1314 : vec4<f32> = u_xlat6;
        let x_1317 : vec4<f32> = x_91.x_MainLightShadowmapSize;
        let x_1320 : vec4<f32> = u_xlat9;
        let x_1322 : vec2<f32> = ((vec2<f32>(x_1314.x, x_1314.y) * vec2<f32>(x_1317.x, x_1317.y)) + vec2<f32>(x_1320.x, x_1320.y));
        let x_1323 : vec4<f32> = u_xlat6;
        u_xlat6 = vec4<f32>(x_1322.x, x_1322.y, x_1323.z, x_1323.w);
        let x_1326 : vec4<f32> = u_xlat7;
        let x_1328 : vec4<f32> = u_xlat10;
        u_xlat17 = (vec4<f32>(x_1326.x, x_1326.x, x_1326.x, x_1326.x) * x_1328);
        let x_1331 : vec4<f32> = u_xlat7;
        let x_1333 : vec4<f32> = u_xlat10;
        u_xlat18 = (vec4<f32>(x_1331.y, x_1331.y, x_1331.y, x_1331.y) * x_1333);
        let x_1336 : vec4<f32> = u_xlat7;
        let x_1338 : vec4<f32> = u_xlat10;
        u_xlat19 = (vec4<f32>(x_1336.z, x_1336.z, x_1336.z, x_1336.z) * x_1338);
        let x_1340 : vec4<f32> = u_xlat7;
        let x_1342 : vec4<f32> = u_xlat10;
        u_xlat7 = (vec4<f32>(x_1340.w, x_1340.w, x_1340.w, x_1340.w) * x_1342);
        let x_1345 : vec4<f32> = u_xlat12;
        let x_1346 : vec2<f32> = vec2<f32>(x_1345.x, x_1345.y);
        let x_1348 : f32 = u_xlat2.z;
        txVec13 = vec3<f32>(x_1346.x, x_1346.y, x_1348);
        let x_1355 : vec3<f32> = txVec13;
        let x_1357 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1355.xy, x_1355.z);
        u_xlat8.x = x_1357;
        let x_1360 : vec4<f32> = u_xlat12;
        let x_1361 : vec2<f32> = vec2<f32>(x_1360.z, x_1360.w);
        let x_1363 : f32 = u_xlat2.z;
        txVec14 = vec3<f32>(x_1361.x, x_1361.y, x_1363);
        let x_1371 : vec3<f32> = txVec14;
        let x_1373 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1371.xy, x_1371.z);
        u_xlat68 = x_1373;
        let x_1374 : f32 = u_xlat68;
        let x_1376 : f32 = u_xlat17.y;
        u_xlat68 = (x_1374 * x_1376);
        let x_1379 : f32 = u_xlat17.x;
        let x_1381 : f32 = u_xlat8.x;
        let x_1383 : f32 = u_xlat68;
        u_xlat8.x = ((x_1379 * x_1381) + x_1383);
        let x_1387 : vec2<f32> = u_xlat46;
        let x_1389 : f32 = u_xlat2.z;
        txVec15 = vec3<f32>(x_1387.x, x_1387.y, x_1389);
        let x_1396 : vec3<f32> = txVec15;
        let x_1398 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1396.xy, x_1396.z);
        u_xlat46.x = x_1398;
        let x_1401 : f32 = u_xlat17.z;
        let x_1403 : f32 = u_xlat46.x;
        let x_1406 : f32 = u_xlat8.x;
        u_xlat46.x = ((x_1401 * x_1403) + x_1406);
        let x_1410 : vec4<f32> = u_xlat15;
        let x_1411 : vec2<f32> = vec2<f32>(x_1410.x, x_1410.y);
        let x_1413 : f32 = u_xlat2.z;
        txVec16 = vec3<f32>(x_1411.x, x_1411.y, x_1413);
        let x_1421 : vec3<f32> = txVec16;
        let x_1423 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1421.xy, x_1421.z);
        u_xlat66 = x_1423;
        let x_1425 : f32 = u_xlat17.w;
        let x_1426 : f32 = u_xlat66;
        let x_1429 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1425 * x_1426) + x_1429);
        let x_1433 : vec4<f32> = u_xlat13;
        let x_1434 : vec2<f32> = vec2<f32>(x_1433.x, x_1433.y);
        let x_1436 : f32 = u_xlat2.z;
        txVec17 = vec3<f32>(x_1434.x, x_1434.y, x_1436);
        let x_1443 : vec3<f32> = txVec17;
        let x_1445 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1443.xy, x_1443.z);
        u_xlat66 = x_1445;
        let x_1447 : f32 = u_xlat18.x;
        let x_1448 : f32 = u_xlat66;
        let x_1451 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1447 * x_1448) + x_1451);
        let x_1455 : vec4<f32> = u_xlat13;
        let x_1456 : vec2<f32> = vec2<f32>(x_1455.z, x_1455.w);
        let x_1458 : f32 = u_xlat2.z;
        txVec18 = vec3<f32>(x_1456.x, x_1456.y, x_1458);
        let x_1465 : vec3<f32> = txVec18;
        let x_1467 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1465.xy, x_1465.z);
        u_xlat66 = x_1467;
        let x_1469 : f32 = u_xlat18.y;
        let x_1470 : f32 = u_xlat66;
        let x_1473 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1469 * x_1470) + x_1473);
        let x_1477 : vec4<f32> = u_xlat14;
        let x_1478 : vec2<f32> = vec2<f32>(x_1477.x, x_1477.y);
        let x_1480 : f32 = u_xlat2.z;
        txVec19 = vec3<f32>(x_1478.x, x_1478.y, x_1480);
        let x_1487 : vec3<f32> = txVec19;
        let x_1489 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1487.xy, x_1487.z);
        u_xlat66 = x_1489;
        let x_1491 : f32 = u_xlat18.z;
        let x_1492 : f32 = u_xlat66;
        let x_1495 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1491 * x_1492) + x_1495);
        let x_1499 : vec4<f32> = u_xlat15;
        let x_1500 : vec2<f32> = vec2<f32>(x_1499.z, x_1499.w);
        let x_1502 : f32 = u_xlat2.z;
        txVec20 = vec3<f32>(x_1500.x, x_1500.y, x_1502);
        let x_1509 : vec3<f32> = txVec20;
        let x_1511 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1509.xy, x_1509.z);
        u_xlat66 = x_1511;
        let x_1513 : f32 = u_xlat18.w;
        let x_1514 : f32 = u_xlat66;
        let x_1517 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1513 * x_1514) + x_1517);
        let x_1521 : vec4<f32> = u_xlat16;
        let x_1522 : vec2<f32> = vec2<f32>(x_1521.x, x_1521.y);
        let x_1524 : f32 = u_xlat2.z;
        txVec21 = vec3<f32>(x_1522.x, x_1522.y, x_1524);
        let x_1531 : vec3<f32> = txVec21;
        let x_1533 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1531.xy, x_1531.z);
        u_xlat66 = x_1533;
        let x_1535 : f32 = u_xlat19.x;
        let x_1536 : f32 = u_xlat66;
        let x_1539 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1535 * x_1536) + x_1539);
        let x_1543 : vec4<f32> = u_xlat16;
        let x_1544 : vec2<f32> = vec2<f32>(x_1543.z, x_1543.w);
        let x_1546 : f32 = u_xlat2.z;
        txVec22 = vec3<f32>(x_1544.x, x_1544.y, x_1546);
        let x_1553 : vec3<f32> = txVec22;
        let x_1555 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1553.xy, x_1553.z);
        u_xlat66 = x_1555;
        let x_1557 : f32 = u_xlat19.y;
        let x_1558 : f32 = u_xlat66;
        let x_1561 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1557 * x_1558) + x_1561);
        let x_1565 : vec2<f32> = u_xlat28;
        let x_1567 : f32 = u_xlat2.z;
        txVec23 = vec3<f32>(x_1565.x, x_1565.y, x_1567);
        let x_1574 : vec3<f32> = txVec23;
        let x_1576 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1574.xy, x_1574.z);
        u_xlat66 = x_1576;
        let x_1578 : f32 = u_xlat19.z;
        let x_1579 : f32 = u_xlat66;
        let x_1582 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1578 * x_1579) + x_1582);
        let x_1586 : vec2<f32> = u_xlat54;
        let x_1588 : f32 = u_xlat2.z;
        txVec24 = vec3<f32>(x_1586.x, x_1586.y, x_1588);
        let x_1595 : vec3<f32> = txVec24;
        let x_1597 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1595.xy, x_1595.z);
        u_xlat66 = x_1597;
        let x_1599 : f32 = u_xlat19.w;
        let x_1600 : f32 = u_xlat66;
        let x_1603 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1599 * x_1600) + x_1603);
        let x_1607 : vec4<f32> = u_xlat11;
        let x_1608 : vec2<f32> = vec2<f32>(x_1607.x, x_1607.y);
        let x_1610 : f32 = u_xlat2.z;
        txVec25 = vec3<f32>(x_1608.x, x_1608.y, x_1610);
        let x_1617 : vec3<f32> = txVec25;
        let x_1619 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1617.xy, x_1617.z);
        u_xlat66 = x_1619;
        let x_1621 : f32 = u_xlat7.x;
        let x_1622 : f32 = u_xlat66;
        let x_1625 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1621 * x_1622) + x_1625);
        let x_1629 : vec4<f32> = u_xlat11;
        let x_1630 : vec2<f32> = vec2<f32>(x_1629.z, x_1629.w);
        let x_1632 : f32 = u_xlat2.z;
        txVec26 = vec3<f32>(x_1630.x, x_1630.y, x_1632);
        let x_1639 : vec3<f32> = txVec26;
        let x_1641 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1639.xy, x_1639.z);
        u_xlat66 = x_1641;
        let x_1643 : f32 = u_xlat7.y;
        let x_1644 : f32 = u_xlat66;
        let x_1647 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1643 * x_1644) + x_1647);
        let x_1651 : vec2<f32> = u_xlat49;
        let x_1653 : f32 = u_xlat2.z;
        txVec27 = vec3<f32>(x_1651.x, x_1651.y, x_1653);
        let x_1660 : vec3<f32> = txVec27;
        let x_1662 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1660.xy, x_1660.z);
        u_xlat66 = x_1662;
        let x_1664 : f32 = u_xlat7.z;
        let x_1665 : f32 = u_xlat66;
        let x_1668 : f32 = u_xlat46.x;
        u_xlat46.x = ((x_1664 * x_1665) + x_1668);
        let x_1672 : vec4<f32> = u_xlat6;
        let x_1673 : vec2<f32> = vec2<f32>(x_1672.x, x_1672.y);
        let x_1675 : f32 = u_xlat2.z;
        txVec28 = vec3<f32>(x_1673.x, x_1673.y, x_1675);
        let x_1682 : vec3<f32> = txVec28;
        let x_1684 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1682.xy, x_1682.z);
        u_xlat6.x = x_1684;
        let x_1687 : f32 = u_xlat7.w;
        let x_1689 : f32 = u_xlat6.x;
        let x_1692 : f32 = u_xlat46.x;
        u_xlat65 = ((x_1687 * x_1689) + x_1692);
      }
    }
  } else {
    let x_1696 : vec4<f32> = u_xlat2;
    let x_1697 : vec2<f32> = vec2<f32>(x_1696.x, x_1696.y);
    let x_1699 : f32 = u_xlat2.z;
    txVec29 = vec3<f32>(x_1697.x, x_1697.y, x_1699);
    let x_1706 : vec3<f32> = txVec29;
    let x_1708 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_1706.xy, x_1706.z);
    u_xlat65 = x_1708;
  }
  let x_1710 : f32 = x_91.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_1710) + 1.0f);
  let x_1714 : f32 = u_xlat65;
  let x_1716 : f32 = x_91.x_MainLightShadowParams.x;
  let x_1719 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1714 * x_1716) + x_1719);
  let x_1724 : f32 = u_xlat2.z;
  u_xlatb22.x = (0.0f >= x_1724);
  let x_1729 : f32 = u_xlat2.z;
  u_xlatb42 = (x_1729 >= 1.0f);
  let x_1731 : bool = u_xlatb42;
  let x_1733 : bool = u_xlatb22.x;
  u_xlatb22.x = (x_1731 | x_1733);
  let x_1737 : bool = u_xlatb22.x;
  if (x_1737) {
    x_1738 = 1.0f;
  } else {
    let x_1743 : f32 = u_xlat2.x;
    x_1738 = x_1743;
  }
  let x_1744 : f32 = x_1738;
  u_xlat2.x = x_1744;
  let x_1746 : vec3<f32> = vs_TEXCOORD7;
  let x_1749 : vec3<f32> = x_44.x_WorldSpaceCameraPos;
  let x_1751 : vec3<f32> = (x_1746 + -(x_1749));
  let x_1752 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1751.x, x_1751.y, x_1751.z, x_1752.w);
  let x_1754 : vec4<f32> = u_xlat6;
  let x_1756 : vec4<f32> = u_xlat6;
  u_xlat22.x = dot(vec3<f32>(x_1754.x, x_1754.y, x_1754.z), vec3<f32>(x_1756.x, x_1756.y, x_1756.z));
  let x_1761 : f32 = u_xlat22.x;
  let x_1763 : f32 = x_91.x_MainLightShadowParams.z;
  let x_1766 : f32 = x_91.x_MainLightShadowParams.w;
  u_xlat22.x = ((x_1761 * x_1763) + x_1766);
  let x_1770 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_1770, 0.0f, 1.0f);
  let x_1775 : f32 = u_xlat2.x;
  u_xlat42 = (-(x_1775) + 1.0f);
  let x_1779 : f32 = u_xlat22.x;
  let x_1780 : f32 = u_xlat42;
  let x_1783 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_1779 * x_1780) + x_1783);
  let x_1792 : f32 = x_1790.x_MainLightCookieTextureFormat;
  u_xlatb22.x = !((x_1792 == -1.0f));
  let x_1796 : bool = u_xlatb22.x;
  if (x_1796) {
    let x_1799 : vec3<f32> = vs_TEXCOORD7;
    let x_1802 : vec4<f32> = x_1790.x_MainLightWorldToLight[1i];
    let x_1804 : vec2<f32> = (vec2<f32>(x_1799.y, x_1799.y) * vec2<f32>(x_1802.x, x_1802.y));
    let x_1805 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1804.x, x_1804.y, x_1805.z);
    let x_1808 : vec4<f32> = x_1790.x_MainLightWorldToLight[0i];
    let x_1810 : vec3<f32> = vs_TEXCOORD7;
    let x_1813 : vec3<f32> = u_xlat22;
    let x_1815 : vec2<f32> = ((vec2<f32>(x_1808.x, x_1808.y) * vec2<f32>(x_1810.x, x_1810.x)) + vec2<f32>(x_1813.x, x_1813.y));
    let x_1816 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1815.x, x_1815.y, x_1816.z);
    let x_1819 : vec4<f32> = x_1790.x_MainLightWorldToLight[2i];
    let x_1821 : vec3<f32> = vs_TEXCOORD7;
    let x_1824 : vec3<f32> = u_xlat22;
    let x_1826 : vec2<f32> = ((vec2<f32>(x_1819.x, x_1819.y) * vec2<f32>(x_1821.z, x_1821.z)) + vec2<f32>(x_1824.x, x_1824.y));
    let x_1827 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1826.x, x_1826.y, x_1827.z);
    let x_1829 : vec3<f32> = u_xlat22;
    let x_1832 : vec4<f32> = x_1790.x_MainLightWorldToLight[3i];
    let x_1834 : vec2<f32> = (vec2<f32>(x_1829.x, x_1829.y) + vec2<f32>(x_1832.x, x_1832.y));
    let x_1835 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1834.x, x_1834.y, x_1835.z);
    let x_1837 : vec3<f32> = u_xlat22;
    let x_1840 : vec2<f32> = ((vec2<f32>(x_1837.x, x_1837.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_1841 : vec3<f32> = u_xlat22;
    u_xlat22 = vec3<f32>(x_1840.x, x_1840.y, x_1841.z);
    let x_1848 : vec3<f32> = u_xlat22;
    let x_1851 : f32 = x_44.x_GlobalMipBias.x;
    let x_1852 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_1848.x, x_1848.y), x_1851);
    u_xlat6 = x_1852;
    let x_1854 : f32 = x_1790.x_MainLightCookieTextureFormat;
    let x_1856 : f32 = x_1790.x_MainLightCookieTextureFormat;
    let x_1858 : f32 = x_1790.x_MainLightCookieTextureFormat;
    let x_1860 : f32 = x_1790.x_MainLightCookieTextureFormat;
    let x_1861 : vec4<f32> = vec4<f32>(x_1854, x_1856, x_1858, x_1860);
    let x_1868 : vec4<bool> = (vec4<f32>(x_1861.x, x_1861.y, x_1861.z, x_1861.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb22 = vec2<bool>(x_1868.x, x_1868.y);
    let x_1871 : bool = u_xlatb22.y;
    if (x_1871) {
      let x_1876 : f32 = u_xlat6.w;
      x_1872 = x_1876;
    } else {
      let x_1879 : f32 = u_xlat6.x;
      x_1872 = x_1879;
    }
    let x_1880 : f32 = x_1872;
    u_xlat42 = x_1880;
    let x_1882 : bool = u_xlatb22.x;
    if (x_1882) {
      let x_1886 : vec4<f32> = u_xlat6;
      x_1883 = vec3<f32>(x_1886.x, x_1886.y, x_1886.z);
    } else {
      let x_1889 : f32 = u_xlat42;
      x_1883 = vec3<f32>(x_1889, x_1889, x_1889);
    }
    let x_1891 : vec3<f32> = x_1883;
    let x_1892 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1891.x, x_1891.y, x_1891.z, x_1892.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_1898 : vec4<f32> = u_xlat6;
  let x_1901 : vec4<f32> = x_44.x_MainLightColor;
  let x_1903 : vec3<f32> = (vec3<f32>(x_1898.x, x_1898.y, x_1898.z) * vec3<f32>(x_1901.x, x_1901.y, x_1901.z));
  let x_1904 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1903.x, x_1903.y, x_1903.z, x_1904.w);
  let x_1906 : f32 = u_xlat44;
  let x_1908 : vec4<f32> = u_xlat6;
  let x_1910 : vec3<f32> = (vec3<f32>(x_1906, x_1906, x_1906) * vec3<f32>(x_1908.x, x_1908.y, x_1908.z));
  let x_1911 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1910.x, x_1910.y, x_1910.z, x_1911.w);
  let x_1914 : f32 = vs_TEXCOORD3.w;
  u_xlat7.x = x_1914;
  let x_1918 : f32 = vs_TEXCOORD4.w;
  u_xlat7.y = x_1918;
  let x_1922 : f32 = vs_TEXCOORD5.w;
  u_xlat7.z = x_1922;
  let x_1924 : vec4<f32> = u_xlat7;
  let x_1927 : vec3<f32> = u_xlat21;
  u_xlat22.x = dot(-(vec3<f32>(x_1924.x, x_1924.y, x_1924.z)), x_1927);
  let x_1931 : f32 = u_xlat22.x;
  let x_1933 : f32 = u_xlat22.x;
  u_xlat22.x = (x_1931 + x_1933);
  let x_1936 : vec3<f32> = u_xlat21;
  let x_1937 : vec3<f32> = u_xlat22;
  let x_1941 : vec4<f32> = u_xlat7;
  let x_1944 : vec3<f32> = ((x_1936 * -(vec3<f32>(x_1937.x, x_1937.x, x_1937.x))) + -(vec3<f32>(x_1941.x, x_1941.y, x_1941.z)));
  let x_1945 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1944.x, x_1944.y, x_1944.z, x_1945.w);
  let x_1947 : vec3<f32> = u_xlat21;
  let x_1948 : vec4<f32> = u_xlat7;
  u_xlat22.x = dot(x_1947, vec3<f32>(x_1948.x, x_1948.y, x_1948.z));
  let x_1953 : f32 = u_xlat22.x;
  u_xlat22.x = clamp(x_1953, 0.0f, 1.0f);
  let x_1957 : f32 = u_xlat22.x;
  u_xlat22.x = (-(x_1957) + 1.0f);
  let x_1962 : f32 = u_xlat22.x;
  let x_1964 : f32 = u_xlat22.x;
  u_xlat22.x = (x_1962 * x_1964);
  let x_1968 : f32 = u_xlat22.x;
  let x_1970 : f32 = u_xlat22.x;
  u_xlat22.x = (x_1968 * x_1970);
  let x_1973 : f32 = u_xlat1;
  u_xlat42 = ((-(x_1973) * 0.699999988f) + 1.700000048f);
  let x_1979 : f32 = u_xlat1;
  let x_1980 : f32 = u_xlat42;
  u_xlat1 = (x_1979 * x_1980);
  let x_1982 : f32 = u_xlat1;
  u_xlat1 = (x_1982 * 6.0f);
  let x_1993 : vec4<f32> = u_xlat8;
  let x_1995 : f32 = u_xlat1;
  let x_1996 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1993.x, x_1993.y, x_1993.z), x_1995);
  u_xlat8 = x_1996;
  let x_1998 : f32 = u_xlat8.w;
  u_xlat1 = (x_1998 + -1.0f);
  let x_2005 : f32 = x_2003.unity_SpecCube0_HDR.w;
  let x_2006 : f32 = u_xlat1;
  u_xlat1 = ((x_2005 * x_2006) + 1.0f);
  let x_2009 : f32 = u_xlat1;
  u_xlat1 = max(x_2009, 0.0f);
  let x_2011 : f32 = u_xlat1;
  u_xlat1 = log2(x_2011);
  let x_2013 : f32 = u_xlat1;
  let x_2015 : f32 = x_2003.unity_SpecCube0_HDR.y;
  u_xlat1 = (x_2013 * x_2015);
  let x_2017 : f32 = u_xlat1;
  u_xlat1 = exp2(x_2017);
  let x_2019 : f32 = u_xlat1;
  let x_2021 : f32 = x_2003.unity_SpecCube0_HDR.x;
  u_xlat1 = (x_2019 * x_2021);
  let x_2023 : vec4<f32> = u_xlat8;
  let x_2025 : f32 = u_xlat1;
  let x_2027 : vec3<f32> = (vec3<f32>(x_2023.x, x_2023.y, x_2023.z) * vec3<f32>(x_2025, x_2025, x_2025));
  let x_2028 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2027.x, x_2027.y, x_2027.z, x_2028.w);
  let x_2030 : f32 = u_xlat63;
  let x_2032 : f32 = u_xlat63;
  let x_2036 : vec2<f32> = ((vec2<f32>(x_2030, x_2030) * vec2<f32>(x_2032, x_2032)) + vec2<f32>(-1.0f, 1.0f));
  let x_2037 : vec4<f32> = u_xlat9;
  u_xlat9 = vec4<f32>(x_2036.x, x_2036.y, x_2037.z, x_2037.w);
  let x_2040 : f32 = u_xlat9.y;
  u_xlat1 = (1.0f / x_2040);
  let x_2043 : vec4<f32> = u_xlat0;
  let x_2046 : f32 = u_xlat60;
  u_xlat29 = (-(vec3<f32>(x_2043.x, x_2043.y, x_2043.z)) + vec3<f32>(x_2046, x_2046, x_2046));
  let x_2049 : vec3<f32> = u_xlat22;
  let x_2051 : vec3<f32> = u_xlat29;
  let x_2053 : vec4<f32> = u_xlat0;
  u_xlat29 = ((vec3<f32>(x_2049.x, x_2049.x, x_2049.x) * x_2051) + vec3<f32>(x_2053.x, x_2053.y, x_2053.z));
  let x_2056 : f32 = u_xlat1;
  let x_2058 : vec3<f32> = u_xlat29;
  u_xlat29 = (vec3<f32>(x_2056, x_2056, x_2056) * x_2058);
  let x_2060 : vec4<f32> = u_xlat8;
  let x_2062 : vec3<f32> = u_xlat29;
  let x_2063 : vec3<f32> = (vec3<f32>(x_2060.x, x_2060.y, x_2060.z) * x_2062);
  let x_2064 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_2063.x, x_2063.y, x_2063.z, x_2064.w);
  let x_2066 : vec4<f32> = u_xlat3;
  let x_2068 : vec3<f32> = u_xlat5;
  let x_2070 : vec4<f32> = u_xlat8;
  let x_2072 : vec3<f32> = ((vec3<f32>(x_2066.x, x_2066.y, x_2066.z) * x_2068) + vec3<f32>(x_2070.x, x_2070.y, x_2070.z));
  let x_2073 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_2072.x, x_2072.y, x_2072.z, x_2073.w);
  let x_2076 : f32 = u_xlat2.x;
  let x_2078 : f32 = x_2003.unity_LightData.z;
  u_xlat60 = (x_2076 * x_2078);
  let x_2080 : vec3<f32> = u_xlat21;
  let x_2082 : vec4<f32> = x_44.x_MainLightPosition;
  u_xlat1 = dot(x_2080, vec3<f32>(x_2082.x, x_2082.y, x_2082.z));
  let x_2085 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2085, 0.0f, 1.0f);
  let x_2087 : f32 = u_xlat60;
  let x_2088 : f32 = u_xlat1;
  u_xlat60 = (x_2087 * x_2088);
  let x_2090 : f32 = u_xlat60;
  let x_2092 : vec4<f32> = u_xlat6;
  let x_2094 : vec3<f32> = (vec3<f32>(x_2090, x_2090, x_2090) * vec3<f32>(x_2092.x, x_2092.y, x_2092.z));
  let x_2095 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2094.x, x_2094.y, x_2094.z, x_2095.w);
  let x_2097 : vec4<f32> = u_xlat7;
  let x_2100 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2102 : vec3<f32> = (vec3<f32>(x_2097.x, x_2097.y, x_2097.z) + vec3<f32>(x_2100.x, x_2100.y, x_2100.z));
  let x_2103 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2102.x, x_2102.y, x_2102.z, x_2103.w);
  let x_2105 : vec4<f32> = u_xlat6;
  let x_2107 : vec4<f32> = u_xlat6;
  u_xlat60 = dot(vec3<f32>(x_2105.x, x_2105.y, x_2105.z), vec3<f32>(x_2107.x, x_2107.y, x_2107.z));
  let x_2110 : f32 = u_xlat60;
  u_xlat60 = max(x_2110, 1.17549435e-37f);
  let x_2113 : f32 = u_xlat60;
  u_xlat60 = inverseSqrt(x_2113);
  let x_2115 : f32 = u_xlat60;
  let x_2117 : vec4<f32> = u_xlat6;
  let x_2119 : vec3<f32> = (vec3<f32>(x_2115, x_2115, x_2115) * vec3<f32>(x_2117.x, x_2117.y, x_2117.z));
  let x_2120 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2119.x, x_2119.y, x_2119.z, x_2120.w);
  let x_2122 : vec3<f32> = u_xlat21;
  let x_2123 : vec4<f32> = u_xlat6;
  u_xlat60 = dot(x_2122, vec3<f32>(x_2123.x, x_2123.y, x_2123.z));
  let x_2126 : f32 = u_xlat60;
  u_xlat60 = clamp(x_2126, 0.0f, 1.0f);
  let x_2129 : vec4<f32> = x_44.x_MainLightPosition;
  let x_2131 : vec4<f32> = u_xlat6;
  u_xlat1 = dot(vec3<f32>(x_2129.x, x_2129.y, x_2129.z), vec3<f32>(x_2131.x, x_2131.y, x_2131.z));
  let x_2134 : f32 = u_xlat1;
  u_xlat1 = clamp(x_2134, 0.0f, 1.0f);
  let x_2136 : f32 = u_xlat60;
  let x_2137 : f32 = u_xlat60;
  u_xlat60 = (x_2136 * x_2137);
  let x_2139 : f32 = u_xlat60;
  let x_2141 : f32 = u_xlat9.x;
  u_xlat60 = ((x_2139 * x_2141) + 1.000010014f);
  let x_2145 : f32 = u_xlat1;
  let x_2146 : f32 = u_xlat1;
  u_xlat1 = (x_2145 * x_2146);
  let x_2148 : f32 = u_xlat60;
  let x_2149 : f32 = u_xlat60;
  u_xlat60 = (x_2148 * x_2149);
  let x_2151 : f32 = u_xlat1;
  u_xlat1 = max(x_2151, 0.100000001f);
  let x_2154 : f32 = u_xlat60;
  let x_2155 : f32 = u_xlat1;
  u_xlat60 = (x_2154 * x_2155);
  let x_2157 : f32 = u_xlat24;
  let x_2158 : f32 = u_xlat60;
  u_xlat60 = (x_2157 * x_2158);
  let x_2160 : f32 = u_xlat64;
  let x_2161 : f32 = u_xlat60;
  u_xlat60 = (x_2160 / x_2161);
  let x_2163 : vec4<f32> = u_xlat0;
  let x_2165 : f32 = u_xlat60;
  let x_2168 : vec3<f32> = u_xlat5;
  let x_2169 : vec3<f32> = ((vec3<f32>(x_2163.x, x_2163.y, x_2163.z) * vec3<f32>(x_2165, x_2165, x_2165)) + x_2168);
  let x_2170 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_2169.x, x_2169.y, x_2169.z, x_2170.w);
  let x_2172 : vec4<f32> = u_xlat2;
  let x_2174 : vec4<f32> = u_xlat6;
  let x_2176 : vec3<f32> = (vec3<f32>(x_2172.x, x_2172.y, x_2172.z) * vec3<f32>(x_2174.x, x_2174.y, x_2174.z));
  let x_2177 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_2176.x, x_2176.y, x_2176.z, x_2177.w);
  let x_2180 : f32 = x_44.x_AdditionalLightsCount.x;
  let x_2182 : f32 = x_2003.unity_LightData.y;
  u_xlat60 = min(x_2180, x_2182);
  let x_2185 : f32 = u_xlat60;
  u_xlatu60 = bitcast<u32>(i32(x_2185));
  let x_2189 : f32 = x_1790.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2191 : f32 = x_1790.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2193 : f32 = x_1790.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2195 : f32 = x_1790.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_2196 : vec4<f32> = vec4<f32>(x_2189, x_2191, x_2193, x_2195);
  let x_2202 : vec4<bool> = (vec4<f32>(x_2196.x, x_2196.y, x_2196.z, x_2196.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb6 = vec2<bool>(x_2202.x, x_2202.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_2213 : u32 = u_xlatu_loop_1;
    let x_2214 : u32 = u_xlatu60;
    if ((x_2213 < x_2214)) {
    } else {
      break;
    }
    let x_2217 : u32 = u_xlatu_loop_1;
    u_xlatu63 = (x_2217 >> 2u);
    let x_2220 : u32 = u_xlatu_loop_1;
    u_xlati65 = bitcast<i32>((x_2220 & 3u));
    let x_2223 : u32 = u_xlatu63;
    let x_2226 : vec4<f32> = x_2003.unity_LightIndices[bitcast<i32>(x_2223)];
    let x_2236 : i32 = u_xlati65;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_2241 : vec4<u32> = indexable[x_2236];
    u_xlat63 = dot(x_2226, bitcast<vec4<f32>>(x_2241));
    let x_2244 : f32 = u_xlat63;
    u_xlatu63 = bitcast<u32>(i32(x_2244));
    let x_2247 : vec3<f32> = vs_TEXCOORD7;
    let x_2259 : u32 = u_xlatu63;
    let x_2262 : vec4<f32> = x_2258.x_AdditionalLightsPosition[bitcast<i32>(x_2259)];
    let x_2265 : u32 = u_xlatu63;
    let x_2268 : vec4<f32> = x_2258.x_AdditionalLightsPosition[bitcast<i32>(x_2265)];
    u_xlat29 = ((-(x_2247) * vec3<f32>(x_2262.w, x_2262.w, x_2262.w)) + vec3<f32>(x_2268.x, x_2268.y, x_2268.z));
    let x_2271 : vec3<f32> = u_xlat29;
    let x_2272 : vec3<f32> = u_xlat29;
    u_xlat65 = dot(x_2271, x_2272);
    let x_2274 : f32 = u_xlat65;
    u_xlat65 = max(x_2274, 6.10351562e-05f);
    let x_2277 : f32 = u_xlat65;
    u_xlat46.x = inverseSqrt(x_2277);
    let x_2280 : vec2<f32> = u_xlat46;
    let x_2282 : vec3<f32> = u_xlat29;
    let x_2283 : vec3<f32> = (vec3<f32>(x_2280.x, x_2280.x, x_2280.x) * x_2282);
    let x_2284 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_2283.x, x_2283.y, x_2283.z, x_2284.w);
    let x_2286 : f32 = u_xlat65;
    u_xlat66 = (1.0f / x_2286);
    let x_2288 : f32 = u_xlat65;
    let x_2289 : u32 = u_xlatu63;
    let x_2292 : f32 = x_2258.x_AdditionalLightsAttenuation[bitcast<i32>(x_2289)].x;
    u_xlat65 = (x_2288 * x_2292);
    let x_2294 : f32 = u_xlat65;
    let x_2296 : f32 = u_xlat65;
    u_xlat65 = ((-(x_2294) * x_2296) + 1.0f);
    let x_2299 : f32 = u_xlat65;
    u_xlat65 = max(x_2299, 0.0f);
    let x_2301 : f32 = u_xlat65;
    let x_2302 : f32 = u_xlat65;
    u_xlat65 = (x_2301 * x_2302);
    let x_2304 : f32 = u_xlat65;
    let x_2305 : f32 = u_xlat66;
    u_xlat65 = (x_2304 * x_2305);
    let x_2307 : u32 = u_xlatu63;
    let x_2310 : vec4<f32> = x_2258.x_AdditionalLightsSpotDir[bitcast<i32>(x_2307)];
    let x_2312 : vec4<f32> = u_xlat10;
    u_xlat66 = dot(vec3<f32>(x_2310.x, x_2310.y, x_2310.z), vec3<f32>(x_2312.x, x_2312.y, x_2312.z));
    let x_2315 : f32 = u_xlat66;
    let x_2316 : u32 = u_xlatu63;
    let x_2319 : f32 = x_2258.x_AdditionalLightsAttenuation[bitcast<i32>(x_2316)].z;
    let x_2321 : u32 = u_xlatu63;
    let x_2324 : f32 = x_2258.x_AdditionalLightsAttenuation[bitcast<i32>(x_2321)].w;
    u_xlat66 = ((x_2315 * x_2319) + x_2324);
    let x_2326 : f32 = u_xlat66;
    u_xlat66 = clamp(x_2326, 0.0f, 1.0f);
    let x_2328 : f32 = u_xlat66;
    let x_2329 : f32 = u_xlat66;
    u_xlat66 = (x_2328 * x_2329);
    let x_2331 : f32 = u_xlat65;
    let x_2332 : f32 = u_xlat66;
    u_xlat65 = (x_2331 * x_2332);
    let x_2335 : u32 = u_xlatu63;
    u_xlatu66 = (x_2335 >> 5u);
    let x_2338 : u32 = u_xlatu63;
    u_xlati67 = (1i << bitcast<u32>((bitcast<i32>(x_2338) & 31i)));
    let x_2344 : i32 = u_xlati67;
    let x_2346 : u32 = u_xlatu66;
    let x_2349 : f32 = x_1790.x_AdditionalLightsCookieEnableBits[bitcast<i32>(x_2346)].el;
    u_xlati66 = bitcast<i32>((bitcast<u32>(x_2344) & bitcast<u32>(x_2349)));
    let x_2353 : i32 = u_xlati66;
    if ((x_2353 != 0i)) {
      let x_2363 : u32 = u_xlatu63;
      let x_2366 : f32 = x_2362.x_AdditionalLightsLightTypes[bitcast<i32>(x_2363)].el;
      u_xlati66 = i32(x_2366);
      let x_2368 : i32 = u_xlati66;
      u_xlati67 = select(1i, 0i, (x_2368 != 0i));
      let x_2372 : u32 = u_xlatu63;
      u_xlati68 = (bitcast<i32>(x_2372) << bitcast<u32>(2i));
      let x_2375 : i32 = u_xlati67;
      if ((x_2375 != 0i)) {
        let x_2379 : vec3<f32> = vs_TEXCOORD7;
        let x_2381 : i32 = u_xlati68;
        let x_2384 : i32 = u_xlati68;
        let x_2388 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2381 + 1i) / 4i)][((x_2384 + 1i) % 4i)];
        let x_2390 : vec3<f32> = (vec3<f32>(x_2379.y, x_2379.y, x_2379.y) * vec3<f32>(x_2388.x, x_2388.y, x_2388.w));
        let x_2391 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2390.x, x_2390.y, x_2390.z, x_2391.w);
        let x_2393 : i32 = u_xlati68;
        let x_2395 : i32 = u_xlati68;
        let x_2398 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[(x_2393 / 4i)][(x_2395 % 4i)];
        let x_2400 : vec3<f32> = vs_TEXCOORD7;
        let x_2403 : vec4<f32> = u_xlat11;
        let x_2405 : vec3<f32> = ((vec3<f32>(x_2398.x, x_2398.y, x_2398.w) * vec3<f32>(x_2400.x, x_2400.x, x_2400.x)) + vec3<f32>(x_2403.x, x_2403.y, x_2403.z));
        let x_2406 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2405.x, x_2405.y, x_2405.z, x_2406.w);
        let x_2408 : i32 = u_xlati68;
        let x_2411 : i32 = u_xlati68;
        let x_2415 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2408 + 2i) / 4i)][((x_2411 + 2i) % 4i)];
        let x_2417 : vec3<f32> = vs_TEXCOORD7;
        let x_2420 : vec4<f32> = u_xlat11;
        let x_2422 : vec3<f32> = ((vec3<f32>(x_2415.x, x_2415.y, x_2415.w) * vec3<f32>(x_2417.z, x_2417.z, x_2417.z)) + vec3<f32>(x_2420.x, x_2420.y, x_2420.z));
        let x_2423 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2422.x, x_2422.y, x_2422.z, x_2423.w);
        let x_2425 : vec4<f32> = u_xlat11;
        let x_2427 : i32 = u_xlati68;
        let x_2430 : i32 = u_xlati68;
        let x_2434 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2427 + 3i) / 4i)][((x_2430 + 3i) % 4i)];
        let x_2436 : vec3<f32> = (vec3<f32>(x_2425.x, x_2425.y, x_2425.z) + vec3<f32>(x_2434.x, x_2434.y, x_2434.w));
        let x_2437 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2436.x, x_2436.y, x_2436.z, x_2437.w);
        let x_2439 : vec4<f32> = u_xlat11;
        let x_2441 : vec4<f32> = u_xlat11;
        let x_2443 : vec2<f32> = (vec2<f32>(x_2439.x, x_2439.y) / vec2<f32>(x_2441.z, x_2441.z));
        let x_2444 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2443.x, x_2443.y, x_2444.z, x_2444.w);
        let x_2446 : vec4<f32> = u_xlat11;
        let x_2449 : vec2<f32> = ((vec2<f32>(x_2446.x, x_2446.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_2450 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2449.x, x_2449.y, x_2450.z, x_2450.w);
        let x_2452 : vec4<f32> = u_xlat11;
        let x_2456 : vec2<f32> = clamp(vec2<f32>(x_2452.x, x_2452.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_2457 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2456.x, x_2456.y, x_2457.z, x_2457.w);
        let x_2459 : u32 = u_xlatu63;
        let x_2462 : vec4<f32> = x_2362.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2459)];
        let x_2464 : vec4<f32> = u_xlat11;
        let x_2467 : u32 = u_xlatu63;
        let x_2470 : vec4<f32> = x_2362.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2467)];
        let x_2472 : vec2<f32> = ((vec2<f32>(x_2462.x, x_2462.y) * vec2<f32>(x_2464.x, x_2464.y)) + vec2<f32>(x_2470.z, x_2470.w));
        let x_2473 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_2472.x, x_2472.y, x_2473.z, x_2473.w);
      } else {
        let x_2477 : i32 = u_xlati66;
        u_xlatb66 = (x_2477 == 1i);
        let x_2479 : bool = u_xlatb66;
        u_xlati66 = select(0i, 1i, x_2479);
        let x_2481 : i32 = u_xlati66;
        if ((x_2481 != 0i)) {
          let x_2486 : vec3<f32> = vs_TEXCOORD7;
          let x_2488 : i32 = u_xlati68;
          let x_2491 : i32 = u_xlati68;
          let x_2495 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2488 + 1i) / 4i)][((x_2491 + 1i) % 4i)];
          u_xlat51 = (vec2<f32>(x_2486.y, x_2486.y) * vec2<f32>(x_2495.x, x_2495.y));
          let x_2498 : i32 = u_xlati68;
          let x_2500 : i32 = u_xlati68;
          let x_2503 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[(x_2498 / 4i)][(x_2500 % 4i)];
          let x_2505 : vec3<f32> = vs_TEXCOORD7;
          let x_2508 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2503.x, x_2503.y) * vec2<f32>(x_2505.x, x_2505.x)) + x_2508);
          let x_2510 : i32 = u_xlati68;
          let x_2513 : i32 = u_xlati68;
          let x_2517 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2510 + 2i) / 4i)][((x_2513 + 2i) % 4i)];
          let x_2519 : vec3<f32> = vs_TEXCOORD7;
          let x_2522 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2517.x, x_2517.y) * vec2<f32>(x_2519.z, x_2519.z)) + x_2522);
          let x_2524 : vec2<f32> = u_xlat51;
          let x_2525 : i32 = u_xlati68;
          let x_2528 : i32 = u_xlati68;
          let x_2532 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2525 + 3i) / 4i)][((x_2528 + 3i) % 4i)];
          u_xlat51 = (x_2524 + vec2<f32>(x_2532.x, x_2532.y));
          let x_2535 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2535 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2538 : vec2<f32> = u_xlat51;
          u_xlat51 = fract(x_2538);
          let x_2540 : u32 = u_xlatu63;
          let x_2543 : vec4<f32> = x_2362.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2540)];
          let x_2545 : vec2<f32> = u_xlat51;
          let x_2547 : u32 = u_xlatu63;
          let x_2550 : vec4<f32> = x_2362.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2547)];
          let x_2552 : vec2<f32> = ((vec2<f32>(x_2543.x, x_2543.y) * x_2545) + vec2<f32>(x_2550.z, x_2550.w));
          let x_2553 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2552.x, x_2552.y, x_2553.z, x_2553.w);
        } else {
          let x_2556 : vec3<f32> = vs_TEXCOORD7;
          let x_2558 : i32 = u_xlati68;
          let x_2561 : i32 = u_xlati68;
          let x_2565 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2558 + 1i) / 4i)][((x_2561 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_2556.y, x_2556.y, x_2556.y, x_2556.y) * x_2565);
          let x_2567 : i32 = u_xlati68;
          let x_2569 : i32 = u_xlati68;
          let x_2572 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[(x_2567 / 4i)][(x_2569 % 4i)];
          let x_2573 : vec3<f32> = vs_TEXCOORD7;
          let x_2576 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2572 * vec4<f32>(x_2573.x, x_2573.x, x_2573.x, x_2573.x)) + x_2576);
          let x_2578 : i32 = u_xlati68;
          let x_2581 : i32 = u_xlati68;
          let x_2585 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2578 + 2i) / 4i)][((x_2581 + 2i) % 4i)];
          let x_2586 : vec3<f32> = vs_TEXCOORD7;
          let x_2589 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_2585 * vec4<f32>(x_2586.z, x_2586.z, x_2586.z, x_2586.z)) + x_2589);
          let x_2591 : vec4<f32> = u_xlat12;
          let x_2592 : i32 = u_xlati68;
          let x_2595 : i32 = u_xlati68;
          let x_2599 : vec4<f32> = x_2362.x_AdditionalLightsWorldToLights[((x_2592 + 3i) / 4i)][((x_2595 + 3i) % 4i)];
          u_xlat12 = (x_2591 + x_2599);
          let x_2601 : vec4<f32> = u_xlat12;
          let x_2603 : vec4<f32> = u_xlat12;
          let x_2605 : vec3<f32> = (vec3<f32>(x_2601.x, x_2601.y, x_2601.z) / vec3<f32>(x_2603.w, x_2603.w, x_2603.w));
          let x_2606 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2605.x, x_2605.y, x_2605.z, x_2606.w);
          let x_2608 : vec4<f32> = u_xlat12;
          let x_2610 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(vec3<f32>(x_2608.x, x_2608.y, x_2608.z), vec3<f32>(x_2610.x, x_2610.y, x_2610.z));
          let x_2613 : f32 = u_xlat66;
          u_xlat66 = inverseSqrt(x_2613);
          let x_2615 : f32 = u_xlat66;
          let x_2617 : vec4<f32> = u_xlat12;
          let x_2619 : vec3<f32> = (vec3<f32>(x_2615, x_2615, x_2615) * vec3<f32>(x_2617.x, x_2617.y, x_2617.z));
          let x_2620 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_2619.x, x_2619.y, x_2619.z, x_2620.w);
          let x_2622 : vec4<f32> = u_xlat12;
          u_xlat66 = dot(abs(vec3<f32>(x_2622.x, x_2622.y, x_2622.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_2627 : f32 = u_xlat66;
          u_xlat66 = max(x_2627, 0.000001f);
          let x_2630 : f32 = u_xlat66;
          u_xlat66 = (1.0f / x_2630);
          let x_2632 : f32 = u_xlat66;
          let x_2634 : vec4<f32> = u_xlat12;
          let x_2636 : vec3<f32> = (vec3<f32>(x_2632, x_2632, x_2632) * vec3<f32>(x_2634.z, x_2634.x, x_2634.y));
          let x_2637 : vec4<f32> = u_xlat13;
          u_xlat13 = vec4<f32>(x_2636.x, x_2636.y, x_2636.z, x_2637.w);
          let x_2640 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_2640);
          let x_2644 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_2644, 0.0f, 1.0f);
          let x_2648 : vec4<f32> = u_xlat13;
          let x_2651 : vec4<bool> = (vec4<f32>(x_2648.y, x_2648.z, x_2648.y, x_2648.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb51 = vec2<bool>(x_2651.x, x_2651.y);
          let x_2654 : bool = u_xlatb51.x;
          if (x_2654) {
            let x_2659 : f32 = u_xlat13.x;
            x_2655 = x_2659;
          } else {
            let x_2662 : f32 = u_xlat13.x;
            x_2655 = -(x_2662);
          }
          let x_2664 : f32 = x_2655;
          u_xlat51.x = x_2664;
          let x_2667 : bool = u_xlatb51.y;
          if (x_2667) {
            let x_2672 : f32 = u_xlat13.x;
            x_2668 = x_2672;
          } else {
            let x_2675 : f32 = u_xlat13.x;
            x_2668 = -(x_2675);
          }
          let x_2677 : f32 = x_2668;
          u_xlat51.y = x_2677;
          let x_2679 : vec4<f32> = u_xlat12;
          let x_2681 : f32 = u_xlat66;
          let x_2684 : vec2<f32> = u_xlat51;
          u_xlat51 = ((vec2<f32>(x_2679.x, x_2679.y) * vec2<f32>(x_2681, x_2681)) + x_2684);
          let x_2686 : vec2<f32> = u_xlat51;
          u_xlat51 = ((x_2686 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2689 : vec2<f32> = u_xlat51;
          u_xlat51 = clamp(x_2689, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2693 : u32 = u_xlatu63;
          let x_2696 : vec4<f32> = x_2362.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2693)];
          let x_2698 : vec2<f32> = u_xlat51;
          let x_2700 : u32 = u_xlatu63;
          let x_2703 : vec4<f32> = x_2362.x_AdditionalLightsCookieAtlasUVRects[bitcast<i32>(x_2700)];
          let x_2705 : vec2<f32> = ((vec2<f32>(x_2696.x, x_2696.y) * x_2698) + vec2<f32>(x_2703.z, x_2703.w));
          let x_2706 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2705.x, x_2705.y, x_2706.z, x_2706.w);
        }
      }
      let x_2713 : vec4<f32> = u_xlat11;
      let x_2716 : f32 = x_44.x_GlobalMipBias.x;
      let x_2717 : vec4<f32> = textureSampleBias(x_AdditionalLightsCookieAtlasTexture, sampler_AdditionalLightsCookieAtlasTexture, vec2<f32>(x_2713.x, x_2713.y), x_2716);
      u_xlat11 = x_2717;
      let x_2719 : bool = u_xlatb6.y;
      if (x_2719) {
        let x_2724 : f32 = u_xlat11.w;
        x_2720 = x_2724;
      } else {
        let x_2727 : f32 = u_xlat11.x;
        x_2720 = x_2727;
      }
      let x_2728 : f32 = x_2720;
      u_xlat66 = x_2728;
      let x_2730 : bool = u_xlatb6.x;
      if (x_2730) {
        let x_2734 : vec4<f32> = u_xlat11;
        x_2731 = vec3<f32>(x_2734.x, x_2734.y, x_2734.z);
      } else {
        let x_2737 : f32 = u_xlat66;
        x_2731 = vec3<f32>(x_2737, x_2737, x_2737);
      }
      let x_2739 : vec3<f32> = x_2731;
      let x_2740 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2739.x, x_2739.y, x_2739.z, x_2740.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2746 : vec4<f32> = u_xlat11;
    let x_2748 : u32 = u_xlatu63;
    let x_2751 : vec4<f32> = x_2258.x_AdditionalLightsColor[bitcast<i32>(x_2748)];
    let x_2753 : vec3<f32> = (vec3<f32>(x_2746.x, x_2746.y, x_2746.z) * vec3<f32>(x_2751.x, x_2751.y, x_2751.z));
    let x_2754 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2753.x, x_2753.y, x_2753.z, x_2754.w);
    let x_2756 : f32 = u_xlat44;
    let x_2758 : vec4<f32> = u_xlat11;
    let x_2760 : vec3<f32> = (vec3<f32>(x_2756, x_2756, x_2756) * vec3<f32>(x_2758.x, x_2758.y, x_2758.z));
    let x_2761 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2760.x, x_2760.y, x_2760.z, x_2761.w);
    let x_2763 : vec3<f32> = u_xlat21;
    let x_2764 : vec4<f32> = u_xlat10;
    u_xlat63 = dot(x_2763, vec3<f32>(x_2764.x, x_2764.y, x_2764.z));
    let x_2767 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2767, 0.0f, 1.0f);
    let x_2769 : f32 = u_xlat63;
    let x_2770 : f32 = u_xlat65;
    u_xlat63 = (x_2769 * x_2770);
    let x_2772 : f32 = u_xlat63;
    let x_2774 : vec4<f32> = u_xlat11;
    let x_2776 : vec3<f32> = (vec3<f32>(x_2772, x_2772, x_2772) * vec3<f32>(x_2774.x, x_2774.y, x_2774.z));
    let x_2777 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2776.x, x_2776.y, x_2776.z, x_2777.w);
    let x_2779 : vec3<f32> = u_xlat29;
    let x_2780 : vec2<f32> = u_xlat46;
    let x_2783 : vec4<f32> = u_xlat7;
    u_xlat29 = ((x_2779 * vec3<f32>(x_2780.x, x_2780.x, x_2780.x)) + vec3<f32>(x_2783.x, x_2783.y, x_2783.z));
    let x_2786 : vec3<f32> = u_xlat29;
    let x_2787 : vec3<f32> = u_xlat29;
    u_xlat63 = dot(x_2786, x_2787);
    let x_2789 : f32 = u_xlat63;
    u_xlat63 = max(x_2789, 1.17549435e-37f);
    let x_2791 : f32 = u_xlat63;
    u_xlat63 = inverseSqrt(x_2791);
    let x_2793 : f32 = u_xlat63;
    let x_2795 : vec3<f32> = u_xlat29;
    u_xlat29 = (vec3<f32>(x_2793, x_2793, x_2793) * x_2795);
    let x_2797 : vec3<f32> = u_xlat21;
    let x_2798 : vec3<f32> = u_xlat29;
    u_xlat63 = dot(x_2797, x_2798);
    let x_2800 : f32 = u_xlat63;
    u_xlat63 = clamp(x_2800, 0.0f, 1.0f);
    let x_2802 : vec4<f32> = u_xlat10;
    let x_2804 : vec3<f32> = u_xlat29;
    u_xlat65 = dot(vec3<f32>(x_2802.x, x_2802.y, x_2802.z), x_2804);
    let x_2806 : f32 = u_xlat65;
    u_xlat65 = clamp(x_2806, 0.0f, 1.0f);
    let x_2808 : f32 = u_xlat63;
    let x_2809 : f32 = u_xlat63;
    u_xlat63 = (x_2808 * x_2809);
    let x_2811 : f32 = u_xlat63;
    let x_2813 : f32 = u_xlat9.x;
    u_xlat63 = ((x_2811 * x_2813) + 1.000010014f);
    let x_2816 : f32 = u_xlat65;
    let x_2817 : f32 = u_xlat65;
    u_xlat65 = (x_2816 * x_2817);
    let x_2819 : f32 = u_xlat63;
    let x_2820 : f32 = u_xlat63;
    u_xlat63 = (x_2819 * x_2820);
    let x_2822 : f32 = u_xlat65;
    u_xlat65 = max(x_2822, 0.100000001f);
    let x_2824 : f32 = u_xlat63;
    let x_2825 : f32 = u_xlat65;
    u_xlat63 = (x_2824 * x_2825);
    let x_2827 : f32 = u_xlat24;
    let x_2828 : f32 = u_xlat63;
    u_xlat63 = (x_2827 * x_2828);
    let x_2830 : f32 = u_xlat64;
    let x_2831 : f32 = u_xlat63;
    u_xlat63 = (x_2830 / x_2831);
    let x_2833 : vec4<f32> = u_xlat0;
    let x_2835 : f32 = u_xlat63;
    let x_2838 : vec3<f32> = u_xlat5;
    u_xlat29 = ((vec3<f32>(x_2833.x, x_2833.y, x_2833.z) * vec3<f32>(x_2835, x_2835, x_2835)) + x_2838);
    let x_2840 : vec3<f32> = u_xlat29;
    let x_2841 : vec4<f32> = u_xlat11;
    let x_2844 : vec4<f32> = u_xlat8;
    let x_2846 : vec3<f32> = ((x_2840 * vec3<f32>(x_2841.x, x_2841.y, x_2841.z)) + vec3<f32>(x_2844.x, x_2844.y, x_2844.z));
    let x_2847 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2846.x, x_2846.y, x_2846.z, x_2847.w);

    continuing {
      let x_2849 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2849 + bitcast<u32>(1i));
    }
  }
  let x_2851 : vec4<f32> = u_xlat3;
  let x_2853 : vec3<f32> = u_xlat4;
  let x_2856 : vec4<f32> = u_xlat2;
  let x_2858 : vec3<f32> = ((vec3<f32>(x_2851.x, x_2851.y, x_2851.z) * vec3<f32>(x_2853.x, x_2853.x, x_2853.x)) + vec3<f32>(x_2856.x, x_2856.y, x_2856.z));
  let x_2859 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2858.x, x_2858.y, x_2858.z, x_2859.w);
  let x_2861 : vec4<f32> = u_xlat8;
  let x_2863 : vec4<f32> = u_xlat0;
  let x_2865 : vec3<f32> = (vec3<f32>(x_2861.x, x_2861.y, x_2861.z) + vec3<f32>(x_2863.x, x_2863.y, x_2863.z));
  let x_2866 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2865.x, x_2865.y, x_2865.z, x_2866.w);
  let x_2868 : f32 = u_xlat62;
  let x_2869 : f32 = u_xlat62;
  u_xlat60 = (x_2868 * -(x_2869));
  let x_2872 : f32 = u_xlat60;
  u_xlat60 = exp2(x_2872);
  let x_2874 : vec4<f32> = u_xlat0;
  let x_2878 : vec4<f32> = x_44.unity_FogColor;
  let x_2881 : vec3<f32> = (vec3<f32>(x_2874.x, x_2874.y, x_2874.z) + -(vec3<f32>(x_2878.x, x_2878.y, x_2878.z)));
  let x_2882 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2881.x, x_2881.y, x_2881.z, x_2882.w);
  let x_2886 : f32 = u_xlat60;
  let x_2888 : vec4<f32> = u_xlat0;
  let x_2892 : vec4<f32> = x_44.unity_FogColor;
  let x_2894 : vec3<f32> = ((vec3<f32>(x_2886, x_2886, x_2886) * vec3<f32>(x_2888.x, x_2888.y, x_2888.z)) + vec3<f32>(x_2892.x, x_2892.y, x_2892.z));
  let x_2895 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2894.x, x_2894.y, x_2894.z, x_2895.w);
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

