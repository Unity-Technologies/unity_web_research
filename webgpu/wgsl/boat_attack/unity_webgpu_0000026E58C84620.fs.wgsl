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

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat43 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat30 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat45 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(10) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat46 : f32;

@group(1) @binding(3) var<uniform> x_692 : LightShadows;

var<private> u_xlatb46 : bool;

var<private> u_xlatb47 : bool;

var<private> u_xlat47 : f32;

@group(1) @binding(4) var<uniform> x_755 : LightCookies;

@group(0) @binding(3) var x_MainLightCookieTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainLightCookieTexture : sampler;

var<private> u_xlatb7 : vec2<bool>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat48 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat8 : vec2<f32>;

var<private> u_xlat22 : vec3<f32>;

var<private> u_xlatu42 : u32;

var<private> u_xlatu45 : u32;

var<private> u_xlati46 : i32;

var<private> u_xlati45 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_1203 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

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

var<private> u_xlati51 : i32;

var<private> u_xlat12 : vec4<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb39 : vec2<bool>;

var<private> u_xlat39 : vec2<f32>;

@group(0) @binding(4) var x_AdditionalLightsCookieAtlasTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_LinearClamp : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu2 : u32;

var<private> u_xlatb45 : bool;

fn main_1() {
  var x_135 : f32;
  var x_200 : f32;
  var x_209 : f32;
  var x_465 : f32;
  var x_477 : f32;
  var x_489 : f32;
  var txVec0 : vec3<f32>;
  var x_839 : f32;
  var x_850 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1334 : f32;
  var x_1344 : f32;
  var txVec1 : vec3<f32>;
  var x_1781 : f32;
  var x_1794 : f32;
  var x_1842 : f32;
  var x_1854 : vec3<f32>;
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
  u_xlat1.w = 1.0f;
  let x_504 : vec4<f32> = x_349.unity_SHAr;
  let x_505 : vec4<f32> = u_xlat1;
  u_xlat3.x = dot(x_504, x_505);
  let x_510 : vec4<f32> = x_349.unity_SHAg;
  let x_511 : vec4<f32> = u_xlat1;
  u_xlat3.y = dot(x_510, x_511);
  let x_516 : vec4<f32> = x_349.unity_SHAb;
  let x_517 : vec4<f32> = u_xlat1;
  u_xlat3.z = dot(x_516, x_517);
  let x_521 : vec4<f32> = u_xlat1;
  let x_523 : vec4<f32> = u_xlat1;
  u_xlat5 = (vec4<f32>(x_521.y, x_521.z, x_521.z, x_521.x) * vec4<f32>(x_523.x, x_523.y, x_523.z, x_523.z));
  let x_529 : vec4<f32> = x_349.unity_SHBr;
  let x_530 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(x_529, x_530);
  let x_535 : vec4<f32> = x_349.unity_SHBg;
  let x_536 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(x_535, x_536);
  let x_541 : vec4<f32> = x_349.unity_SHBb;
  let x_542 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(x_541, x_542);
  let x_546 : f32 = u_xlat1.y;
  let x_548 : f32 = u_xlat1.y;
  u_xlat42 = (x_546 * x_548);
  let x_551 : f32 = u_xlat1.x;
  let x_553 : f32 = u_xlat1.x;
  let x_555 : f32 = u_xlat42;
  u_xlat42 = ((x_551 * x_553) + -(x_555));
  let x_560 : vec4<f32> = x_349.unity_SHC;
  let x_562 : f32 = u_xlat42;
  let x_565 : vec4<f32> = u_xlat6;
  let x_567 : vec3<f32> = ((vec3<f32>(x_560.x, x_560.y, x_560.z) * vec3<f32>(x_562, x_562, x_562)) + vec3<f32>(x_565.x, x_565.y, x_565.z));
  let x_568 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_567.x, x_567.y, x_567.z, x_568.w);
  let x_570 : vec4<f32> = u_xlat3;
  let x_572 : vec4<f32> = u_xlat5;
  let x_574 : vec3<f32> = (vec3<f32>(x_570.x, x_570.y, x_570.z) + vec3<f32>(x_572.x, x_572.y, x_572.z));
  let x_575 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_574.x, x_574.y, x_574.z, x_575.w);
  let x_577 : vec4<f32> = u_xlat3;
  let x_580 : vec3<f32> = max(vec3<f32>(x_577.x, x_577.y, x_577.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_581 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
  let x_583 : vec4<f32> = u_xlat2;
  let x_584 : vec2<f32> = vec2<f32>(x_583.x, x_583.y);
  let x_585 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_584.x, x_584.y, x_585.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat2;
  let x_591 : vec2<f32> = clamp(vec2<f32>(x_587.x, x_587.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_592 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
  let x_595 : f32 = u_xlat2.x;
  u_xlat42 = ((-(x_595) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_601 : f32 = u_xlat42;
  let x_604 : f32 = u_xlat2.y;
  u_xlat43 = (-(x_601) + x_604);
  let x_606 : f32 = u_xlat42;
  let x_608 : vec4<f32> = u_xlat0;
  let x_610 : vec3<f32> = (vec3<f32>(x_606, x_606, x_606) * vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_611 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
  let x_613 : vec4<f32> = u_xlat0;
  let x_617 : vec3<f32> = (vec3<f32>(x_613.x, x_613.y, x_613.z) + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_618 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_617.x, x_617.y, x_617.z, x_618.w);
  let x_620 : vec4<f32> = u_xlat2;
  let x_622 : vec4<f32> = u_xlat0;
  let x_627 : vec3<f32> = ((vec3<f32>(x_620.x, x_620.x, x_620.x) * vec3<f32>(x_622.x, x_622.y, x_622.z)) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_628 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = u_xlat2.y;
  u_xlat42 = (-(x_631) + 1.0f);
  let x_634 : f32 = u_xlat42;
  let x_635 : f32 = u_xlat42;
  u_xlat2.x = (x_634 * x_635);
  let x_639 : f32 = u_xlat2.x;
  u_xlat2.x = max(x_639, 0.0078125f);
  let x_645 : f32 = u_xlat2.x;
  let x_647 : f32 = u_xlat2.x;
  u_xlat16 = (x_645 * x_647);
  let x_649 : f32 = u_xlat43;
  u_xlat43 = (x_649 + 1.0f);
  let x_651 : f32 = u_xlat43;
  u_xlat43 = min(x_651, 1.0f);
  let x_654 : f32 = u_xlat2.x;
  u_xlat44 = ((x_654 * 4.0f) + 2.0f);
  let x_660 : f32 = u_xlat2.z;
  u_xlat30 = min(x_660, 1.0f);
  let x_665 : vec4<f32> = vs_INTERP3;
  let x_666 : vec2<f32> = vec2<f32>(x_665.x, x_665.y);
  let x_668 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_666.x, x_666.y, x_668);
  let x_681 : vec3<f32> = txVec0;
  let x_683 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_681.xy, x_681.z);
  u_xlat45 = x_683;
  let x_695 : f32 = x_692.x_MainLightShadowParams.x;
  u_xlat46 = (-(x_695) + 1.0f);
  let x_698 : f32 = u_xlat45;
  let x_700 : f32 = x_692.x_MainLightShadowParams.x;
  let x_702 : f32 = u_xlat46;
  u_xlat45 = ((x_698 * x_700) + x_702);
  let x_706 : f32 = vs_INTERP3.z;
  u_xlatb46 = (0.0f >= x_706);
  let x_710 : f32 = vs_INTERP3.z;
  u_xlatb47 = (x_710 >= 1.0f);
  let x_712 : bool = u_xlatb46;
  let x_713 : bool = u_xlatb47;
  u_xlatb46 = (x_712 | x_713);
  let x_715 : bool = u_xlatb46;
  let x_716 : f32 = u_xlat45;
  u_xlat45 = select(x_716, 1.0f, x_715);
  let x_718 : vec3<f32> = vs_INTERP7;
  let x_720 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_722 : vec3<f32> = (x_718 + -(x_720));
  let x_723 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_722.x, x_722.y, x_722.z, x_723.w);
  let x_725 : vec4<f32> = u_xlat6;
  let x_727 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(vec3<f32>(x_725.x, x_725.y, x_725.z), vec3<f32>(x_727.x, x_727.y, x_727.z));
  let x_731 : f32 = u_xlat46;
  let x_733 : f32 = x_692.x_MainLightShadowParams.z;
  let x_736 : f32 = x_692.x_MainLightShadowParams.w;
  u_xlat47 = ((x_731 * x_733) + x_736);
  let x_738 : f32 = u_xlat47;
  u_xlat47 = clamp(x_738, 0.0f, 1.0f);
  let x_740 : f32 = u_xlat45;
  u_xlat6.x = (-(x_740) + 1.0f);
  let x_744 : f32 = u_xlat47;
  let x_746 : f32 = u_xlat6.x;
  let x_748 : f32 = u_xlat45;
  u_xlat45 = ((x_744 * x_746) + x_748);
  let x_757 : f32 = x_755.x_MainLightCookieTextureFormat;
  u_xlatb47 = !((x_757 == -1.0f));
  let x_759 : bool = u_xlatb47;
  if (x_759) {
    let x_762 : vec3<f32> = vs_INTERP7;
    let x_765 : vec4<f32> = x_755.x_MainLightWorldToLight[1i];
    let x_767 : vec2<f32> = (vec2<f32>(x_762.y, x_762.y) * vec2<f32>(x_765.x, x_765.y));
    let x_768 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_767.x, x_767.y, x_768.z, x_768.w);
    let x_771 : vec4<f32> = x_755.x_MainLightWorldToLight[0i];
    let x_773 : vec3<f32> = vs_INTERP7;
    let x_776 : vec4<f32> = u_xlat6;
    let x_778 : vec2<f32> = ((vec2<f32>(x_771.x, x_771.y) * vec2<f32>(x_773.x, x_773.x)) + vec2<f32>(x_776.x, x_776.y));
    let x_779 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_778.x, x_778.y, x_779.z, x_779.w);
    let x_782 : vec4<f32> = x_755.x_MainLightWorldToLight[2i];
    let x_784 : vec3<f32> = vs_INTERP7;
    let x_787 : vec4<f32> = u_xlat6;
    let x_789 : vec2<f32> = ((vec2<f32>(x_782.x, x_782.y) * vec2<f32>(x_784.z, x_784.z)) + vec2<f32>(x_787.x, x_787.y));
    let x_790 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_789.x, x_789.y, x_790.z, x_790.w);
    let x_792 : vec4<f32> = u_xlat6;
    let x_795 : vec4<f32> = x_755.x_MainLightWorldToLight[3i];
    let x_797 : vec2<f32> = (vec2<f32>(x_792.x, x_792.y) + vec2<f32>(x_795.x, x_795.y));
    let x_798 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_797.x, x_797.y, x_798.z, x_798.w);
    let x_800 : vec4<f32> = u_xlat6;
    let x_805 : vec2<f32> = ((vec2<f32>(x_800.x, x_800.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
    let x_806 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_805.x, x_805.y, x_806.z, x_806.w);
    let x_813 : vec4<f32> = u_xlat6;
    let x_816 : f32 = x_29.x_GlobalMipBias.x;
    let x_817 : vec4<f32> = textureSampleBias(x_MainLightCookieTexture, sampler_MainLightCookieTexture, vec2<f32>(x_813.x, x_813.y), x_816);
    u_xlat6 = x_817;
    let x_820 : f32 = x_755.x_MainLightCookieTextureFormat;
    let x_822 : f32 = x_755.x_MainLightCookieTextureFormat;
    let x_824 : f32 = x_755.x_MainLightCookieTextureFormat;
    let x_826 : f32 = x_755.x_MainLightCookieTextureFormat;
    let x_827 : vec4<f32> = vec4<f32>(x_820, x_822, x_824, x_826);
    let x_835 : vec4<bool> = (vec4<f32>(x_827.x, x_827.y, x_827.z, x_827.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
    u_xlatb7 = vec2<bool>(x_835.x, x_835.y);
    let x_838 : bool = u_xlatb7.y;
    if (x_838) {
      let x_843 : f32 = u_xlat6.w;
      x_839 = x_843;
    } else {
      let x_846 : f32 = u_xlat6.x;
      x_839 = x_846;
    }
    let x_847 : f32 = x_839;
    u_xlat47 = x_847;
    let x_849 : bool = u_xlatb7.x;
    if (x_849) {
      let x_853 : vec4<f32> = u_xlat6;
      x_850 = vec3<f32>(x_853.x, x_853.y, x_853.z);
    } else {
      let x_856 : f32 = u_xlat47;
      x_850 = vec3<f32>(x_856, x_856, x_856);
    }
    let x_858 : vec3<f32> = x_850;
    let x_859 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_858.x, x_858.y, x_858.z, x_859.w);
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
  }
  let x_865 : vec4<f32> = u_xlat6;
  let x_868 : vec4<f32> = x_29.x_MainLightColor;
  let x_870 : vec3<f32> = (vec3<f32>(x_865.x, x_865.y, x_865.z) * vec3<f32>(x_868.x, x_868.y, x_868.z));
  let x_871 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_870.x, x_870.y, x_870.z, x_871.w);
  let x_873 : vec3<f32> = u_xlat4;
  let x_875 : vec4<f32> = u_xlat1;
  u_xlat47 = dot(-(x_873), vec3<f32>(x_875.x, x_875.y, x_875.z));
  let x_878 : f32 = u_xlat47;
  let x_879 : f32 = u_xlat47;
  u_xlat47 = (x_878 + x_879);
  let x_882 : vec4<f32> = u_xlat1;
  let x_884 : f32 = u_xlat47;
  let x_888 : vec3<f32> = u_xlat4;
  let x_890 : vec3<f32> = ((vec3<f32>(x_882.x, x_882.y, x_882.z) * -(vec3<f32>(x_884, x_884, x_884))) + -(x_888));
  let x_891 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_890.x, x_890.y, x_890.z, x_891.w);
  let x_893 : vec4<f32> = u_xlat1;
  let x_895 : vec3<f32> = u_xlat4;
  u_xlat47 = dot(vec3<f32>(x_893.x, x_893.y, x_893.z), x_895);
  let x_897 : f32 = u_xlat47;
  u_xlat47 = clamp(x_897, 0.0f, 1.0f);
  let x_899 : f32 = u_xlat47;
  u_xlat47 = (-(x_899) + 1.0f);
  let x_902 : f32 = u_xlat47;
  let x_903 : f32 = u_xlat47;
  u_xlat47 = (x_902 * x_903);
  let x_905 : f32 = u_xlat47;
  let x_906 : f32 = u_xlat47;
  u_xlat47 = (x_905 * x_906);
  let x_909 : f32 = u_xlat42;
  u_xlat48 = ((-(x_909) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_915 : f32 = u_xlat42;
  let x_916 : f32 = u_xlat48;
  u_xlat42 = (x_915 * x_916);
  let x_918 : f32 = u_xlat42;
  u_xlat42 = (x_918 * 6.0f);
  let x_928 : vec4<f32> = u_xlat7;
  let x_930 : f32 = u_xlat42;
  let x_931 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_928.x, x_928.y, x_928.z), x_930);
  u_xlat7 = x_931;
  let x_933 : f32 = u_xlat7.w;
  u_xlat42 = (x_933 + -1.0f);
  let x_936 : f32 = x_349.unity_SpecCube0_HDR.w;
  let x_937 : f32 = u_xlat42;
  u_xlat42 = ((x_936 * x_937) + 1.0f);
  let x_940 : f32 = u_xlat42;
  u_xlat42 = max(x_940, 0.0f);
  let x_942 : f32 = u_xlat42;
  u_xlat42 = log2(x_942);
  let x_944 : f32 = u_xlat42;
  let x_946 : f32 = x_349.unity_SpecCube0_HDR.y;
  u_xlat42 = (x_944 * x_946);
  let x_948 : f32 = u_xlat42;
  u_xlat42 = exp2(x_948);
  let x_950 : f32 = u_xlat42;
  let x_952 : f32 = x_349.unity_SpecCube0_HDR.x;
  u_xlat42 = (x_950 * x_952);
  let x_954 : vec4<f32> = u_xlat7;
  let x_956 : f32 = u_xlat42;
  let x_958 : vec3<f32> = (vec3<f32>(x_954.x, x_954.y, x_954.z) * vec3<f32>(x_956, x_956, x_956));
  let x_959 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_962 : vec4<f32> = u_xlat2;
  let x_964 : vec4<f32> = u_xlat2;
  u_xlat8 = ((vec2<f32>(x_962.x, x_962.x) * vec2<f32>(x_964.x, x_964.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_970 : f32 = u_xlat8.y;
  u_xlat42 = (1.0f / x_970);
  let x_973 : vec4<f32> = u_xlat0;
  let x_976 : f32 = u_xlat43;
  u_xlat22 = (-(vec3<f32>(x_973.x, x_973.y, x_973.z)) + vec3<f32>(x_976, x_976, x_976));
  let x_979 : f32 = u_xlat47;
  let x_981 : vec3<f32> = u_xlat22;
  let x_983 : vec4<f32> = u_xlat0;
  u_xlat22 = ((vec3<f32>(x_979, x_979, x_979) * x_981) + vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : f32 = u_xlat42;
  let x_988 : vec3<f32> = u_xlat22;
  u_xlat22 = (vec3<f32>(x_986, x_986, x_986) * x_988);
  let x_990 : vec4<f32> = u_xlat7;
  let x_992 : vec3<f32> = u_xlat22;
  let x_993 : vec3<f32> = (vec3<f32>(x_990.x, x_990.y, x_990.z) * x_992);
  let x_994 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_993.x, x_993.y, x_993.z, x_994.w);
  let x_996 : vec4<f32> = u_xlat3;
  let x_998 : vec4<f32> = u_xlat5;
  let x_1001 : vec4<f32> = u_xlat7;
  let x_1003 : vec3<f32> = ((vec3<f32>(x_996.x, x_996.y, x_996.z) * vec3<f32>(x_998.x, x_998.y, x_998.z)) + vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
  let x_1004 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1003.x, x_1003.y, x_1003.z, x_1004.w);
  let x_1006 : f32 = u_xlat45;
  let x_1008 : f32 = x_349.unity_LightData.z;
  u_xlat42 = (x_1006 * x_1008);
  let x_1010 : vec4<f32> = u_xlat1;
  let x_1013 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat43 = dot(vec3<f32>(x_1010.x, x_1010.y, x_1010.z), vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1016 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1016, 0.0f, 1.0f);
  let x_1018 : f32 = u_xlat42;
  let x_1019 : f32 = u_xlat43;
  u_xlat42 = (x_1018 * x_1019);
  let x_1021 : f32 = u_xlat42;
  let x_1023 : vec4<f32> = u_xlat6;
  let x_1025 : vec3<f32> = (vec3<f32>(x_1021, x_1021, x_1021) * vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1026 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1028 : vec3<f32> = u_xlat4;
  let x_1030 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1032 : vec3<f32> = (x_1028 + vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
  let x_1033 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1032.x, x_1032.y, x_1032.z, x_1033.w);
  let x_1035 : vec4<f32> = u_xlat7;
  let x_1037 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1035.x, x_1035.y, x_1035.z), vec3<f32>(x_1037.x, x_1037.y, x_1037.z));
  let x_1040 : f32 = u_xlat42;
  u_xlat42 = max(x_1040, 1.17549435e-38f);
  let x_1043 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_1043);
  let x_1045 : f32 = u_xlat42;
  let x_1047 : vec4<f32> = u_xlat7;
  let x_1049 : vec3<f32> = (vec3<f32>(x_1045, x_1045, x_1045) * vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
  let x_1050 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1049.x, x_1049.y, x_1049.z, x_1050.w);
  let x_1052 : vec4<f32> = u_xlat1;
  let x_1054 : vec4<f32> = u_xlat7;
  u_xlat42 = dot(vec3<f32>(x_1052.x, x_1052.y, x_1052.z), vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
  let x_1057 : f32 = u_xlat42;
  u_xlat42 = clamp(x_1057, 0.0f, 1.0f);
  let x_1060 : vec4<f32> = x_29.x_MainLightPosition;
  let x_1062 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(vec3<f32>(x_1060.x, x_1060.y, x_1060.z), vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
  let x_1065 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1065, 0.0f, 1.0f);
  let x_1067 : f32 = u_xlat42;
  let x_1068 : f32 = u_xlat42;
  u_xlat42 = (x_1067 * x_1068);
  let x_1070 : f32 = u_xlat42;
  let x_1072 : f32 = u_xlat8.x;
  u_xlat42 = ((x_1070 * x_1072) + 1.00001001358032226562f);
  let x_1076 : f32 = u_xlat43;
  let x_1077 : f32 = u_xlat43;
  u_xlat43 = (x_1076 * x_1077);
  let x_1079 : f32 = u_xlat42;
  let x_1080 : f32 = u_xlat42;
  u_xlat42 = (x_1079 * x_1080);
  let x_1082 : f32 = u_xlat43;
  u_xlat43 = max(x_1082, 0.10000000149011611938f);
  let x_1085 : f32 = u_xlat42;
  let x_1086 : f32 = u_xlat43;
  u_xlat42 = (x_1085 * x_1086);
  let x_1088 : f32 = u_xlat44;
  let x_1089 : f32 = u_xlat42;
  u_xlat42 = (x_1088 * x_1089);
  let x_1091 : f32 = u_xlat16;
  let x_1092 : f32 = u_xlat42;
  u_xlat42 = (x_1091 / x_1092);
  let x_1094 : vec4<f32> = u_xlat0;
  let x_1096 : f32 = u_xlat42;
  let x_1099 : vec4<f32> = u_xlat5;
  let x_1101 : vec3<f32> = ((vec3<f32>(x_1094.x, x_1094.y, x_1094.z) * vec3<f32>(x_1096, x_1096, x_1096)) + vec3<f32>(x_1099.x, x_1099.y, x_1099.z));
  let x_1102 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1101.x, x_1101.y, x_1101.z, x_1102.w);
  let x_1104 : vec4<f32> = u_xlat6;
  let x_1106 : vec4<f32> = u_xlat7;
  let x_1108 : vec3<f32> = (vec3<f32>(x_1104.x, x_1104.y, x_1104.z) * vec3<f32>(x_1106.x, x_1106.y, x_1106.z));
  let x_1109 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1108.x, x_1108.y, x_1108.z, x_1109.w);
  let x_1112 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1114 : f32 = x_349.unity_LightData.y;
  u_xlat42 = min(x_1112, x_1114);
  let x_1118 : f32 = u_xlat42;
  u_xlatu42 = bitcast<u32>(i32(x_1118));
  let x_1121 : f32 = u_xlat46;
  let x_1124 : f32 = x_692.x_AdditionalShadowFadeParams.x;
  let x_1127 : f32 = x_692.x_AdditionalShadowFadeParams.y;
  u_xlat43 = ((x_1121 * x_1124) + x_1127);
  let x_1129 : f32 = u_xlat43;
  u_xlat43 = clamp(x_1129, 0.0f, 1.0f);
  let x_1132 : f32 = x_755.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1134 : f32 = x_755.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1136 : f32 = x_755.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1138 : f32 = x_755.x_AdditionalLightsCookieAtlasTextureFormat;
  let x_1139 : vec4<f32> = vec4<f32>(x_1132, x_1134, x_1136, x_1138);
  let x_1145 : vec4<bool> = (vec4<f32>(x_1139.x, x_1139.y, x_1139.z, x_1139.w) == vec4<f32>(0.0f, 1.0f, 0.0f, 0.0f));
  u_xlatb7 = vec2<bool>(x_1145.x, x_1145.y);
  u_xlat22.x = 0.0f;
  u_xlat22.y = 0.0f;
  u_xlat22.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1157 : u32 = u_xlatu_loop_1;
    let x_1158 : u32 = u_xlatu42;
    if ((x_1157 < x_1158)) {
    } else {
      break;
    }
    let x_1161 : u32 = u_xlatu_loop_1;
    u_xlatu45 = (x_1161 >> 2u);
    let x_1165 : u32 = u_xlatu_loop_1;
    u_xlati46 = bitcast<i32>((x_1165 & 3u));
    let x_1168 : u32 = u_xlatu45;
    let x_1171 : vec4<f32> = x_349.unity_LightIndices[bitcast<i32>(x_1168)];
    let x_1181 : i32 = u_xlati46;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1186 : vec4<u32> = indexable[x_1181];
    u_xlat45 = dot(x_1171, bitcast<vec4<f32>>(x_1186));
    let x_1190 : f32 = u_xlat45;
    u_xlati45 = i32(x_1190);
    let x_1193 : vec3<f32> = vs_INTERP7;
    let x_1204 : i32 = u_xlati45;
    let x_1206 : vec4<f32> = x_1203.x_AdditionalLightsPosition[x_1204];
    let x_1209 : i32 = u_xlati45;
    let x_1211 : vec4<f32> = x_1203.x_AdditionalLightsPosition[x_1209];
    u_xlat9 = ((-(x_1193) * vec3<f32>(x_1206.w, x_1206.w, x_1206.w)) + vec3<f32>(x_1211.x, x_1211.y, x_1211.z));
    let x_1214 : vec3<f32> = u_xlat9;
    let x_1215 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1214, x_1215);
    let x_1217 : f32 = u_xlat46;
    u_xlat46 = max(x_1217, 0.00006103515625f);
    let x_1220 : f32 = u_xlat46;
    u_xlat47 = inverseSqrt(x_1220);
    let x_1223 : f32 = u_xlat47;
    let x_1225 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_1223, x_1223, x_1223) * x_1225);
    let x_1227 : f32 = u_xlat46;
    u_xlat48 = (1.0f / x_1227);
    let x_1229 : f32 = u_xlat46;
    let x_1230 : i32 = u_xlati45;
    let x_1232 : f32 = x_1203.x_AdditionalLightsAttenuation[x_1230].x;
    u_xlat46 = (x_1229 * x_1232);
    let x_1234 : f32 = u_xlat46;
    let x_1236 : f32 = u_xlat46;
    u_xlat46 = ((-(x_1234) * x_1236) + 1.0f);
    let x_1239 : f32 = u_xlat46;
    u_xlat46 = max(x_1239, 0.0f);
    let x_1241 : f32 = u_xlat46;
    let x_1242 : f32 = u_xlat46;
    u_xlat46 = (x_1241 * x_1242);
    let x_1244 : f32 = u_xlat46;
    let x_1245 : f32 = u_xlat48;
    u_xlat46 = (x_1244 * x_1245);
    let x_1247 : i32 = u_xlati45;
    let x_1249 : vec4<f32> = x_1203.x_AdditionalLightsSpotDir[x_1247];
    let x_1251 : vec3<f32> = u_xlat10;
    u_xlat48 = dot(vec3<f32>(x_1249.x, x_1249.y, x_1249.z), x_1251);
    let x_1253 : f32 = u_xlat48;
    let x_1254 : i32 = u_xlati45;
    let x_1256 : f32 = x_1203.x_AdditionalLightsAttenuation[x_1254].z;
    let x_1258 : i32 = u_xlati45;
    let x_1260 : f32 = x_1203.x_AdditionalLightsAttenuation[x_1258].w;
    u_xlat48 = ((x_1253 * x_1256) + x_1260);
    let x_1262 : f32 = u_xlat48;
    u_xlat48 = clamp(x_1262, 0.0f, 1.0f);
    let x_1264 : f32 = u_xlat48;
    let x_1265 : f32 = u_xlat48;
    u_xlat48 = (x_1264 * x_1265);
    let x_1267 : f32 = u_xlat46;
    let x_1268 : f32 = u_xlat48;
    u_xlat46 = (x_1267 * x_1268);
    let x_1272 : i32 = u_xlati45;
    let x_1274 : f32 = x_692.x_AdditionalShadowParams[x_1272].w;
    u_xlati48 = i32(x_1274);
    let x_1277 : i32 = u_xlati48;
    u_xlatb35 = (x_1277 >= 0i);
    let x_1279 : bool = u_xlatb35;
    if (x_1279) {
      let x_1283 : i32 = u_xlati45;
      let x_1285 : f32 = x_692.x_AdditionalShadowParams[x_1283].z;
      u_xlatb35 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1285, x_1285, x_1285, x_1285))));
      let x_1289 : bool = u_xlatb35;
      if (x_1289) {
        let x_1294 : vec3<f32> = u_xlat10;
        let x_1297 : vec3<f32> = u_xlat10;
        let x_1300 : vec4<bool> = (abs(vec4<f32>(x_1294.z, x_1294.z, x_1294.y, x_1294.z)) >= abs(vec4<f32>(x_1297.x, x_1297.y, x_1297.x, x_1297.x)));
        let x_1302 : vec3<bool> = vec3<bool>(x_1300.x, x_1300.y, x_1300.z);
        let x_1303 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1302.x, x_1302.y, x_1302.z, x_1303.w);
        let x_1306 : bool = u_xlatb11.y;
        let x_1308 : bool = u_xlatb11.x;
        u_xlatb35 = (x_1306 & x_1308);
        let x_1310 : vec3<f32> = u_xlat10;
        let x_1313 : vec4<bool> = (-(vec4<f32>(x_1310.z, x_1310.y, x_1310.z, x_1310.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1314 : vec3<bool> = vec3<bool>(x_1313.x, x_1313.y, x_1313.w);
        let x_1315 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1314.x, x_1314.y, x_1315.z, x_1314.z);
        let x_1319 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1319);
        let x_1324 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1324);
        let x_1330 : bool = u_xlatb11.w;
        u_xlat49 = select(0.0f, 1.0f, x_1330);
        let x_1333 : bool = u_xlatb11.z;
        if (x_1333) {
          let x_1338 : f32 = u_xlat11.y;
          x_1334 = x_1338;
        } else {
          let x_1340 : f32 = u_xlat49;
          x_1334 = x_1340;
        }
        let x_1341 : f32 = x_1334;
        u_xlat49 = x_1341;
        let x_1343 : bool = u_xlatb35;
        if (x_1343) {
          let x_1348 : f32 = u_xlat11.x;
          x_1344 = x_1348;
        } else {
          let x_1350 : f32 = u_xlat49;
          x_1344 = x_1350;
        }
        let x_1351 : f32 = x_1344;
        u_xlat35.x = x_1351;
        let x_1353 : i32 = u_xlati45;
        let x_1355 : f32 = x_692.x_AdditionalShadowParams[x_1353].w;
        u_xlat49 = trunc(x_1355);
        let x_1358 : f32 = u_xlat35.x;
        let x_1359 : f32 = u_xlat49;
        u_xlat35.x = (x_1358 + x_1359);
        let x_1363 : f32 = u_xlat35.x;
        u_xlati48 = i32(x_1363);
      }
      let x_1365 : i32 = u_xlati48;
      u_xlati48 = (x_1365 << bitcast<u32>(2i));
      let x_1367 : vec3<f32> = vs_INTERP7;
      let x_1370 : i32 = u_xlati48;
      let x_1373 : i32 = u_xlati48;
      let x_1377 : vec4<f32> = x_692.x_AdditionalLightsWorldToShadow[((x_1370 + 1i) / 4i)][((x_1373 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1367.y, x_1367.y, x_1367.y, x_1367.y) * x_1377);
      let x_1379 : i32 = u_xlati48;
      let x_1381 : i32 = u_xlati48;
      let x_1384 : vec4<f32> = x_692.x_AdditionalLightsWorldToShadow[(x_1379 / 4i)][(x_1381 % 4i)];
      let x_1385 : vec3<f32> = vs_INTERP7;
      let x_1388 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1384 * vec4<f32>(x_1385.x, x_1385.x, x_1385.x, x_1385.x)) + x_1388);
      let x_1390 : i32 = u_xlati48;
      let x_1393 : i32 = u_xlati48;
      let x_1397 : vec4<f32> = x_692.x_AdditionalLightsWorldToShadow[((x_1390 + 2i) / 4i)][((x_1393 + 2i) % 4i)];
      let x_1398 : vec3<f32> = vs_INTERP7;
      let x_1401 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1397 * vec4<f32>(x_1398.z, x_1398.z, x_1398.z, x_1398.z)) + x_1401);
      let x_1403 : vec4<f32> = u_xlat11;
      let x_1404 : i32 = u_xlati48;
      let x_1407 : i32 = u_xlati48;
      let x_1411 : vec4<f32> = x_692.x_AdditionalLightsWorldToShadow[((x_1404 + 3i) / 4i)][((x_1407 + 3i) % 4i)];
      u_xlat11 = (x_1403 + x_1411);
      let x_1413 : vec4<f32> = u_xlat11;
      let x_1415 : vec4<f32> = u_xlat11;
      let x_1417 : vec3<f32> = (vec3<f32>(x_1413.x, x_1413.y, x_1413.z) / vec3<f32>(x_1415.w, x_1415.w, x_1415.w));
      let x_1418 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1417.x, x_1417.y, x_1417.z, x_1418.w);
      let x_1421 : vec4<f32> = u_xlat11;
      let x_1422 : vec2<f32> = vec2<f32>(x_1421.x, x_1421.y);
      let x_1424 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1422.x, x_1422.y, x_1424);
      let x_1432 : vec3<f32> = txVec1;
      let x_1434 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1432.xy, x_1432.z);
      u_xlat48 = x_1434;
      let x_1435 : i32 = u_xlati45;
      let x_1437 : f32 = x_692.x_AdditionalShadowParams[x_1435].x;
      u_xlat35.x = (1.0f + -(x_1437));
      let x_1441 : f32 = u_xlat48;
      let x_1442 : i32 = u_xlati45;
      let x_1444 : f32 = x_692.x_AdditionalShadowParams[x_1442].x;
      let x_1447 : f32 = u_xlat35.x;
      u_xlat48 = ((x_1441 * x_1444) + x_1447);
      let x_1450 : f32 = u_xlat11.z;
      u_xlatb35 = (0.0f >= x_1450);
      let x_1454 : f32 = u_xlat11.z;
      u_xlatb49 = (x_1454 >= 1.0f);
      let x_1456 : bool = u_xlatb49;
      let x_1457 : bool = u_xlatb35;
      u_xlatb35 = (x_1456 | x_1457);
      let x_1459 : bool = u_xlatb35;
      let x_1460 : f32 = u_xlat48;
      u_xlat48 = select(x_1460, 1.0f, x_1459);
    } else {
      u_xlat48 = 1.0f;
    }
    let x_1463 : f32 = u_xlat48;
    u_xlat35.x = (-(x_1463) + 1.0f);
    let x_1467 : f32 = u_xlat43;
    let x_1469 : f32 = u_xlat35.x;
    let x_1471 : f32 = u_xlat48;
    u_xlat48 = ((x_1467 * x_1469) + x_1471);
    let x_1474 : i32 = u_xlati45;
    u_xlati35 = (1i << bitcast<u32>((x_1474 & 31i)));
    let x_1478 : i32 = u_xlati35;
    let x_1481 : f32 = x_755.x_AdditionalLightsCookieEnableBits;
    u_xlati35 = bitcast<i32>((bitcast<u32>(x_1478) & bitcast<u32>(x_1481)));
    let x_1485 : i32 = u_xlati35;
    if ((x_1485 != 0i)) {
      let x_1489 : i32 = u_xlati45;
      let x_1491 : f32 = x_755.x_AdditionalLightsLightTypes[x_1489].el;
      u_xlati35 = i32(x_1491);
      let x_1494 : i32 = u_xlati35;
      u_xlati49 = select(1i, 0i, (x_1494 != 0i));
      let x_1498 : i32 = u_xlati45;
      u_xlati51 = (x_1498 << bitcast<u32>(2i));
      let x_1500 : i32 = u_xlati49;
      if ((x_1500 != 0i)) {
        let x_1504 : vec3<f32> = vs_INTERP7;
        let x_1506 : i32 = u_xlati51;
        let x_1509 : i32 = u_xlati51;
        let x_1513 : vec4<f32> = x_755.x_AdditionalLightsWorldToLights[((x_1506 + 1i) / 4i)][((x_1509 + 1i) % 4i)];
        let x_1515 : vec3<f32> = (vec3<f32>(x_1504.y, x_1504.y, x_1504.y) * vec3<f32>(x_1513.x, x_1513.y, x_1513.w));
        let x_1516 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1515.x, x_1515.y, x_1515.z, x_1516.w);
        let x_1518 : i32 = u_xlati51;
        let x_1520 : i32 = u_xlati51;
        let x_1523 : vec4<f32> = x_755.x_AdditionalLightsWorldToLights[(x_1518 / 4i)][(x_1520 % 4i)];
        let x_1525 : vec3<f32> = vs_INTERP7;
        let x_1528 : vec4<f32> = u_xlat11;
        let x_1530 : vec3<f32> = ((vec3<f32>(x_1523.x, x_1523.y, x_1523.w) * vec3<f32>(x_1525.x, x_1525.x, x_1525.x)) + vec3<f32>(x_1528.x, x_1528.y, x_1528.z));
        let x_1531 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1530.x, x_1530.y, x_1530.z, x_1531.w);
        let x_1533 : i32 = u_xlati51;
        let x_1536 : i32 = u_xlati51;
        let x_1540 : vec4<f32> = x_755.x_AdditionalLightsWorldToLights[((x_1533 + 2i) / 4i)][((x_1536 + 2i) % 4i)];
        let x_1542 : vec3<f32> = vs_INTERP7;
        let x_1545 : vec4<f32> = u_xlat11;
        let x_1547 : vec3<f32> = ((vec3<f32>(x_1540.x, x_1540.y, x_1540.w) * vec3<f32>(x_1542.z, x_1542.z, x_1542.z)) + vec3<f32>(x_1545.x, x_1545.y, x_1545.z));
        let x_1548 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1547.x, x_1547.y, x_1547.z, x_1548.w);
        let x_1550 : vec4<f32> = u_xlat11;
        let x_1552 : i32 = u_xlati51;
        let x_1555 : i32 = u_xlati51;
        let x_1559 : vec4<f32> = x_755.x_AdditionalLightsWorldToLights[((x_1552 + 3i) / 4i)][((x_1555 + 3i) % 4i)];
        let x_1561 : vec3<f32> = (vec3<f32>(x_1550.x, x_1550.y, x_1550.z) + vec3<f32>(x_1559.x, x_1559.y, x_1559.w));
        let x_1562 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1561.x, x_1561.y, x_1561.z, x_1562.w);
        let x_1564 : vec4<f32> = u_xlat11;
        let x_1566 : vec4<f32> = u_xlat11;
        let x_1568 : vec2<f32> = (vec2<f32>(x_1564.x, x_1564.y) / vec2<f32>(x_1566.z, x_1566.z));
        let x_1569 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1568.x, x_1568.y, x_1569.z, x_1569.w);
        let x_1571 : vec4<f32> = u_xlat11;
        let x_1574 : vec2<f32> = ((vec2<f32>(x_1571.x, x_1571.y) * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
        let x_1575 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1574.x, x_1574.y, x_1575.z, x_1575.w);
        let x_1577 : vec4<f32> = u_xlat11;
        let x_1581 : vec2<f32> = clamp(vec2<f32>(x_1577.x, x_1577.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
        let x_1582 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1581.x, x_1581.y, x_1582.z, x_1582.w);
        let x_1584 : i32 = u_xlati45;
        let x_1586 : vec4<f32> = x_755.x_AdditionalLightsCookieAtlasUVRects[x_1584];
        let x_1588 : vec4<f32> = u_xlat11;
        let x_1591 : i32 = u_xlati45;
        let x_1593 : vec4<f32> = x_755.x_AdditionalLightsCookieAtlasUVRects[x_1591];
        let x_1595 : vec2<f32> = ((vec2<f32>(x_1586.x, x_1586.y) * vec2<f32>(x_1588.x, x_1588.y)) + vec2<f32>(x_1593.z, x_1593.w));
        let x_1596 : vec4<f32> = u_xlat11;
        u_xlat11 = vec4<f32>(x_1595.x, x_1595.y, x_1596.z, x_1596.w);
      } else {
        let x_1599 : i32 = u_xlati35;
        u_xlatb35 = (x_1599 == 1i);
        let x_1601 : bool = u_xlatb35;
        u_xlati35 = select(0i, 1i, x_1601);
        let x_1603 : i32 = u_xlati35;
        if ((x_1603 != 0i)) {
          let x_1607 : vec3<f32> = vs_INTERP7;
          let x_1609 : i32 = u_xlati51;
          let x_1612 : i32 = u_xlati51;
          let x_1616 : vec4<f32> = x_755.x_AdditionalLightsWorldToLights[((x_1609 + 1i) / 4i)][((x_1612 + 1i) % 4i)];
          u_xlat35 = (vec2<f32>(x_1607.y, x_1607.y) * vec2<f32>(x_1616.x, x_1616.y));
          let x_1619 : i32 = u_xlati51;
          let x_1621 : i32 = u_xlati51;
          let x_1624 : vec4<f32> = x_755.x_AdditionalLightsWorldToLights[(x_1619 / 4i)][(x_1621 % 4i)];
          let x_1626 : vec3<f32> = vs_INTERP7;
          let x_1629 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1624.x, x_1624.y) * vec2<f32>(x_1626.x, x_1626.x)) + x_1629);
          let x_1631 : i32 = u_xlati51;
          let x_1634 : i32 = u_xlati51;
          let x_1638 : vec4<f32> = x_755.x_AdditionalLightsWorldToLights[((x_1631 + 2i) / 4i)][((x_1634 + 2i) % 4i)];
          let x_1640 : vec3<f32> = vs_INTERP7;
          let x_1643 : vec2<f32> = u_xlat35;
          u_xlat35 = ((vec2<f32>(x_1638.x, x_1638.y) * vec2<f32>(x_1640.z, x_1640.z)) + x_1643);
          let x_1645 : vec2<f32> = u_xlat35;
          let x_1646 : i32 = u_xlati51;
          let x_1649 : i32 = u_xlati51;
          let x_1653 : vec4<f32> = x_755.x_AdditionalLightsWorldToLights[((x_1646 + 3i) / 4i)][((x_1649 + 3i) % 4i)];
          u_xlat35 = (x_1645 + vec2<f32>(x_1653.x, x_1653.y));
          let x_1656 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1656 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1659 : vec2<f32> = u_xlat35;
          u_xlat35 = fract(x_1659);
          let x_1661 : i32 = u_xlati45;
          let x_1663 : vec4<f32> = x_755.x_AdditionalLightsCookieAtlasUVRects[x_1661];
          let x_1665 : vec2<f32> = u_xlat35;
          let x_1667 : i32 = u_xlati45;
          let x_1669 : vec4<f32> = x_755.x_AdditionalLightsCookieAtlasUVRects[x_1667];
          let x_1671 : vec2<f32> = ((vec2<f32>(x_1663.x, x_1663.y) * x_1665) + vec2<f32>(x_1669.z, x_1669.w));
          let x_1672 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1671.x, x_1671.y, x_1672.z, x_1672.w);
        } else {
          let x_1676 : vec3<f32> = vs_INTERP7;
          let x_1678 : i32 = u_xlati51;
          let x_1681 : i32 = u_xlati51;
          let x_1685 : vec4<f32> = x_755.x_AdditionalLightsWorldToLights[((x_1678 + 1i) / 4i)][((x_1681 + 1i) % 4i)];
          u_xlat12 = (vec4<f32>(x_1676.y, x_1676.y, x_1676.y, x_1676.y) * x_1685);
          let x_1687 : i32 = u_xlati51;
          let x_1689 : i32 = u_xlati51;
          let x_1692 : vec4<f32> = x_755.x_AdditionalLightsWorldToLights[(x_1687 / 4i)][(x_1689 % 4i)];
          let x_1693 : vec3<f32> = vs_INTERP7;
          let x_1696 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1692 * vec4<f32>(x_1693.x, x_1693.x, x_1693.x, x_1693.x)) + x_1696);
          let x_1698 : i32 = u_xlati51;
          let x_1701 : i32 = u_xlati51;
          let x_1705 : vec4<f32> = x_755.x_AdditionalLightsWorldToLights[((x_1698 + 2i) / 4i)][((x_1701 + 2i) % 4i)];
          let x_1706 : vec3<f32> = vs_INTERP7;
          let x_1709 : vec4<f32> = u_xlat12;
          u_xlat12 = ((x_1705 * vec4<f32>(x_1706.z, x_1706.z, x_1706.z, x_1706.z)) + x_1709);
          let x_1711 : vec4<f32> = u_xlat12;
          let x_1712 : i32 = u_xlati51;
          let x_1715 : i32 = u_xlati51;
          let x_1719 : vec4<f32> = x_755.x_AdditionalLightsWorldToLights[((x_1712 + 3i) / 4i)][((x_1715 + 3i) % 4i)];
          u_xlat12 = (x_1711 + x_1719);
          let x_1721 : vec4<f32> = u_xlat12;
          let x_1723 : vec4<f32> = u_xlat12;
          let x_1725 : vec3<f32> = (vec3<f32>(x_1721.x, x_1721.y, x_1721.z) / vec3<f32>(x_1723.w, x_1723.w, x_1723.w));
          let x_1726 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1725.x, x_1725.y, x_1725.z, x_1726.w);
          let x_1728 : vec4<f32> = u_xlat12;
          let x_1730 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(vec3<f32>(x_1728.x, x_1728.y, x_1728.z), vec3<f32>(x_1730.x, x_1730.y, x_1730.z));
          let x_1735 : f32 = u_xlat35.x;
          u_xlat35.x = inverseSqrt(x_1735);
          let x_1738 : vec2<f32> = u_xlat35;
          let x_1740 : vec4<f32> = u_xlat12;
          let x_1742 : vec3<f32> = (vec3<f32>(x_1738.x, x_1738.x, x_1738.x) * vec3<f32>(x_1740.x, x_1740.y, x_1740.z));
          let x_1743 : vec4<f32> = u_xlat12;
          u_xlat12 = vec4<f32>(x_1742.x, x_1742.y, x_1742.z, x_1743.w);
          let x_1745 : vec4<f32> = u_xlat12;
          u_xlat35.x = dot(abs(vec3<f32>(x_1745.x, x_1745.y, x_1745.z)), vec3<f32>(1.0f, 1.0f, 1.0f));
          let x_1751 : f32 = u_xlat35.x;
          u_xlat35.x = max(x_1751, 0.00000099999999747524f);
          let x_1756 : f32 = u_xlat35.x;
          u_xlat35.x = (1.0f / x_1756);
          let x_1760 : vec2<f32> = u_xlat35;
          let x_1762 : vec4<f32> = u_xlat12;
          u_xlat13 = (vec3<f32>(x_1760.x, x_1760.x, x_1760.x) * vec3<f32>(x_1762.z, x_1762.x, x_1762.y));
          let x_1766 : f32 = u_xlat13.x;
          u_xlat13.x = -(x_1766);
          let x_1770 : f32 = u_xlat13.x;
          u_xlat13.x = clamp(x_1770, 0.0f, 1.0f);
          let x_1774 : vec3<f32> = u_xlat13;
          let x_1776 : vec4<bool> = (vec4<f32>(x_1774.y, x_1774.z, x_1774.y, x_1774.z) >= vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
          u_xlatb39 = vec2<bool>(x_1776.x, x_1776.y);
          let x_1780 : bool = u_xlatb39.x;
          if (x_1780) {
            let x_1785 : f32 = u_xlat13.x;
            x_1781 = x_1785;
          } else {
            let x_1788 : f32 = u_xlat13.x;
            x_1781 = -(x_1788);
          }
          let x_1790 : f32 = x_1781;
          u_xlat39.x = x_1790;
          let x_1793 : bool = u_xlatb39.y;
          if (x_1793) {
            let x_1798 : f32 = u_xlat13.x;
            x_1794 = x_1798;
          } else {
            let x_1801 : f32 = u_xlat13.x;
            x_1794 = -(x_1801);
          }
          let x_1803 : f32 = x_1794;
          u_xlat39.y = x_1803;
          let x_1805 : vec4<f32> = u_xlat12;
          let x_1807 : vec2<f32> = u_xlat35;
          let x_1810 : vec2<f32> = u_xlat39;
          u_xlat35 = ((vec2<f32>(x_1805.x, x_1805.y) * vec2<f32>(x_1807.x, x_1807.x)) + x_1810);
          let x_1812 : vec2<f32> = u_xlat35;
          u_xlat35 = ((x_1812 * vec2<f32>(0.5f, 0.5f)) + vec2<f32>(0.5f, 0.5f));
          let x_1815 : vec2<f32> = u_xlat35;
          u_xlat35 = clamp(x_1815, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
          let x_1819 : i32 = u_xlati45;
          let x_1821 : vec4<f32> = x_755.x_AdditionalLightsCookieAtlasUVRects[x_1819];
          let x_1823 : vec2<f32> = u_xlat35;
          let x_1825 : i32 = u_xlati45;
          let x_1827 : vec4<f32> = x_755.x_AdditionalLightsCookieAtlasUVRects[x_1825];
          let x_1829 : vec2<f32> = ((vec2<f32>(x_1821.x, x_1821.y) * x_1823) + vec2<f32>(x_1827.z, x_1827.w));
          let x_1830 : vec4<f32> = u_xlat11;
          u_xlat11 = vec4<f32>(x_1829.x, x_1829.y, x_1830.z, x_1830.w);
        }
      }
      let x_1837 : vec4<f32> = u_xlat11;
      let x_1839 : vec4<f32> = textureSampleLevel(x_AdditionalLightsCookieAtlasTexture, sampler_LinearClamp, vec2<f32>(x_1837.x, x_1837.y), 0.0f);
      u_xlat11 = x_1839;
      let x_1841 : bool = u_xlatb7.y;
      if (x_1841) {
        let x_1846 : f32 = u_xlat11.w;
        x_1842 = x_1846;
      } else {
        let x_1849 : f32 = u_xlat11.x;
        x_1842 = x_1849;
      }
      let x_1850 : f32 = x_1842;
      u_xlat35.x = x_1850;
      let x_1853 : bool = u_xlatb7.x;
      if (x_1853) {
        let x_1857 : vec4<f32> = u_xlat11;
        x_1854 = vec3<f32>(x_1857.x, x_1857.y, x_1857.z);
      } else {
        let x_1860 : vec2<f32> = u_xlat35;
        x_1854 = vec3<f32>(x_1860.x, x_1860.x, x_1860.x);
      }
      let x_1862 : vec3<f32> = x_1854;
      let x_1863 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1862.x, x_1862.y, x_1862.z, x_1863.w);
    } else {
      u_xlat11.x = 1.0f;
      u_xlat11.y = 1.0f;
      u_xlat11.z = 1.0f;
    }
    let x_1869 : vec4<f32> = u_xlat11;
    let x_1871 : i32 = u_xlati45;
    let x_1873 : vec4<f32> = x_1203.x_AdditionalLightsColor[x_1871];
    let x_1875 : vec3<f32> = (vec3<f32>(x_1869.x, x_1869.y, x_1869.z) * vec3<f32>(x_1873.x, x_1873.y, x_1873.z));
    let x_1876 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1875.x, x_1875.y, x_1875.z, x_1876.w);
    let x_1878 : f32 = u_xlat46;
    let x_1879 : f32 = u_xlat48;
    u_xlat45 = (x_1878 * x_1879);
    let x_1881 : vec4<f32> = u_xlat1;
    let x_1883 : vec3<f32> = u_xlat10;
    u_xlat46 = dot(vec3<f32>(x_1881.x, x_1881.y, x_1881.z), x_1883);
    let x_1885 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1885, 0.0f, 1.0f);
    let x_1887 : f32 = u_xlat45;
    let x_1888 : f32 = u_xlat46;
    u_xlat45 = (x_1887 * x_1888);
    let x_1890 : f32 = u_xlat45;
    let x_1892 : vec4<f32> = u_xlat11;
    let x_1894 : vec3<f32> = (vec3<f32>(x_1890, x_1890, x_1890) * vec3<f32>(x_1892.x, x_1892.y, x_1892.z));
    let x_1895 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1894.x, x_1894.y, x_1894.z, x_1895.w);
    let x_1897 : vec3<f32> = u_xlat9;
    let x_1898 : f32 = u_xlat47;
    let x_1901 : vec3<f32> = u_xlat4;
    u_xlat9 = ((x_1897 * vec3<f32>(x_1898, x_1898, x_1898)) + x_1901);
    let x_1903 : vec3<f32> = u_xlat9;
    let x_1904 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(x_1903, x_1904);
    let x_1906 : f32 = u_xlat45;
    u_xlat45 = max(x_1906, 1.17549435e-38f);
    let x_1908 : f32 = u_xlat45;
    u_xlat45 = inverseSqrt(x_1908);
    let x_1910 : f32 = u_xlat45;
    let x_1912 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1910, x_1910, x_1910) * x_1912);
    let x_1914 : vec4<f32> = u_xlat1;
    let x_1916 : vec3<f32> = u_xlat9;
    u_xlat45 = dot(vec3<f32>(x_1914.x, x_1914.y, x_1914.z), x_1916);
    let x_1918 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1918, 0.0f, 1.0f);
    let x_1920 : vec3<f32> = u_xlat10;
    let x_1921 : vec3<f32> = u_xlat9;
    u_xlat46 = dot(x_1920, x_1921);
    let x_1923 : f32 = u_xlat46;
    u_xlat46 = clamp(x_1923, 0.0f, 1.0f);
    let x_1925 : f32 = u_xlat45;
    let x_1926 : f32 = u_xlat45;
    u_xlat45 = (x_1925 * x_1926);
    let x_1928 : f32 = u_xlat45;
    let x_1930 : f32 = u_xlat8.x;
    u_xlat45 = ((x_1928 * x_1930) + 1.00001001358032226562f);
    let x_1933 : f32 = u_xlat46;
    let x_1934 : f32 = u_xlat46;
    u_xlat46 = (x_1933 * x_1934);
    let x_1936 : f32 = u_xlat45;
    let x_1937 : f32 = u_xlat45;
    u_xlat45 = (x_1936 * x_1937);
    let x_1939 : f32 = u_xlat46;
    u_xlat46 = max(x_1939, 0.10000000149011611938f);
    let x_1941 : f32 = u_xlat45;
    let x_1942 : f32 = u_xlat46;
    u_xlat45 = (x_1941 * x_1942);
    let x_1944 : f32 = u_xlat44;
    let x_1945 : f32 = u_xlat45;
    u_xlat45 = (x_1944 * x_1945);
    let x_1947 : f32 = u_xlat16;
    let x_1948 : f32 = u_xlat45;
    u_xlat45 = (x_1947 / x_1948);
    let x_1950 : vec4<f32> = u_xlat0;
    let x_1952 : f32 = u_xlat45;
    let x_1955 : vec4<f32> = u_xlat5;
    u_xlat9 = ((vec3<f32>(x_1950.x, x_1950.y, x_1950.z) * vec3<f32>(x_1952, x_1952, x_1952)) + vec3<f32>(x_1955.x, x_1955.y, x_1955.z));
    let x_1958 : vec3<f32> = u_xlat9;
    let x_1959 : vec4<f32> = u_xlat11;
    let x_1962 : vec3<f32> = u_xlat22;
    u_xlat22 = ((x_1958 * vec3<f32>(x_1959.x, x_1959.y, x_1959.z)) + x_1962);

    continuing {
      let x_1964 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1964 + bitcast<u32>(1i));
    }
  }
  let x_1966 : vec4<f32> = u_xlat3;
  let x_1968 : f32 = u_xlat30;
  let x_1971 : vec4<f32> = u_xlat6;
  let x_1973 : vec3<f32> = ((vec3<f32>(x_1966.x, x_1966.y, x_1966.z) * vec3<f32>(x_1968, x_1968, x_1968)) + vec3<f32>(x_1971.x, x_1971.y, x_1971.z));
  let x_1974 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1973.x, x_1973.y, x_1973.z, x_1974.w);
  let x_1978 : vec3<f32> = u_xlat22;
  let x_1979 : vec4<f32> = u_xlat0;
  let x_1981 : vec3<f32> = (x_1978 + vec3<f32>(x_1979.x, x_1979.y, x_1979.z));
  let x_1982 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1981.x, x_1981.y, x_1981.z, x_1982.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_INTERP5_param : vec4<f32>, @location(1) vs_INTERP4_param : vec4<f32>, @location(4) vs_INTERP8_param : vec3<f32>, @location(3) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


