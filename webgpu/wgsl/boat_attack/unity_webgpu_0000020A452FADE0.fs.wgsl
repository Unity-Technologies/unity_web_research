diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_MainLightPosition : vec4<f32>,
  /* @offset(32) */
  x_MainLightColor : vec4<f32>,
  /* @offset(48) */
  x_AdditionalLightsCount : vec4<f32>,
  /* @offset(64) */
  x_WorldSpaceCameraPos : vec3<f32>,
  /* @offset(80) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(96) */
  unity_MatrixV : mat4x4<f32>,
}

struct UnityPerMaterial {
  /* @offset(0) */
  Texture2D_25A083BC_TexelSize : vec4<f32>,
  /* @offset(16) */
  Texture2D_6EEDD32E_TexelSize : vec4<f32>,
  /* @offset(32) */
  Texture2D_E9EC22CC_TexelSize : vec4<f32>,
  /* @offset(48) */
  x_Hue : f32,
}

alias Arr = array<vec4<f32>, 2u>;

struct UnityPerDraw {
  /* @offset(0) */
  unity_ObjectToWorld : mat4x4<f32>,
  /* @offset(64) */
  unity_WorldToObject : mat4x4<f32>,
  /* @offset(128) */
  unity_LODFade : vec4<f32>,
  /* @offset(144) */
  unity_WorldTransformParams : vec4<f32>,
  /* @offset(160) */
  unity_RenderingLayer : vec4<f32>,
  /* @offset(176) */
  unity_LightData : vec4<f32>,
  /* @offset(192) */
  unity_LightIndices : Arr,
  /* @offset(224) */
  unity_ProbesOcclusion : vec4<f32>,
  /* @offset(240) */
  unity_SpecCube0_HDR : vec4<f32>,
  /* @offset(256) */
  unity_SpecCube1_HDR : vec4<f32>,
  /* @offset(272) */
  unity_SpecCube0_BoxMax : vec4<f32>,
  /* @offset(288) */
  unity_SpecCube0_BoxMin : vec4<f32>,
  /* @offset(304) */
  unity_SpecCube0_ProbePosition : vec4<f32>,
  /* @offset(320) */
  unity_SpecCube1_BoxMax : vec4<f32>,
  /* @offset(336) */
  unity_SpecCube1_BoxMin : vec4<f32>,
  /* @offset(352) */
  unity_SpecCube1_ProbePosition : vec4<f32>,
  /* @offset(368) */
  unity_LightmapST : vec4<f32>,
  /* @offset(384) */
  unity_DynamicLightmapST : vec4<f32>,
  /* @offset(400) */
  unity_SHAr : vec4<f32>,
  /* @offset(416) */
  unity_SHAg : vec4<f32>,
  /* @offset(432) */
  unity_SHAb : vec4<f32>,
  /* @offset(448) */
  unity_SHBr : vec4<f32>,
  /* @offset(464) */
  unity_SHBg : vec4<f32>,
  /* @offset(480) */
  unity_SHBb : vec4<f32>,
  /* @offset(496) */
  unity_SHC : vec4<f32>,
  /* @offset(512) */
  unity_RendererBounds_Min : vec4<f32>,
  /* @offset(528) */
  unity_RendererBounds_Max : vec4<f32>,
  /* @offset(544) */
  unity_MatrixPreviousM : mat4x4<f32>,
  /* @offset(608) */
  unity_MatrixPreviousMI : mat4x4<f32>,
  /* @offset(672) */
  unity_MotionVectorsParams : vec4<f32>,
  /* @offset(688) */
  unity_SpriteColor : vec4<f32>,
  /* @offset(704) */
  unity_SpriteProps : vec4<f32>,
}

alias Arr_1 = array<mat4x4<f32>, 5u>;

alias Arr_2 = array<vec4<f32>, 32u>;

alias Arr_3 = array<mat4x4<f32>, 32u>;

alias Arr_4 = array<vec4<f32>, 32u>;

alias Arr_5 = array<mat4x4<f32>, 32u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr_1,
  /* @offset(320) */
  x_CascadeShadowSplitSpheres0 : vec4<f32>,
  /* @offset(336) */
  x_CascadeShadowSplitSpheres1 : vec4<f32>,
  /* @offset(352) */
  x_CascadeShadowSplitSpheres2 : vec4<f32>,
  /* @offset(368) */
  x_CascadeShadowSplitSpheres3 : vec4<f32>,
  /* @offset(384) */
  x_CascadeShadowSplitSphereRadii : vec4<f32>,
  /* @offset(400) */
  x_MainLightShadowOffset0 : vec4<f32>,
  /* @offset(416) */
  x_MainLightShadowOffset1 : vec4<f32>,
  /* @offset(432) */
  x_MainLightShadowParams : vec4<f32>,
  /* @offset(448) */
  x_MainLightShadowmapSize : vec4<f32>,
  /* @offset(464) */
  x_AdditionalShadowOffset0 : vec4<f32>,
  /* @offset(480) */
  x_AdditionalShadowOffset1 : vec4<f32>,
  /* @offset(496) */
  x_AdditionalShadowFadeParams : vec4<f32>,
  /* @offset(512) */
  x_AdditionalShadowmapSize : vec4<f32>,
  /* @offset(528) */
  x_AdditionalShadowParams : Arr_4,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_5,
}

alias Arr_6 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_7 = array<strided_arr, 32u>;

alias Arr_8 = array<strided_arr, 32u>;

struct LightCookies {
  /* @offset(0) */
  x_MainLightWorldToLight : mat4x4<f32>,
  /* @offset(64) */
  x_AdditionalLightsCookieEnableBits : f32,
  /* @offset(68) */
  x_MainLightCookieTextureFormat : f32,
  /* @offset(72) */
  x_AdditionalLightsCookieAtlasTextureFormat : f32,
  /* @offset(80) */
  x_AdditionalLightsWorldToLights : Arr_5,
  /* @offset(2128) */
  x_AdditionalLightsCookieAtlasUVRects : Arr_4,
  /* @offset(2640) */
  x_AdditionalLightsLightTypes : Arr_8,
}

alias Arr_9 = array<vec4<f32>, 32u>;

alias Arr_10 = array<vec4<f32>, 32u>;

alias Arr_11 = array<vec4<f32>, 32u>;

alias Arr_12 = array<vec4<f32>, 32u>;

struct AdditionalLights {
  /* @offset(0) */
  x_AdditionalLightsPosition : Arr_4,
  /* @offset(512) */
  x_AdditionalLightsColor : Arr_4,
  /* @offset(1024) */
  x_AdditionalLightsAttenuation : Arr_4,
  /* @offset(1536) */
  x_AdditionalLightsSpotDir : Arr_4,
  /* @offset(2048) */
  x_AdditionalLightsOcclusionProbes : Arr_4,
  /* @offset(2560) */
  x_AdditionalLightsLayerMasks : Arr_8,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(5) var Texture2D_25A083BC : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_25A083BC : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlatb1 : bool;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlat14 : f32;

var<private> u_xlat28 : f32;

var<private> u_xlat15 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_179 : UnityPerMaterial;

var<private> u_xlatb42 : bool;

@group(0) @binding(7) var Texture2D_E9EC22CC : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_E9EC22CC : sampler;

var<private> u_xlat42 : f32;

@group(0) @binding(6) var Texture2D_6EEDD32E : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_6EEDD32E : sampler;

var<private> u_xlatb29 : vec2<bool>;

var<private> vs_INTERP4 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_349 : UnityPerDraw;

var<private> u_xlat29 : vec2<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlat4 : vec3<f32>;

@group(1) @binding(3) var<uniform> x_508 : LightShadows;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlatb3 : vec4<bool>;

var<private> u_xlatu42 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlat43 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat30 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlatb17 : bool;

var<private> u_xlatb31 : vec2<bool>;

var<private> u_xlat31 : vec2<f32>;

var<private> u_xlat45 : f32;

@group(1) @binding(4) var<uniform> x_951 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat23 : vec3<f32>;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlatu17 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlati17 : i32;

@group(1) @binding(1) var<uniform> x_1400 : AdditionalLights;

var<private> u_xlat46 : f32;

var<private> u_xlat47 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat48 : f32;

var<private> u_xlati48 : i32;

var<private> u_xlatb35 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlat35 : vec2<f32>;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> u_xlatb49 : bool;

var<private> u_xlati35 : i32;

var<private> u_xlati49 : i32;

var<private> u_xlati50 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb39 : vec2<bool>;

var<private> u_xlat39 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu2 : u32;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_465 : f32;
  var x_477 : f32;
  var x_489 : f32;
  var txVec0 : vec3<f32>;
  var x_902 : f32;
  var x_1020 : f32;
  var x_1031 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1532 : f32;
  var x_1542 : f32;
  var txVec1 : vec3<f32>;
  var x_1979 : f32;
  var x_1992 : f32;
  var x_2040 : f32;
  var x_2052 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(Texture2D_25A083BC, samplerTexture2D_25A083BC, vec2<f32>(x_23.x, x_23.y), x_36);
  u_xlat0 = x_37;
  let x_44 : f32 = u_xlat0.y;
  let x_47 : f32 = u_xlat0.z;
  u_xlatb1 = (x_44 >= x_47);
  let x_50 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_50);
  let x_56 : vec4<f32> = u_xlat0;
  let x_57 : vec2<f32> = vec2<f32>(x_56.z, x_56.y);
  let x_58 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_57.x, x_57.y, x_58.z, x_58.w);
  u_xlat2.z = -1.0f;
  u_xlat2.w = 0.6666666865348815918f;
  let x_66 : vec4<f32> = u_xlat0;
  let x_68 : vec4<f32> = u_xlat2;
  let x_71 : vec2<f32> = (vec2<f32>(x_66.y, x_66.z) + -(vec2<f32>(x_68.x, x_68.y)));
  let x_72 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_71.x, x_71.y, x_72.z, x_72.w);
  u_xlat3.z = 1.0f;
  u_xlat3.w = -1.0f;
  let x_76 : vec4<f32> = u_xlat1;
  let x_78 : vec4<f32> = u_xlat3;
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_76.x, x_76.x, x_76.x, x_76.x) * x_78) + x_80);
  let x_84 : f32 = u_xlat0.x;
  let x_86 : f32 = u_xlat1.x;
  u_xlatb14 = (x_84 >= x_86);
  let x_89 : bool = u_xlatb14;
  u_xlat14 = select(0.0f, 1.0f, x_89);
  let x_91 : vec4<f32> = u_xlat1;
  let x_92 : vec3<f32> = vec3<f32>(x_91.x, x_91.y, x_91.w);
  let x_93 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_92.x, x_92.y, x_92.z, x_93.w);
  let x_96 : f32 = u_xlat0.x;
  u_xlat2.w = x_96;
  let x_98 : vec4<f32> = u_xlat2;
  let x_99 : vec3<f32> = vec3<f32>(x_98.w, x_98.y, x_98.x);
  let x_100 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_99.x, x_99.y, x_100.z, x_99.z);
  let x_102 : vec4<f32> = u_xlat2;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat1 = (-(x_102) + x_104);
  let x_106 : f32 = u_xlat14;
  let x_108 : vec4<f32> = u_xlat1;
  let x_110 : vec4<f32> = u_xlat2;
  u_xlat1 = ((vec4<f32>(x_106, x_106, x_106, x_106) * x_108) + x_110);
  let x_113 : f32 = u_xlat1.y;
  let x_115 : f32 = u_xlat1.w;
  u_xlat0.x = min(x_113, x_115);
  let x_119 : f32 = u_xlat0.x;
  let x_122 : f32 = u_xlat1.x;
  u_xlat0.x = (-(x_119) + x_122);
  let x_126 : f32 = u_xlat0.x;
  u_xlatb14 = (x_126 == 0.0f);
  let x_130 : f32 = u_xlat1.x;
  u_xlat28 = (x_130 + 0.00000000010000000134f);
  let x_133 : bool = u_xlatb14;
  if (x_133) {
    let x_139 : f32 = u_xlat1.x;
    x_135 = x_139;
  } else {
    let x_141 : f32 = u_xlat28;
    x_135 = x_141;
  }
  let x_142 : f32 = x_135;
  u_xlat14 = x_142;
  let x_144 : f32 = u_xlat1.y;
  let x_147 : f32 = u_xlat1.w;
  u_xlat1.x = (-(x_144) + x_147);
  let x_153 : f32 = u_xlat0.x;
  u_xlat15.x = ((x_153 * 6.0f) + 0.00000000010000000134f);
  let x_159 : f32 = u_xlat1.x;
  let x_161 : f32 = u_xlat15.x;
  u_xlat1.x = (x_159 / x_161);
  let x_165 : f32 = u_xlat1.x;
  let x_167 : f32 = u_xlat1.z;
  u_xlat1.x = (x_165 + x_167);
  let x_171 : f32 = u_xlat0.x;
  let x_172 : f32 = u_xlat28;
  u_xlat0.x = (x_171 / x_172);
  let x_176 : f32 = u_xlat0.w;
  let x_182 : f32 = x_179.x_Hue;
  let x_185 : f32 = u_xlat1.x;
  u_xlat28 = ((x_176 * x_182) + abs(x_185));
  let x_189 : f32 = u_xlat28;
  u_xlatb42 = (x_189 < 0.0f);
  let x_191 : f32 = u_xlat28;
  u_xlatb1 = (1.0f < x_191);
  let x_193 : f32 = u_xlat28;
  let x_196 : vec2<f32> = (vec2<f32>(x_193, x_193) + vec2<f32>(1.0f, -1.0f));
  let x_197 : vec3<f32> = u_xlat15;
  u_xlat15 = vec3<f32>(x_196.x, x_196.y, x_197.z);
  let x_199 : bool = u_xlatb1;
  if (x_199) {
    let x_204 : f32 = u_xlat15.y;
    x_200 = x_204;
  } else {
    let x_206 : f32 = u_xlat28;
    x_200 = x_206;
  }
  let x_207 : f32 = x_200;
  u_xlat28 = x_207;
  let x_208 : bool = u_xlatb42;
  if (x_208) {
    let x_213 : f32 = u_xlat15.x;
    x_209 = x_213;
  } else {
    let x_215 : f32 = u_xlat28;
    x_209 = x_215;
  }
  let x_216 : f32 = x_209;
  u_xlat28 = x_216;
  let x_217 : f32 = u_xlat28;
  let x_221 : vec3<f32> = (vec3<f32>(x_217, x_217, x_217) + vec3<f32>(1.0f, 0.6666666865348815918f, 0.3333333432674407959f));
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
  let x_224 : vec4<f32> = u_xlat1;
  let x_226 : vec3<f32> = fract(vec3<f32>(x_224.x, x_224.y, x_224.z));
  let x_227 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
  let x_229 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = ((vec3<f32>(x_229.x, x_229.y, x_229.z) * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_236 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
  let x_238 : vec4<f32> = u_xlat1;
  let x_242 : vec3<f32> = (abs(vec3<f32>(x_238.x, x_238.y, x_238.z)) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_245 : vec4<f32> = u_xlat1;
  let x_249 : vec3<f32> = clamp(vec3<f32>(x_245.x, x_245.y, x_245.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_250 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
  let x_252 : vec4<f32> = u_xlat1;
  let x_254 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_255 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
  let x_257 : vec4<f32> = u_xlat0;
  let x_259 : vec4<f32> = u_xlat1;
  let x_263 : vec3<f32> = ((vec3<f32>(x_257.x, x_257.x, x_257.x) * vec3<f32>(x_259.x, x_259.y, x_259.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_264 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_263.x, x_264.y, x_263.y, x_263.z);
  let x_266 : vec4<f32> = u_xlat0;
  let x_268 : f32 = u_xlat14;
  let x_270 : vec3<f32> = (vec3<f32>(x_266.x, x_266.z, x_266.w) * vec3<f32>(x_268, x_268, x_268));
  let x_271 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
  let x_273 : vec4<f32> = u_xlat0;
  let x_277 : vec3<f32> = clamp(vec3<f32>(x_273.x, x_273.y, x_273.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_278 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_285 : vec4<f32> = vs_INTERP5;
  let x_288 : f32 = x_29.x_GlobalMipBias.x;
  let x_289 : vec4<f32> = textureSampleBias(Texture2D_E9EC22CC, samplerTexture2D_E9EC22CC, vec2<f32>(x_285.x, x_285.y), x_288);
  let x_290 : vec3<f32> = vec3<f32>(x_289.x, x_289.y, x_289.w);
  let x_291 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
  let x_294 : f32 = u_xlat1.x;
  let x_296 : f32 = u_xlat1.z;
  u_xlat1.x = (x_294 * x_296);
  let x_299 : vec4<f32> = u_xlat1;
  let x_305 : vec2<f32> = ((vec2<f32>(x_299.x, x_299.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_306 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_305.x, x_305.y, x_306.z, x_306.w);
  let x_309 : vec4<f32> = u_xlat1;
  let x_311 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(vec2<f32>(x_309.x, x_309.y), vec2<f32>(x_311.x, x_311.y));
  let x_314 : f32 = u_xlat42;
  u_xlat42 = min(x_314, 1.0f);
  let x_316 : f32 = u_xlat42;
  u_xlat42 = (-(x_316) + 1.0f);
  let x_319 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_319);
  let x_321 : f32 = u_xlat42;
  u_xlat42 = max(x_321, 0.0000000000000001f);
  let x_329 : vec4<f32> = vs_INTERP5;
  let x_332 : f32 = x_29.x_GlobalMipBias.x;
  let x_333 : vec4<f32> = textureSampleBias(Texture2D_6EEDD32E, samplerTexture2D_6EEDD32E, vec2<f32>(x_329.x, x_329.y), x_332);
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.w, x_333.y);
  let x_335 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_343 : f32 = vs_INTERP4.w;
  u_xlatb29.x = (0.0f < x_343);
  let x_351 : f32 = x_349.unity_WorldTransformParams.w;
  u_xlatb29.y = (x_351 >= 0.0f);
  let x_357 : bool = u_xlatb29.x;
  u_xlat29.x = select(-1.0f, 1.0f, x_357);
  let x_361 : bool = u_xlatb29.y;
  u_xlat29.y = select(-1.0f, 1.0f, x_361);
  let x_365 : f32 = u_xlat29.y;
  let x_367 : f32 = u_xlat29.x;
  u_xlat29.x = (x_365 * x_367);
  let x_370 : vec4<f32> = vs_INTERP4;
  let x_374 : vec3<f32> = vs_INTERP8;
  let x_376 : vec3<f32> = (vec3<f32>(x_370.y, x_370.z, x_370.x) * vec3<f32>(x_374.z, x_374.x, x_374.y));
  let x_377 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_376.x, x_376.y, x_376.z, x_377.w);
  let x_379 : vec3<f32> = vs_INTERP8;
  let x_381 : vec4<f32> = vs_INTERP4;
  let x_384 : vec4<f32> = u_xlat3;
  let x_387 : vec3<f32> = ((vec3<f32>(x_379.y, x_379.z, x_379.x) * vec3<f32>(x_381.z, x_381.x, x_381.y)) + -(vec3<f32>(x_384.x, x_384.y, x_384.z)));
  let x_388 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_390 : vec2<f32> = u_xlat29;
  let x_392 : vec4<f32> = u_xlat3;
  let x_394 : vec3<f32> = (vec3<f32>(x_390.x, x_390.x, x_390.x) * vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_395 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_394.x, x_394.y, x_394.z, x_395.w);
  let x_397 : vec4<f32> = u_xlat1;
  let x_399 : vec4<f32> = u_xlat3;
  u_xlat15 = (vec3<f32>(x_397.y, x_397.y, x_397.y) * vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec4<f32> = u_xlat1;
  let x_404 : vec4<f32> = vs_INTERP4;
  let x_407 : vec3<f32> = u_xlat15;
  let x_408 : vec3<f32> = ((vec3<f32>(x_402.x, x_402.x, x_402.x) * vec3<f32>(x_404.x, x_404.y, x_404.z)) + x_407);
  let x_409 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_408.x, x_408.y, x_408.z, x_409.w);
  let x_411 : f32 = u_xlat42;
  let x_413 : vec3<f32> = vs_INTERP8;
  let x_415 : vec4<f32> = u_xlat1;
  let x_417 : vec3<f32> = ((vec3<f32>(x_411, x_411, x_411) * x_413) + vec3<f32>(x_415.x, x_415.y, x_415.z));
  let x_418 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_417.x, x_417.y, x_417.z, x_418.w);
  let x_420 : vec4<f32> = u_xlat1;
  let x_422 : vec4<f32> = u_xlat1;
  u_xlat42 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), vec3<f32>(x_422.x, x_422.y, x_422.z));
  let x_425 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_425);
  let x_427 : f32 = u_xlat42;
  let x_429 : vec4<f32> = u_xlat1;
  let x_431 : vec3<f32> = (vec3<f32>(x_427, x_427, x_427) * vec3<f32>(x_429.x, x_429.y, x_429.z));
  let x_432 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_431.x, x_431.y, x_431.z, x_432.w);
  let x_436 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb42 = (x_436 == 0.0f);
  let x_439 : vec3<f32> = vs_INTERP7;
  let x_444 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_445 : vec3<f32> = (-(x_439) + x_444);
  let x_446 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : vec4<f32> = u_xlat3;
  let x_451 : vec4<f32> = u_xlat3;
  u_xlat44 = dot(vec3<f32>(x_449.x, x_449.y, x_449.z), vec3<f32>(x_451.x, x_451.y, x_451.z));
  let x_454 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_454);
  let x_456 : f32 = u_xlat44;
  let x_458 : vec4<f32> = u_xlat3;
  let x_460 : vec3<f32> = (vec3<f32>(x_456, x_456, x_456) * vec3<f32>(x_458.x, x_458.y, x_458.z));
  let x_461 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_460.x, x_460.y, x_460.z, x_461.w);
  let x_464 : bool = u_xlatb42;
  if (x_464) {
    let x_469 : f32 = u_xlat3.x;
    x_465 = x_469;
  } else {
    let x_473 : f32 = x_29.unity_MatrixV[0i].z;
    x_465 = x_473;
  }
  let x_474 : f32 = x_465;
  u_xlat4.x = x_474;
  let x_476 : bool = u_xlatb42;
  if (x_476) {
    let x_481 : f32 = u_xlat3.y;
    x_477 = x_481;
  } else {
    let x_485 : f32 = x_29.unity_MatrixV[1i].z;
    x_477 = x_485;
  }
  let x_486 : f32 = x_477;
  u_xlat4.y = x_486;
  let x_488 : bool = u_xlatb42;
  if (x_488) {
    let x_493 : f32 = u_xlat3.z;
    x_489 = x_493;
  } else {
    let x_497 : f32 = x_29.unity_MatrixV[2i].z;
    x_489 = x_497;
  }
  let x_498 : f32 = x_489;
  u_xlat4.z = x_498;
  let x_500 : vec3<f32> = vs_INTERP7;
  let x_511 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres0;
  let x_514 : vec3<f32> = (x_500 + -(vec3<f32>(x_511.x, x_511.y, x_511.z)));
  let x_515 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_514.x, x_514.y, x_514.z, x_515.w);
  let x_518 : vec3<f32> = vs_INTERP7;
  let x_520 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres1;
  let x_523 : vec3<f32> = (x_518 + -(vec3<f32>(x_520.x, x_520.y, x_520.z)));
  let x_524 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_523.x, x_523.y, x_523.z, x_524.w);
  let x_527 : vec3<f32> = vs_INTERP7;
  let x_529 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres2;
  let x_532 : vec3<f32> = (x_527 + -(vec3<f32>(x_529.x, x_529.y, x_529.z)));
  let x_533 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
  let x_536 : vec3<f32> = vs_INTERP7;
  let x_538 : vec4<f32> = x_508.x_CascadeShadowSplitSpheres3;
  let x_541 : vec3<f32> = (x_536 + -(vec3<f32>(x_538.x, x_538.y, x_538.z)));
  let x_542 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_541.x, x_541.y, x_541.z, x_542.w);
  let x_544 : vec4<f32> = u_xlat3;
  let x_546 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_544.x, x_544.y, x_544.z), vec3<f32>(x_546.x, x_546.y, x_546.z));
  let x_550 : vec4<f32> = u_xlat5;
  let x_552 : vec4<f32> = u_xlat5;
  u_xlat3.y = dot(vec3<f32>(x_550.x, x_550.y, x_550.z), vec3<f32>(x_552.x, x_552.y, x_552.z));
  let x_556 : vec4<f32> = u_xlat6;
  let x_558 : vec4<f32> = u_xlat6;
  u_xlat3.z = dot(vec3<f32>(x_556.x, x_556.y, x_556.z), vec3<f32>(x_558.x, x_558.y, x_558.z));
  let x_562 : vec4<f32> = u_xlat7;
  let x_564 : vec4<f32> = u_xlat7;
  u_xlat3.w = dot(vec3<f32>(x_562.x, x_562.y, x_562.z), vec3<f32>(x_564.x, x_564.y, x_564.z));
  let x_571 : vec4<f32> = u_xlat3;
  let x_573 : vec4<f32> = x_508.x_CascadeShadowSplitSphereRadii;
  u_xlatb3 = (x_571 < x_573);
  let x_576 : bool = u_xlatb3.x;
  u_xlat5.x = select(0.0f, 1.0f, x_576);
  let x_580 : bool = u_xlatb3.y;
  u_xlat5.y = select(0.0f, 1.0f, x_580);
  let x_584 : bool = u_xlatb3.z;
  u_xlat5.z = select(0.0f, 1.0f, x_584);
  let x_588 : bool = u_xlatb3.w;
  u_xlat5.w = select(0.0f, 1.0f, x_588);
  let x_592 : bool = u_xlatb3.x;
  u_xlat3.x = select(-0.0f, -1.0f, x_592);
  let x_597 : bool = u_xlatb3.y;
  u_xlat3.y = select(-0.0f, -1.0f, x_597);
  let x_601 : bool = u_xlatb3.z;
  u_xlat3.z = select(-0.0f, -1.0f, x_601);
  let x_604 : vec4<f32> = u_xlat3;
  let x_606 : vec4<f32> = u_xlat5;
  let x_608 : vec3<f32> = (vec3<f32>(x_604.x, x_604.y, x_604.z) + vec3<f32>(x_606.y, x_606.z, x_606.w));
  let x_609 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
  let x_611 : vec4<f32> = u_xlat3;
  let x_614 : vec3<f32> = max(vec3<f32>(x_611.x, x_611.y, x_611.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_615 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_615.x, x_614.x, x_614.y, x_614.z);
  let x_617 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(x_617, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_622 : f32 = u_xlat42;
  u_xlat42 = (-(x_622) + 4.0f);
  let x_627 : f32 = u_xlat42;
  u_xlatu42 = u32(x_627);
  let x_631 : u32 = u_xlatu42;
  u_xlati42 = (bitcast<i32>(x_631) << bitcast<u32>(2i));
  let x_634 : vec3<f32> = vs_INTERP7;
  let x_636 : i32 = u_xlati42;
  let x_639 : i32 = u_xlati42;
  let x_643 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_636 + 1i) / 4i)][((x_639 + 1i) % 4i)];
  let x_645 : vec3<f32> = (vec3<f32>(x_634.y, x_634.y, x_634.y) * vec3<f32>(x_643.x, x_643.y, x_643.z));
  let x_646 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : i32 = u_xlati42;
  let x_650 : i32 = u_xlati42;
  let x_653 : vec4<f32> = x_508.x_MainLightWorldToShadow[(x_648 / 4i)][(x_650 % 4i)];
  let x_655 : vec3<f32> = vs_INTERP7;
  let x_658 : vec4<f32> = u_xlat3;
  let x_660 : vec3<f32> = ((vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(x_655.x, x_655.x, x_655.x)) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : i32 = u_xlati42;
  let x_666 : i32 = u_xlati42;
  let x_670 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_663 + 2i) / 4i)][((x_666 + 2i) % 4i)];
  let x_672 : vec3<f32> = vs_INTERP7;
  let x_675 : vec4<f32> = u_xlat3;
  let x_677 : vec3<f32> = ((vec3<f32>(x_670.x, x_670.y, x_670.z) * vec3<f32>(x_672.z, x_672.z, x_672.z)) + vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
  let x_680 : vec4<f32> = u_xlat3;
  let x_682 : i32 = u_xlati42;
  let x_685 : i32 = u_xlati42;
  let x_689 : vec4<f32> = x_508.x_MainLightWorldToShadow[((x_682 + 3i) / 4i)][((x_685 + 3i) % 4i)];
  let x_691 : vec3<f32> = (vec3<f32>(x_680.x, x_680.y, x_680.z) + vec3<f32>(x_689.x, x_689.y, x_689.z));
  let x_692 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  u_xlat1.w = 1.0f;
  let x_697 : vec4<f32> = x_349.unity_SHAr;
  let x_698 : vec4<f32> = u_xlat1;
  u_xlat5.x = dot(x_697, x_698);
  let x_703 : vec4<f32> = x_349.unity_SHAg;
  let x_704 : vec4<f32> = u_xlat1;
  u_xlat5.y = dot(x_703, x_704);
  let x_709 : vec4<f32> = x_349.unity_SHAb;
  let x_710 : vec4<f32> = u_xlat1;
  u_xlat5.z = dot(x_709, x_710);
  let x_713 : vec4<f32> = u_xlat1;
  let x_715 : vec4<f32> = u_xlat1;
  u_xlat6 = (vec4<f32>(x_713.y, x_713.z, x_713.z, x_713.x) * vec4<f32>(x_715.x, x_715.y, x_715.z, x_715.z));
  let x_720 : vec4<f32> = x_349.unity_SHBr;
  let x_721 : vec4<f32> = u_xlat6;
  u_xlat7.x = dot(x_720, x_721);
  let x_726 : vec4<f32> = x_349.unity_SHBg;
  let x_727 : vec4<f32> = u_xlat6;
  u_xlat7.y = dot(x_726, x_727);
  let x_732 : vec4<f32> = x_349.unity_SHBb;
  let x_733 : vec4<f32> = u_xlat6;
  u_xlat7.z = dot(x_732, x_733);
  let x_737 : f32 = u_xlat1.y;
  let x_739 : f32 = u_xlat1.y;
  u_xlat42 = (x_737 * x_739);
  let x_742 : f32 = u_xlat1.x;
  let x_744 : f32 = u_xlat1.x;
  let x_746 : f32 = u_xlat42;
  u_xlat42 = ((x_742 * x_744) + -(x_746));
  let x_751 : vec4<f32> = x_349.unity_SHC;
  let x_753 : f32 = u_xlat42;
  let x_756 : vec4<f32> = u_xlat7;
  let x_758 : vec3<f32> = ((vec3<f32>(x_751.x, x_751.y, x_751.z) * vec3<f32>(x_753, x_753, x_753)) + vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_759 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_758.x, x_758.y, x_758.z, x_759.w);
  let x_761 : vec4<f32> = u_xlat5;
  let x_763 : vec4<f32> = u_xlat6;
  let x_765 : vec3<f32> = (vec3<f32>(x_761.x, x_761.y, x_761.z) + vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_765.x, x_765.y, x_765.z, x_766.w);
  let x_768 : vec4<f32> = u_xlat5;
  let x_770 : vec3<f32> = max(vec3<f32>(x_768.x, x_768.y, x_768.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_771 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
  let x_773 : vec4<f32> = u_xlat2;
  let x_774 : vec2<f32> = vec2<f32>(x_773.x, x_773.y);
  let x_775 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_774.x, x_774.y, x_775.z, x_775.w);
  let x_777 : vec4<f32> = u_xlat2;
  let x_781 : vec2<f32> = clamp(vec2<f32>(x_777.x, x_777.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_782 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_781.x, x_781.y, x_782.z, x_782.w);
  let x_785 : f32 = u_xlat2.x;
  u_xlat42 = ((-(x_785) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_791 : f32 = u_xlat42;
  u_xlat43 = (-(x_791) + 1.0f);
  let x_794 : f32 = u_xlat42;
  let x_796 : vec4<f32> = u_xlat0;
  let x_798 : vec3<f32> = (vec3<f32>(x_794, x_794, x_794) * vec3<f32>(x_796.x, x_796.y, x_796.z));
  let x_799 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_798.x, x_798.y, x_798.z, x_799.w);
  let x_801 : vec4<f32> = u_xlat0;
  let x_805 : vec3<f32> = (vec3<f32>(x_801.x, x_801.y, x_801.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_806 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_805.x, x_805.y, x_805.z, x_806.w);
  let x_808 : vec4<f32> = u_xlat2;
  let x_810 : vec4<f32> = u_xlat0;
  let x_815 : vec3<f32> = ((vec3<f32>(x_808.x, x_808.x, x_808.x) * vec3<f32>(x_810.x, x_810.y, x_810.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_816 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_815.x, x_815.y, x_815.z, x_816.w);
  let x_819 : f32 = u_xlat2.y;
  u_xlat42 = (-(x_819) + 1.0f);
  let x_822 : f32 = u_xlat42;
  let x_823 : f32 = u_xlat42;
  u_xlat2.x = (x_822 * x_823);
  let x_827 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_827, 0.0078125f);
  let x_832 : f32 = u_xlat2.x;
  let x_834 : f32 = u_xlat2.x;
  u_xlat44 = (x_832 * x_834);
  let x_836 : f32 = u_xlat43;
  let x_838 : f32 = u_xlat2.y;
  u_xlat43 = (x_836 + x_838);
  let x_840 : f32 = u_xlat43;
  u_xlat43 = min(x_840, 1.0f);
  let x_844 : f32 = u_xlat2.x;
  u_xlat16 = ((x_844 * 4.0f) + 2.0f);
  let x_849 : f32 = u_xlat2.z;
  u_xlat30 = min(x_849, 1.0f);
  let x_853 : vec4<f32> = u_xlat3;
  let x_854 : vec2<f32> = vec2<f32>(x_853.x, x_853.y);
  let x_856 : f32 = u_xlat3.z;
  txVec0 = vec3<f32>(x_854.x, x_854.y, x_856);
  let x_868 : vec3<f32> = txVec0;
  let x_870 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_868.xy, x_868.z);
  u_xlat3.x = x_870;
  let x_875 : f32 = x_508.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_875) + 1.0f);
  let x_880 : f32 = u_xlat3.x;
  let x_882 : f32 = x_508.x_MainLightShadowParams.x;
  let x_885 : f32 = u_xlat17.x;
  u_xlat3.x = ((x_880 * x_882) + x_885);
  let x_890 : f32 = u_xlat3.z;
  u_xlatb17 = (0.0f >= x_890);
  let x_894 : f32 = u_xlat3.z;
  u_xlatb31.x = (x_894 >= 1.0f);
  let x_898 : bool = u_xlatb31.x;
  let x_899 : bool = u_xlatb17;
  u_xlatb17 = (x_898 | x_899);
  let x_901 : bool = u_xlatb17;
  if (x_901) {
    x_902 = 1.0f;
  } else {
    let x_907 : f32 = u_xlat3.x;
    x_902 = x_907;
  }
  let x_908 : f32 = x_902;
  u_xlat3.x = x_908;
  let x_910 : vec3<f32> = vs_INTERP7;
  let x_912 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat17 = (x_910 + -(x_912));
  let x_915 : vec3<f32> = u_xlat17;
  let x_916 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_915, x_916);
  let x_921 : f32 = u_xlat17.x;
  let x_923 : f32 = x_508.x_MainLightShadowParams.z;
  let x_926 : f32 = x_508.x_MainLightShadowParams.w;
  u_xlat31.x = ((x_921 * x_923) + x_926);
  let x_930 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_930, 0.0f, 1.0f);
  let x_935 : f32 = u_xlat3.x;
  u_xlat45 = (-(x_935) + 1.0f);
  let x_939 : f32 = u_xlat31.x;
  let x_940 : f32 = u_xlat45;
  let x_943 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_939 * x_940) + x_943);
  let x_953 : f32 = x_951.x_MainLightCookieTextureFormat;
  u_xlatb31.x = !((x_953 == -1.0f));
  let x_957 : bool = u_xlatb31.x;
  if (x_957) {
    let x_960 : vec3<f32> = vs_INTERP7;
    let x_963 : vec4<f32> = x_951.x_MainLightWorldToLight[1i];
    u_xlat31 = (vec2<f32>(x_960.y, x_960.y) * vec2<f32>(x_963.x, x_963.y));
    let x_967 : vec4<f32> = x_951.x_MainLightWorldToLight[0i];
    let x_969 : vec3<f32> = vs_INTERP7;
    let x_972 : vec2<f32> = u_xlat31;
    u_xlat31 = ((vec2<f32>(x_967.x, x_967.y) * vec2<f32>(x_969.x, x_969.x)) + x_972);
    let x_975 : vec4<f32> = x_951.x_MainLightWorldToLight[2i];
    let x_977 : vec3<f32> = vs_INTERP7;
    let x_980 : vec2<f32> = u_xlat31;
    u_xlat31 = ((vec2<f32>(x_975.x, x_975.y) * vec2<f32>(x_977.z, x_977.z)) + x_980);
    let x_982 : vec2<f32> = u_xlat31;
    let x_984 : vec4<f32> = x_951.x_MainLightWorldToLight[3i];
    u_xlat31 = (x_982 + vec2<f32>(x_984.x, x_984.y));
    let x_987 : vec2<f32> = u_xlat31;
    u_xlat31 = ((x_987 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_997 : vec2<f32> = u_xlat31;
    let x_999 : f32 = x_29.x_GlobalMipBias.x;
    let x_1000 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, x_997, x_999);
    u_xlat7 = x_1000;
    let x_1002 : f32 = x_951.x_MainLightCookieTextureFormat;
    let x_1004 : f32 = x_951.x_MainLightCookieTextureFormat;
    let x_1006 : f32 = x_951.x_MainLightCookieTextureFormat;
    let x_1008 : f32 = x_951.x_MainLightCookieTextureFormat;
    let x_1009 : vec4<f32> = vec4<f32>(x_1002, x_1004, x_1006, x_1008);
    let x_1016 : vec4<bool> = (vec4<f32>(x_1009.x, x_1009.y, x_1009.z, x_1009.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 1.0f));
    u_xlatb31 = vec2<bool>(x_1016.x, x_1016.y);
    let x_1019 : bool = u_xlatb31.y;
    if (x_1019) {
      let x_1024 : f32 = u_xlat7.w;
      x_1020 = x_1024;
    } else {
      let x_1027 : f32 = u_xlat7.x;
      x_1020 = x_1027;
    }
    let x_1028 : f32 = x_1020;
    u_xlat45 = x_1028;
    let x_1030 : bool = u_xlatb31.x;
    if (x_1030) {
      let x_1034 : vec4<f32> = u_xlat7;
      x_1031 = vec3<f32>(x_1034.x, x_1034.y, x_1034.z);
    } else {
      let x_1037 : f32 = u_xlat45;
      x_1031 = vec3<f32>(x_1037, x_1037, x_1037);
    }
    let x_1039 : vec3<f32> = x_1031;
    let x_1040 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
  }
  let x_1046 : vec4<f32> = u_xlat7;
  let x_1049 : vec4<f32> = x_29.x_MainLightColor;
  let x_1051 : vec3<f32> = (vec3<f32>(x_1046.x, x_1046.y, x_1046.z) * vec3<f32>(x_1049.x, x_1049.y, x_1049.z));
  let x_1052 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1051.x, x_1051.y, x_1051.z, x_1052.w);
  let x_1054 : vec3<f32> = u_xlat4;
  let x_1056 : vec4<f32> = u_xlat1;
  u_xlat31.x = dot(-(x_1054), vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1061 : f32 = u_xlat31.x;
  let x_1063 : f32 = u_xlat31.x;
  u_xlat31.x = (x_1061 + x_1063);
  let x_1067 : vec4<f32> = u_xlat1;
  let x_1069 : vec2<f32> = u_xlat31;
  let x_1073 : vec3<f32> = u_xlat4;
  let x_1075 : vec3<f32> = ((vec3<f32>(x_1067.x, x_1067.y, x_1067.z) * -(vec3<f32>(x_1069.x, x_1069.x, x_1069.x))) + -(x_1073));
  let x_1076 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1075.x, x_1075.y, x_1075.z, x_1076.w);
  let x_1078 : vec4<f32> = u_xlat1;
  let x_1080 : vec3<f32> = u_xlat4;
  u_xlat31.x = dot(vec3<f32>(x_1078.x, x_1078.y, x_1078.z), x_1080);
  let x_1084 : f32 = u_xlat31.x;
  u_xlat31.x = clamp(x_1084, 0.0f, 1.0f);
  let x_1088 : f32 = u_xlat31.x;
  u_xlat31.x = (-(x_1088) + 1.0f);
  let x_1093 : f32 = u_xlat31.x;
  let x_1095 : f32 = u_xlat31.x;
  u_xlat31.x = (x_1093 * x_1095);
  let x_1099 : f32 = u_xlat31.x;
  let x_1101 : f32 = u_xlat31.x;
  u_xlat31.x = (x_1099 * x_1101);
  let x_1104 : f32 = u_xlat42;
  u_xlat45 = ((-(x_1104) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_1110 : f32 = u_xlat42;
  let x_1111 : f32 = u_xlat45;
  u_xlat42 = (x_1110 * x_1111);
  let x_1113 : f32 = u_xlat42;
  u_xlat42 = (x_1113 * 6.0f);
  let x_1123 : vec4<f32> = u_xlat8;
  let x_1125 : f32 = u_xlat42;
  let x_1126 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_1123.x, x_1123.y, x_1123.z), x_1125);
  u_xlat8 = x_1126;
  let x_1128 : f32 = u_xlat8.w;
  u_xlat42 = (x_1128 + -1.0f);
  let x_1131 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_1132 : f32 = u_xlat42;
  u_xlat42 = ((x_1131 * x_1132) + 1.0f);
  let x_1135 : f32 = u_xlat42;
  u_xlat42 = max(x_1135, 0.0f);
  let x_1137 : f32 = u_xlat42;
  u_xlat42 = log2(x_1137);
  let x_1139 : f32 = u_xlat42;
  let x_1141 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_1139 * x_1141);
  let x_1143 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1143);
  let x_1145 : f32 = u_xlat42;
  let x_1147 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_1145 * x_1147);
  let x_1149 : vec4<f32> = u_xlat8;
  let x_1151 : f32 = u_xlat42;
  let x_1153 : vec3<f32> = (vec3<f32>(x_1149.x, x_1149.y, x_1149.z) * vec3<f32>(x_1151, x_1151, x_1151));
  let x_1154 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1153.x, x_1153.y, x_1153.z, x_1154.w);
  let x_1157 : vec4<f32> = u_xlat2;
  let x_1159 : vec4<f32> = u_xlat2;
  u_xlat9 = ((vec2<f32>(x_1157.x, x_1157.x) * vec2<f32>(x_1159.x, x_1159.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_1165 : f32 = u_xlat9.y;
  u_xlat42 = (1.0f / x_1165);
  let x_1168 : vec4<f32> = u_xlat0;
  let x_1171 : f32 = u_xlat43;
  u_xlat23 = (-(vec3<f32>(x_1168.x, x_1168.y, x_1168.z)) + vec3<f32>(x_1171, x_1171, x_1171));
  let x_1174 : vec2<f32> = u_xlat31;
  let x_1176 : vec3<f32> = u_xlat23;
  let x_1178 : vec4<f32> = u_xlat0;
  u_xlat23 = ((vec3<f32>(x_1174.x, x_1174.x, x_1174.x) * x_1176) + vec3<f32>(x_1178.x, x_1178.y, x_1178.z));
  let x_1181 : f32 = u_xlat42;
  let x_1183 : vec3<f32> = u_xlat23;
  u_xlat23 = (vec3<f32>(x_1181, x_1181, x_1181) * x_1183);
  let x_1185 : vec4<f32> = u_xlat8;
  let x_1187 : vec3<f32> = u_xlat23;
  let x_1188 : vec3<f32> = (vec3<f32>(x_1185.x, x_1185.y, x_1185.z) * x_1187);
  let x_1189 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1188.x, x_1188.y, x_1188.z, x_1189.w);
  let x_1191 : vec4<f32> = u_xlat5;
  let x_1193 : vec4<f32> = u_xlat6;
  let x_1196 : vec4<f32> = u_xlat8;
  let x_1198 : vec3<f32> = ((vec3<f32>(x_1191.x, x_1191.y, x_1191.z) * vec3<f32>(x_1193.x, x_1193.y, x_1193.z)) + vec3<f32>(x_1196.x, x_1196.y, x_1196.z));
  let x_1199 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
  let x_1202 : f32 = u_xlat3.x;
  let x_1204 : f32 = x_349.unity_LightData.z;
  u_xlat42 = (x_1202 * x_1204);
  let x_1206 : vec4<f32> = u_xlat1;
  let x_1209 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1206.x, x_1206.y, x_1206.z), vec3<f32>(x_1209.x, x_1209.y, x_1209.z));
  let x_1212 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1212, 0.0f, 1.0f);
  let x_1214 : f32 = u_xlat42;
  let x_1215 : f32 = u_xlat43;
  u_xlat42 = (x_1214 * x_1215);
  let x_1217 : f32 = u_xlat42;
  let x_1219 : vec4<f32> = u_xlat7;
  let x_1221 : vec3<f32> = (vec3<f32>(x_1217, x_1217, x_1217) * vec3<f32>(x_1219.x, x_1219.y, x_1219.z));
  let x_1222 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1221.x, x_1222.y, x_1221.y, x_1221.z);
  let x_1224 : vec3<f32> = u_xlat4;
  let x_1226 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1228 : vec3<f32> = (x_1224 + vec3<f32>(x_1226.x, x_1226.y, x_1226.z));
  let x_1229 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1228.x, x_1228.y, x_1228.z, x_1229.w);
  let x_1231 : vec4<f32> = u_xlat7;
  let x_1233 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1231.x, x_1231.y, x_1231.z), vec3<f32>(x_1233.x, x_1233.y, x_1233.z));
  let x_1236 : f32 = u_xlat42;
  u_xlat42 = max(x_1236, 1.17549435e-38f);
  let x_1239 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1239);
  let x_1241 : f32 = u_xlat42;
  let x_1243 : vec4<f32> = u_xlat7;
  let x_1245 : vec3<f32> = (vec3<f32>(x_1241, x_1241, x_1241) * vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1245.x, x_1245.y, x_1245.z, x_1246.w);
  let x_1248 : vec4<f32> = u_xlat1;
  let x_1250 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1248.x, x_1248.y, x_1248.z), vec3<f32>(x_1250.x, x_1250.y, x_1250.z));
  let x_1253 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1253, 0.0f, 1.0f);
  let x_1256 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1258 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1256.x, x_1256.y, x_1256.z), vec3<f32>(x_1258.x, x_1258.y, x_1258.z));
  let x_1261 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1261, 0.0f, 1.0f);
  let x_1263 : f32 = u_xlat42;
  let x_1264 : f32 = u_xlat42;
  u_xlat42 = (x_1263 * x_1264);
  let x_1266 : f32 = u_xlat42;
  let x_1268 : f32 = u_xlat9.x;
  u_xlat42 = ((x_1266 * x_1268) + 1.00001001358032226562f);
  let x_1272 : f32 = u_xlat43;
  let x_1273 : f32 = u_xlat43;
  u_xlat43 = (x_1272 * x_1273);
  let x_1275 : f32 = u_xlat42;
  let x_1276 : f32 = u_xlat42;
  u_xlat42 = (x_1275 * x_1276);
  let x_1278 : f32 = u_xlat43;
  u_xlat43 = max(x_1278, 0.10000000149011611938f);
  let x_1281 : f32 = u_xlat42;
  let x_1282 : f32 = u_xlat43;
  u_xlat42 = (x_1281 * x_1282);
  let x_1284 : f32 = u_xlat16;
  let x_1285 : f32 = u_xlat42;
  u_xlat42 = (x_1284 * x_1285);
  let x_1287 : f32 = u_xlat44;
  let x_1288 : f32 = u_xlat42;
  u_xlat42 = (x_1287 / x_1288);
  let x_1290 : vec4<f32> = u_xlat0;
  let x_1292 : f32 = u_xlat42;
  let x_1295 : vec4<f32> = u_xlat6;
  let x_1297 : vec3<f32> = ((vec3<f32>(x_1290.x, x_1290.y, x_1290.z) * vec3<f32>(x_1292, x_1292, x_1292)) + vec3<f32>(x_1295.x, x_1295.y, x_1295.z));
  let x_1298 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1297.x, x_1297.y, x_1297.z, x_1298.w);
  let x_1300 : vec4<f32> = u_xlat3;
  let x_1302 : vec4<f32> = u_xlat7;
  let x_1304 : vec3<f32> = (vec3<f32>(x_1300.x, x_1300.z, x_1300.w) * vec3<f32>(x_1302.x, x_1302.y, x_1302.z));
  let x_1305 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1304.x, x_1305.y, x_1304.y, x_1304.z);
  let x_1308 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1310 : f32 = x_349.unity_LightData.y;
  u_xlat42 = min(x_1308, x_1310);
  let x_1312 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1312));
  let x_1316 : f32 = u_xlat17.x;
  let x_1319 : f32 = x_508.x_AdditionalShadowFadeParams.x;
  let x_1322 : f32 = x_508.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_1316 * x_1319) + x_1322);
  let x_1324 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1324, 0.0f, 1.0f);
  let x_1328 : f32 = x_951.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1330 : f32 = x_951.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1332 : f32 = x_951.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1334 : f32 = x_951.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1335 : vec4<f32> = vec4<f32>(x_1328, x_1330, x_1332, x_1334);
  let x_1342 : vec4<bool> = (vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1335.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1342.x, x_1342.y);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1354 : u32 = u_xlatu_loop_1;
    let x_1355 : u32 = u_xlatu42;
    if ((x_1354 < x_1355)) {
    } else {
      break;
    }
    let x_1358 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_1358 >> 2u);
    let x_1361 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1361 & 3u));
    let x_1364 : u32 = u_xlatu17;
    let x_1367 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_1364)];
    let x_1377 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1382 : vec4<u32> = indexable[x_1377];
    u_xlat17.x = dot(x_1367, bitcast<vec4<f32>>(x_1382));
    let x_1388 : f32 = u_xlat17.x;
    u_xlati17 = i32(x_1388);
    let x_1390 : vec3<f32> = vs_INTERP7;
    let x_1401 : i32 = u_xlati17;
    let x_1403 : vec4<f32> = x_1400.x_AdditionalLightsPosition[x_1401];
    let x_1406 : i32 = u_xlati17;
    let x_1408 : vec4<f32> = x_1400.x_AdditionalLightsPosition[x_1406];
    u_xlat23 = ((-(x_1390) * vec3<f32>(x_1403.w, x_1403.w, x_1403.w)) + vec3<f32>(x_1408.x, x_1408.y, x_1408.z));
    let x_1412 : vec3<f32> = u_xlat23;
    let x_1413 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(x_1412, x_1413);
    let x_1415 : f32 = u_xlat46;
    u_xlat46 = max(x_1415, 0.00006103515625f);
    let x_1419 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1419);
    let x_1422 : f32 = u_xlat47;
    let x_1424 : vec3<f32> = u_xlat23;
    u_xlat10 = (vec3<f32>(x_1422, x_1422, x_1422) * x_1424);
    let x_1427 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1427);
    let x_1429 : f32 = u_xlat46;
    let x_1430 : i32 = u_xlati17;
    let x_1432 : f32 = x_1400.x_AdditionalLightsAttenuation[x_1430].x;
    u_xlat46 = (x_1429 * x_1432);
    let x_1434 : f32 = u_xlat46;
    let x_1436 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1434) * x_1436) + 1.0f);
    let x_1439 : f32 = u_xlat46;
    u_xlat46 = max(x_1439, 0.0f);
    let x_1441 : f32 = u_xlat46;
    let x_1442 : f32 = u_xlat46;
    u_xlat46 = (x_1441 * x_1442);
    let x_1444 : f32 = u_xlat46;
    let x_1445 : f32 = u_xlat48;
    u_xlat46 = (x_1444 * x_1445);
    let x_1447 : i32 = u_xlati17;
    let x_1449 : vec4<f32> = x_1400.x_AdditionalLightsSpotDir[x_1447];
    let x_1451 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1449.x, x_1449.y, x_1449.z), x_1451);
    let x_1453 : f32 = u_xlat48;
    let x_1454 : i32 = u_xlati17;
    let x_1456 : f32 = x_1400.x_AdditionalLightsAttenuation[x_1454].z;
    let x_1458 : i32 = u_xlati17;
    let x_1460 : f32 = x_1400.x_AdditionalLightsAttenuation[x_1458].w;
    u_xlat48 = ((x_1453 * x_1456) + x_1460);
    let x_1462 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1462, 0.0f, 1.0f);
    let x_1464 : f32 = u_xlat48;
    let x_1465 : f32 = u_xlat48;
    u_xlat48 = (x_1464 * x_1465);
    let x_1467 : f32 = u_xlat46;
    let x_1468 : f32 = u_xlat48;
    u_xlat46 = (x_1467 * x_1468);
    let x_1472 : i32 = u_xlati17;
    let x_1474 : f32 = x_508.x_AdditionalShadowParams[x_1472].w;
    u_xlati48 = i32(x_1474);
    let x_1477 : i32 = u_xlati48;
    u_xlatb35 = (x_1477 >= 0i);
    let x_1479 : bool = u_xlatb35;
    if (x_1479) {
      let x_1483 : i32 = u_xlati17;
      let x_1485 : f32 = x_508.x_AdditionalShadowParams[x_1483].z;
      u_xlatb35 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1485, x_1485, x_1485, x_1485))));
      let x_1489 : bool = u_xlatb35;
      if (x_1489) {
        let x_1493 : vec3<f32> = u_xlat10;
        let x_1496 : vec3<f32> = u_xlat10;
        let x_1499 : vec4<bool> = (abs(vec4<f32>(x_1493.z, x_1493.z, x_1493.y, x_1493.z)) >= abs(vec4<f32>(x_1496.x, x_1496.y, x_1496.x, x_1496.x)));
        let x_1501 : vec3<bool> = vec3<bool>(x_1499.x, x_1499.y, x_1499.z);
        let x_1502 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1501.x, x_1501.y, x_1501.z, x_1502.w);
        let x_1505 : bool = u_xlatb11.y;
        let x_1507 : bool = u_xlatb11.x;
        u_xlatb35 = (x_1505 & x_1507);
        let x_1509 : vec3<f32> = u_xlat10;
        let x_1512 : vec4<bool> = (-(vec4<f32>(x_1509.z, x_1509.y, x_1509.z, x_1509.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1513 : vec3<bool> = vec3<bool>(x_1512.x, x_1512.y, x_1512.w);
        let x_1514 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1513.x, x_1513.y, x_1514.z, x_1513.z);
        let x_1518 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1518);
        let x_1523 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1523);
        let x_1528 : bool = u_xlatb11.w;
        u_xlat49 = select(0.0f, 1.0f, x_1528);
        let x_1531 : bool = u_xlatb11.z;
        if (x_1531) {
          let x_1536 : f32 = u_xlat11.y;
          x_1532 = x_1536;
        } else {
          let x_1538 : f32 = u_xlat49;
          x_1532 = x_1538;
        }
        let x_1539 : f32 = x_1532;
        u_xlat49 = x_1539;
        let x_1541 : bool = u_xlatb35;
        if (x_1541) {
          let x_1546 : f32 = u_xlat11.x;
          x_1542 = x_1546;
        } else {
          let x_1548 : f32 = u_xlat49;
          x_1542 = x_1548;
        }
        let x_1549 : f32 = x_1542;
        u_xlat35.x = x_1549;
        let x_1551 : i32 = u_xlati17;
        let x_1553 : f32 = x_508.x_AdditionalShadowParams[x_1551].w;
        u_xlat49 = trunc(x_1553);
        let x_1556 : f32 = u_xlat35.x;
        let x_1557 : f32 = u_xlat49;
        u_xlat35.x = (x_1556 + x_1557);
        let x_1561 : f32 = u_xlat35.x;
        u_xlati48 = i32(x_1561);
      }
      let x_1563 : i32 = u_xlati48;
      u_xlati48 = (x_1563 << bitcast<u32>(2i));
      let x_1565 : vec3<f32> = vs_INTERP7;
      let x_1568 : i32 = u_xlati48;
      let x_1571 : i32 = u_xlati48;
      let x_1575 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1568 + 1i) / 4i)][((x_1571 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1565.y, x_1565.y, x_1565.y, x_1565.y) * x_1575);
      let x_1577 : i32 = u_xlati48;
      let x_1579 : i32 = u_xlati48;
      let x_1582 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[(x_1577 / 4i)][(x_1579 % 4i)];
      let x_1583 : vec3<f32> = vs_INTERP7;
      let x_1586 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1582 * vec4<f32>(x_1583.x, x_1583.x, x_1583.x, x_1583.x)) + x_1586);
      let x_1588 : i32 = u_xlati48;
      let x_1591 : i32 = u_xlati48;
      let x_1595 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1588 + 2i) / 4i)][((x_1591 + 2i) % 4i)];
      let x_1596 : vec3<f32> = vs_INTERP7;
      let x_1599 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1595 * vec4<f32>(x_1596.z, x_1596.z, x_1596.z, x_1596.z)) + x_1599);
      let x_1601 : vec4<f32> = u_xlat11;
      let x_1602 : i32 = u_xlati48;
      let x_1605 : i32 = u_xlati48;
      let x_1609 : vec4<f32> = x_508.x_AdditionalLightsWorldToShadow[((x_1602 + 3i) / 4i)][((x_1605 + 3i) % 4i)];
      u_xlat11 = (x_1601 + x_1609);
      let x_1611 : vec4<f32> = u_xlat11;
      let x_1613 : vec4<f32> = u_xlat11;
      let x_1615 : vec3<f32> = (vec3<f32>(x_1611.x, x_1611.y, x_1611.z) / vec3<f32>(x_1613.w, x_1613.w, x_1613.w));
      let x_1616 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1615.x, x_1615.y, x_1615.z, x_1616.w);
      let x_1619 : vec4<f32> = u_xlat11;
      let x_1620 : vec2<f32> = vec2<f32>(x_1619.x, x_1619.y);
      let x_1622 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1620.x, x_1620.y, x_1622);
      let x_1630 : vec3<f32> = txVec1;
      let x_1632 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1630.xy, x_1630.z);
      u_xlat48 = x_1632;
      let x_1633 : i32 = u_xlati17;
      let x_1635 : f32 = x_508.x_AdditionalShadowParams[x_1633].x;
      u_xlat35.x = (1.0f + -(x_1635));
      let x_1639 : f32 = u_xlat48;
      let x_1640 : i32 = u_xlati17;
      let x_1642 : f32 = x_508.x_AdditionalShadowParams[x_1640].x;
      let x_1645 : f32 = u_xlat35.x;
      u_xlat48 = ((x_1639 * x_1642) + x_1645);
      let x_1648 : f32 = u_xlat11.z;
      u_xlatb35 = (0.0f >= x_1648);
      let x_1652 : f32 = u_xlat11.z;
      u_xlatb49 = (x_1652 >= 1.0f);
      let x_1654 : bool = u_xlatb49;
      let x_1655 : bool = u_xlatb35;
      u_xlatb35 = (x_1654 | x_1655);
      let x_1657 : bool = u_xlatb35;
      let x_1658 : f32 = u_xlat48;
      u_xlat48 = select(x_1658, 1.0f, x_1657);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1661 : f32 = u_xlat48;
    u_xlat35.x = (-(x_1661) + 1.0f);
    let x_1665 : f32 = u_xlat43;
    let x_1667 : f32 = u_xlat35.x;
    let x_1669 : f32 = u_xlat48;
    u_xlat48 = ((x_1665 * x_1667) + x_1669);
    let x_1672 : i32 = u_xlati17;
    u_xlati35 = (1i << bitcast<u32>((x_1672 & 31i)));
    let x_1676 : i32 = u_xlati35;
    let x_1679 : f32 = x_951.x_AdditionalLightsCookieEnableBits;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_1676) & bitcast<u32>(x_1679)));
    let x_1683 : i32 = u_xlati35;
    if ((x_1683 != 0i)) {
      let x_1687 : i32 = u_xlati17;
      let x_1689 : f32 = x_951.x_AdditionalLightsLightTypes[x_1687].el;
      u_xlati35 = i32(x_1689);
      let x_1692 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_1692 != 0i));
      let x_1696 : i32 = u_xlati17;
      u_xlati50 = (x_1696 << bitcast<u32>(2i));
      let x_1698 : i32 = u_xlati49;
      if ((x_1698 != 0i)) {
        let x_1702 : vec3<f32> = vs_INTERP7;
        let x_1704 : i32 = u_xlati50;
        let x_1707 : i32 = u_xlati50;
        let x_1711 : vec4<f32> = x_951.x_AdditionalLightsWorldToLights[((x_1704 + 1i) / 4i)][((x_1707 + 1i) % 4i)];
        let x_1713 : vec3<f32> = (vec3<f32>(x_1702.y, x_1702.y, x_1702.y) * vec3<f32>(x_1711.x, x_1711.y, x_1711.w));
        let x_1714 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1713.x, x_1713.y, x_1713.z, x_1714.w);
        let x_1716 : i32 = u_xlati50;
        let x_1718 : i32 = u_xlati50;
        let x_1721 : vec4<f32> = x_951.x_AdditionalLightsWorldToLights[(x_1716 / 4i)][(x_1718 % 4i)];
        let x_1723 : vec3<f32> = vs_INTERP7;
        let x_1726 : vec4<f32> = u_xlat11;
        let x_1728 : vec3<f32> = ((vec3<f32>(x_1721.x, x_1721.y, x_1721.w) * vec3<f32>(x_1723.x, x_1723.x, x_1723.x)) + vec3<f32>(x_1726.x, x_1726.y, x_1726.z));
        let x_1729 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1728.x, x_1728.y, x_1728.z, x_1729.w);
        let x_1731 : i32 = u_xlati50;
        let x_1734 : i32 = u_xlati50;
        let x_1738 : vec4<f32> = x_951.x_AdditionalLightsWorldToLights[((x_1731 + 2i) / 4i)][((x_1734 + 2i) % 4i)];
        let x_1740 : vec3<f32> = vs_INTERP7;
        let x_1743 : vec4<f32> = u_xlat11;
        let x_1745 : vec3<f32> = ((vec3<f32>(x_1738.x, x_1738.y, x_1738.w) * vec3<f32>(x_1740.z, x_1740.z, x_1740.z)) + vec3<f32>(x_1743.x, x_1743.y, x_1743.z));
        let x_1746 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1745.x, x_1745.y, x_1745.z, x_1746.w);
        let x_1748 : vec4<f32> = u_xlat11;
        let x_1750 : i32 = u_xlati50;
        let x_1753 : i32 = u_xlati50;
        let x_1757 : vec4<f32> = x_951.x_AdditionalLightsWorldToLights[((x_1750 + 3i) / 4i)][((x_1753 + 3i) % 4i)];
        let x_1759 : vec3<f32> = (vec3<f32>(x_1748.x, x_1748.y, x_1748.z) + vec3<f32>(x_1757.x, x_1757.y, x_1757.w));
        let x_1760 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1759.x, x_1759.y, x_1759.z, x_1760.w);
        let x_1762 : vec4<f32> = u_xlat11;
        let x_1764 : vec4<f32> = u_xlat11;
        let x_1766 : vec2<f32> = (vec2<f32>(x_1762.x, x_1762.y) / vec2<f32>(x_1764.z, x_1764.z));
        let x_1767 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1766.x, x_1766.y, x_1767.z, x_1767.w);
        let x_1769 : vec4<f32> = u_xlat11;
        let x_1772 : vec2<f32> = ((vec2<f32>(x_1769.x, x_1769.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1773 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1772.x, x_1772.y, x_1773.z, x_1773.w);
        let x_1775 : vec4<f32> = u_xlat11;
        let x_1779 : vec2<f32> = clamp(vec2<f32>(x_1775.x, x_1775.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1780 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1779.x, x_1779.y, x_1780.z, x_1780.w);
        let x_1782 : i32 = u_xlati17;
        let x_1784 : vec4<f32> = x_951.x_AdditionalLightsCookieAtlasUVRects[x_1782];
        let x_1786 : vec4<f32> = u_xlat11;
        let x_1789 : i32 = u_xlati17;
        let x_1791 : vec4<f32> = x_951.x_AdditionalLightsCookieAtlasUVRects[x_1789];
        let x_1793 : vec2<f32> = ((vec2<f32>(x_1784.x, x_1784.y) * vec2<f32>(x_1786.x, x_1786.y)) + vec2<f32>(x_1791.z, x_1791.w));
        let x_1794 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1793.x, x_1793.y, x_1794.z, x_1794.w);
      } else {
        let x_1797 : i32 = u_xlati35;
        u_xlatb35 = (x_1797 == 1i);
        let x_1799 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1799);
        let x_1801 : i32 = u_xlati35;
        if ((x_1801 != 0i)) {
          let x_1805 : vec3<f32> = vs_INTERP7;
          let x_1807 : i32 = u_xlati50;
          let x_1810 : i32 = u_xlati50;
          let x_1814 : vec4<f32> = x_951.x_AdditionalLightsWorldToLights[((x_1807 + 1i) / 4i)][((x_1810 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1805.y, x_1805.y) * vec2<f32>(x_1814.x, x_1814.y));
          let x_1817 : i32 = u_xlati50;
          let x_1819 : i32 = u_xlati50;
          let x_1822 : vec4<f32> = x_951.x_AdditionalLightsWorldToLights[(x_1817 / 4i)][(x_1819 % 4i)];
          let x_1824 : vec3<f32> = vs_INTERP7;
          let x_1827 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1822.x, x_1822.y) * vec2<f32>(x_1824.x, x_1824.x)) + x_1827);
          let x_1829 : i32 = u_xlati50;
          let x_1832 : i32 = u_xlati50;
          let x_1836 : vec4<f32> = x_951.x_AdditionalLightsWorldToLights[((x_1829 + 2i) / 4i)][((x_1832 + 2i) % 4i)];
          let x_1838 : vec3<f32> = vs_INTERP7;
          let x_1841 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1836.x, x_1836.y) * vec2<f32>(x_1838.z, x_1838.z)) + x_1841);
          let x_1843 : vec2<f32> = u_xlat35;
          let x_1844 : i32 = u_xlati50;
          let x_1847 : i32 = u_xlati50;
          let x_1851 : vec4<f32> = x_951.x_AdditionalLightsWorldToLights[((x_1844 + 3i) / 4i)][((x_1847 + 3i) % 4i)];
          u_xlat35 = (x_1843 + vec2<f32>(x_1851.x, x_1851.y));
          let x_1854 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1854 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1857 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1857);
          let x_1859 : i32 = u_xlati17;
          let x_1861 : vec4<f32> = x_951.x_AdditionalLightsCookieAtlasUVRects[x_1859];
          let x_1863 : vec2<f32> = u_xlat35;
          let x_1865 : i32 = u_xlati17;
          let x_1867 : vec4<f32> = x_951.x_AdditionalLightsCookieAtlasUVRects[x_1865];
          let x_1869 : vec2<f32> = ((vec2<f32>(x_1861.x, x_1861.y) * x_1863) + vec2<f32>(x_1867.z, x_1867.w));
          let x_1870 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1869.x, x_1869.y, x_1870.z, x_1870.w);
        } else {
          let x_1874 : vec3<f32> = vs_INTERP7;
          let x_1876 : i32 = u_xlati50;
          let x_1879 : i32 = u_xlati50;
          let x_1883 : vec4<f32> = x_951.x_AdditionalLightsWorldToLights[((x_1876 + 1i) / 4i)][((x_1879 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1874.y, x_1874.y, x_1874.y, x_1874.y) * x_1883);
          let x_1885 : i32 = u_xlati50;
          let x_1887 : i32 = u_xlati50;
          let x_1890 : vec4<f32> = x_951.x_AdditionalLightsWorldToLights[(x_1885 / 4i)][(x_1887 % 4i)];
          let x_1891 : vec3<f32> = vs_INTERP7;
          let x_1894 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1890 * vec4<f32>(x_1891.x, x_1891.x, x_1891.x, x_1891.x)) + x_1894);
          let x_1896 : i32 = u_xlati50;
          let x_1899 : i32 = u_xlati50;
          let x_1903 : vec4<f32> = x_951.x_AdditionalLightsWorldToLights[((x_1896 + 2i) / 4i)][((x_1899 + 2i) % 4i)];
          let x_1904 : vec3<f32> = vs_INTERP7;
          let x_1907 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1903 * vec4<f32>(x_1904.z, x_1904.z, x_1904.z, x_1904.z)) + x_1907);
          let x_1909 : vec4<f32> = u_xlat12;
          let x_1910 : i32 = u_xlati50;
          let x_1913 : i32 = u_xlati50;
          let x_1917 : vec4<f32> = x_951.x_AdditionalLightsWorldToLights[((x_1910 + 3i) / 4i)][((x_1913 + 3i) % 4i)];
          u_xlat12 = (x_1909 + x_1917);
          let x_1919 : vec4<f32> = u_xlat12;
          let x_1921 : vec4<f32> = u_xlat12;
          let x_1923 : vec3<f32> = (vec3<f32>(x_1919.x, x_1919.y, x_1919.z) / vec3<f32>(x_1921.w, x_1921.w, x_1921.w));
          let x_1924 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1923.x, x_1923.y, x_1923.z, x_1924.w);
          let x_1926 : vec4<f32> = u_xlat12;
          let x_1928 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1926.x, x_1926.y, x_1926.z), vec3<f32>(x_1928.x, x_1928.y, x_1928.z));
          let x_1933 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1933);
          let x_1936 : vec2<f32> = u_xlat35;
          let x_1938 : vec4<f32> = u_xlat12;
          let x_1940 : vec3<f32> = (vec3<f32>(x_1936.x, x_1936.x, x_1936.x) * vec3<f32>(x_1938.x, x_1938.y, x_1938.z));
          let x_1941 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1940.x, x_1940.y, x_1940.z, x_1941.w);
          let x_1943 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1943.x, x_1943.y, x_1943.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1949 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1949, 0.00000099999999747524f);
          let x_1954 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1954);
          let x_1958 : vec2<f32> = u_xlat35;
          let x_1960 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1958.x, x_1958.x, x_1958.x) * vec3<f32>(x_1960.z, x_1960.x, x_1960.y));
          let x_1964 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1964);
          let x_1968 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1968, 0.0f, 1.0f);
          let x_1972 : vec3<f32> = u_xlat13;
          let x_1974 : vec4<bool> = (vec4<f32>(x_1972.y, x_1972.z, x_1972.y, x_1972.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1974.x, x_1974.y);
          let x_1978 : bool = u_xlatb39.x;
          if (x_1978) {
            let x_1983 : f32 = u_xlat13.x;
            x_1979 = x_1983;
          } else {
            let x_1986 : f32 = u_xlat13.x;
            x_1979 = -(x_1986);
          }
          let x_1988 : f32 = x_1979;
          u_xlat39.x = x_1988;
          let x_1991 : bool = u_xlatb39.y;
          if (x_1991) {
            let x_1996 : f32 = u_xlat13.x;
            x_1992 = x_1996;
          } else {
            let x_1999 : f32 = u_xlat13.x;
            x_1992 = -(x_1999);
          }
          let x_2001 : f32 = x_1992;
          u_xlat39.y = x_2001;
          let x_2003 : vec4<f32> = u_xlat12;
          let x_2005 : vec2<f32> = u_xlat35;
          let x_2008 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_2003.x, x_2003.y) * vec2<f32>(x_2005.x, x_2005.x)) + x_2008);
          let x_2010 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_2010 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_2013 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_2013, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_2017 : i32 = u_xlati17;
          let x_2019 : vec4<f32> = x_951.x_AdditionalLightsCookieAtlasUVRects[x_2017];
          let x_2021 : vec2<f32> = u_xlat35;
          let x_2023 : i32 = u_xlati17;
          let x_2025 : vec4<f32> = x_951.x_AdditionalLightsCookieAtlasUVRects[x_2023];
          let x_2027 : vec2<f32> = ((vec2<f32>(x_2019.x, x_2019.y) * x_2021) + vec2<f32>(x_2025.z, x_2025.w));
          let x_2028 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_2027.x, x_2027.y, x_2028.z, x_2028.w);
        }
      }
      let x_2035 : vec4<f32> = u_xlat11;
      let x_2037 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_2035.x, x_2035.y), 0.0f);
      u_xlat11 = x_2037;
      let x_2039 : bool = u_xlatb7.y;
      if (x_2039) {
        let x_2044 : f32 = u_xlat11.w;
        x_2040 = x_2044;
      } else {
        let x_2047 : f32 = u_xlat11.x;
        x_2040 = x_2047;
      }
      let x_2048 : f32 = x_2040;
      u_xlat35.x = x_2048;
      let x_2051 : bool = u_xlatb7.x;
      if (x_2051) {
        let x_2055 : vec4<f32> = u_xlat11;
        x_2052 = vec3<f32>(x_2055.x, x_2055.y, x_2055.z);
      } else {
        let x_2058 : vec2<f32> = u_xlat35;
        x_2052 = vec3<f32>(x_2058.x, x_2058.x, x_2058.x);
      }
      let x_2060 : vec3<f32> = x_2052;
      let x_2061 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_2060.x, x_2060.y, x_2060.z, x_2061.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_2067 : vec4<f32> = u_xlat11;
    let x_2069 : i32 = u_xlati17;
    let x_2071 : vec4<f32> = x_1400.x_AdditionalLightsColor[x_2069];
    let x_2073 : vec3<f32> = (vec3<f32>(x_2067.x, x_2067.y, x_2067.z) * vec3<f32>(x_2071.x, x_2071.y, x_2071.z));
    let x_2074 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2073.x, x_2073.y, x_2073.z, x_2074.w);
    let x_2076 : f32 = u_xlat46;
    let x_2077 : f32 = u_xlat48;
    u_xlat17.x = (x_2076 * x_2077);
    let x_2080 : vec4<f32> = u_xlat1;
    let x_2082 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_2080.x, x_2080.y, x_2080.z), x_2082);
    let x_2084 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2084, 0.0f, 1.0f);
    let x_2087 : f32 = u_xlat17.x;
    let x_2088 : f32 = u_xlat46;
    u_xlat17.x = (x_2087 * x_2088);
    let x_2091 : vec3<f32> = u_xlat17;
    let x_2093 : vec4<f32> = u_xlat11;
    let x_2095 : vec3<f32> = (vec3<f32>(x_2091.x, x_2091.x, x_2091.x) * vec3<f32>(x_2093.x, x_2093.y, x_2093.z));
    let x_2096 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_2095.x, x_2095.y, x_2095.z, x_2096.w);
    let x_2098 : vec3<f32> = u_xlat23;
    let x_2099 : f32 = u_xlat47;
    let x_2102 : vec3<f32> = u_xlat4;
    u_xlat23 = ((x_2098 * vec3<f32>(x_2099, x_2099, x_2099)) + x_2102);
    let x_2104 : vec3<f32> = u_xlat23;
    let x_2105 : vec3<f32> = u_xlat23;
    u_xlat17.x = dot(x_2104, x_2105);
    let x_2109 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_2109, 1.17549435e-38f);
    let x_2113 : f32 = u_xlat17.x;
    u_xlat17.x = inverseSqrt(x_2113);
    let x_2116 : vec3<f32> = u_xlat17;
    let x_2118 : vec3<f32> = u_xlat23;
    u_xlat23 = (vec3<f32>(x_2116.x, x_2116.x, x_2116.x) * x_2118);
    let x_2120 : vec4<f32> = u_xlat1;
    let x_2122 : vec3<f32> = u_xlat23;
    u_xlat17.x = dot(vec3<f32>(x_2120.x, x_2120.y, x_2120.z), x_2122);
    let x_2126 : f32 = u_xlat17.x;
    u_xlat17.x = clamp(x_2126, 0.0f, 1.0f);
    let x_2129 : vec3<f32> = u_xlat10;
    let x_2130 : vec3<f32> = u_xlat23;
    u_xlat46 = dot(x_2129, x_2130);
    let x_2132 : f32 = u_xlat46;
    u_xlat46 = clamp(x_2132, 0.0f, 1.0f);
    let x_2135 : f32 = u_xlat17.x;
    let x_2137 : f32 = u_xlat17.x;
    u_xlat17.x = (x_2135 * x_2137);
    let x_2141 : f32 = u_xlat17.x;
    let x_2143 : f32 = u_xlat9.x;
    u_xlat17.x = ((x_2141 * x_2143) + 1.00001001358032226562f);
    let x_2147 : f32 = u_xlat46;
    let x_2148 : f32 = u_xlat46;
    u_xlat46 = (x_2147 * x_2148);
    let x_2151 : f32 = u_xlat17.x;
    let x_2153 : f32 = u_xlat17.x;
    u_xlat17.x = (x_2151 * x_2153);
    let x_2156 : f32 = u_xlat46;
    u_xlat46 = max(x_2156, 0.10000000149011611938f);
    let x_2159 : f32 = u_xlat17.x;
    let x_2160 : f32 = u_xlat46;
    u_xlat17.x = (x_2159 * x_2160);
    let x_2163 : f32 = u_xlat16;
    let x_2165 : f32 = u_xlat17.x;
    u_xlat17.x = (x_2163 * x_2165);
    let x_2168 : f32 = u_xlat44;
    let x_2170 : f32 = u_xlat17.x;
    u_xlat17.x = (x_2168 / x_2170);
    let x_2173 : vec4<f32> = u_xlat0;
    let x_2175 : vec3<f32> = u_xlat17;
    let x_2178 : vec4<f32> = u_xlat6;
    u_xlat23 = ((vec3<f32>(x_2173.x, x_2173.y, x_2173.z) * vec3<f32>(x_2175.x, x_2175.x, x_2175.x)) + vec3<f32>(x_2178.x, x_2178.y, x_2178.z));
    let x_2181 : vec3<f32> = u_xlat23;
    let x_2182 : vec4<f32> = u_xlat11;
    let x_2185 : vec4<f32> = u_xlat8;
    let x_2187 : vec3<f32> = ((x_2181 * vec3<f32>(x_2182.x, x_2182.y, x_2182.z)) + vec3<f32>(x_2185.x, x_2185.y, x_2185.z));
    let x_2188 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_2187.x, x_2187.y, x_2187.z, x_2188.w);

    continuing {
      let x_2190 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_2190 + bitcast<u32>(1i));
    }
  }
  let x_2192 : vec4<f32> = u_xlat5;
  let x_2194 : f32 = u_xlat30;
  let x_2197 : vec4<f32> = u_xlat3;
  let x_2199 : vec3<f32> = ((vec3<f32>(x_2192.x, x_2192.y, x_2192.z) * vec3<f32>(x_2194, x_2194, x_2194)) + vec3<f32>(x_2197.x, x_2197.z, x_2197.w));
  let x_2200 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_2199.x, x_2199.y, x_2199.z, x_2200.w);
  let x_2204 : vec4<f32> = u_xlat8;
  let x_2206 : vec4<f32> = u_xlat0;
  let x_2208 : vec3<f32> = (vec3<f32>(x_2204.x, x_2204.y, x_2204.z) + vec3<f32>(x_2206.x, x_2206.y, x_2206.z));
  let x_2209 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_2208.x, x_2208.y, x_2208.z, x_2209.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_INTERP5_param : vec4<f32>, @location(0) vs_INTERP4_param : vec4<f32>, @location(3) vs_INTERP8_param : vec3<f32>, @location(2) vs_INTERP7_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


