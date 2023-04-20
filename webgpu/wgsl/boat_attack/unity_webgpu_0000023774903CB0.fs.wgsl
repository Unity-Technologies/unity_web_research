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
  x_ProjectionParams : vec4<f32>,
  /* @offset(96) */
  unity_OrthoParams : vec4<f32>,
  /* @offset(112) */
  unity_FogParams : vec4<f32>,
  /* @offset(128) */
  unity_FogColor : vec4<f32>,
  /* @offset(144) */
  unity_MatrixV : mat4x4<f32>,
  /* @offset(208) */
  x_NightFade : f32,
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
  x_AdditionalLightsWorldToShadow : Arr_3,
}

alias Arr_5 = array<vec4<f32>, 32u>;

alias Arr_6 = array<vec4<f32>, 32u>;

alias Arr_7 = array<vec4<f32>, 32u>;

alias Arr_8 = array<vec4<f32>, 32u>;

struct strided_arr {
  @size(16)
  el : f32,
}

alias Arr_9 = array<strided_arr, 32u>;

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
  x_AdditionalLightsLayerMasks : Arr_9,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(3) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(9) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(5) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(11) var samplerTexture2D_8BA53EED : sampler;

var<private> u_xlat36 : f32;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(6) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_AB84E4D0 : sampler;

var<private> u_xlat25 : f32;

@group(1) @binding(2) var<uniform> x_107 : UnityPerDraw;

var<private> u_xlatb25 : bool;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(10) var samplerTexture2D_F0A81025 : sampler;

var<private> u_xlatb37 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlat38 : f32;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb36 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(1) @binding(3) var<uniform> x_298 : LightShadows;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb5 : vec4<bool>;

var<private> u_xlatu36 : u32;

var<private> u_xlati36 : i32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat27 : f32;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(8) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat17 : vec3<f32>;

var<private> u_xlatb17 : bool;

var<private> u_xlatb29 : bool;

var<private> u_xlat29 : f32;

var<private> u_xlat41 : f32;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat9 : vec2<f32>;

var<private> u_xlat21 : vec3<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatu17 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati17 : i32;

@group(1) @binding(1) var<uniform> x_1097 : AdditionalLights;

var<private> u_xlat42 : f32;

var<private> u_xlat43 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat44 : f32;

var<private> u_xlati44 : i32;

var<private> u_xlatb46 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat47 : f32;

var<private> u_xlat23 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(2) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu15 : u32;

fn main_1() {
  var x_279 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var x_720 : f32;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_1230 : f32;
  var x_1240 : f32;
  var txVec1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_INTERP5;
  let x_36 : f32 = x_29.x_GlobalMipBias.x;
  let x_37 : vec4<f32> = textureSampleBias(Texture2D_52571568, samplerTexture2D_52571568, vec2<f32>(x_24.x, x_24.y), x_36);
  u_xlat0 = vec3<f32>(x_37.x, x_37.y, x_37.z);
  let x_46 : vec4<f32> = vs_INTERP5;
  let x_49 : f32 = x_29.x_GlobalMipBias.x;
  let x_50 : vec4<f32> = textureSampleBias(Texture2D_8BA53EED, samplerTexture2D_8BA53EED, vec2<f32>(x_46.x, x_46.y), x_49);
  let x_51 : vec3<f32> = vec3<f32>(x_50.x, x_50.y, x_50.w);
  let x_52 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_51.x, x_51.y, x_51.z, x_52.w);
  let x_56 : f32 = u_xlat1.x;
  let x_59 : f32 = u_xlat1.z;
  u_xlat1.x = (x_56 * x_59);
  let x_62 : vec4<f32> = u_xlat1;
  let x_69 : vec2<f32> = ((vec2<f32>(x_62.x, x_62.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_70 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_69.x, x_69.y, x_70.z, x_70.w);
  let x_73 : vec4<f32> = u_xlat1;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec2<f32>(x_73.x, x_73.y), vec2<f32>(x_75.x, x_75.y));
  let x_78 : f32 = u_xlat36;
  u_xlat36 = min(x_78, 1.0f);
  let x_81 : f32 = u_xlat36;
  u_xlat36 = (-(x_81) + 1.0f);
  let x_84 : f32 = u_xlat36;
  u_xlat36 = sqrt(x_84);
  let x_86 : f32 = u_xlat36;
  u_xlat36 = max(x_86, 0.0000000000000001f);
  let x_95 : vec4<f32> = vs_INTERP5;
  let x_98 : f32 = x_29.x_GlobalMipBias.x;
  let x_99 : vec4<f32> = textureSampleBias(Texture2D_AB84E4D0, samplerTexture2D_AB84E4D0, vec2<f32>(x_95.x, x_95.y), x_98);
  let x_100 : vec3<f32> = vec3<f32>(x_99.x, x_99.y, x_99.z);
  let x_101 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_111 : vec4<f32> = x_107.unity_ObjectToWorld[3i];
  let x_114 : vec4<f32> = x_107.unity_ObjectToWorld[3i];
  u_xlat25 = dot(vec3<f32>(x_111.x, x_111.y, x_111.z), vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : f32 = u_xlat25;
  u_xlat25 = sqrt(x_117);
  let x_119 : f32 = u_xlat25;
  u_xlat25 = fract(x_119);
  let x_121 : f32 = u_xlat25;
  let x_124 : f32 = x_29.x_NightFade;
  u_xlat25 = (x_121 + x_124);
  let x_129 : f32 = u_xlat25;
  u_xlatb25 = (x_129 >= 1.0f);
  let x_131 : bool = u_xlatb25;
  u_xlat25 = select(0.0f, 1.0f, x_131);
  let x_140 : vec4<f32> = vs_INTERP5;
  let x_143 : f32 = x_29.x_GlobalMipBias.x;
  let x_144 : vec4<f32> = textureSampleBias(Texture2D_F0A81025, samplerTexture2D_F0A81025, vec2<f32>(x_140.x, x_140.y), x_143);
  u_xlat3 = vec3<f32>(x_144.x, x_144.w, x_144.y);
  let x_151 : f32 = vs_INTERP4.w;
  u_xlatb37 = (0.0f < x_151);
  let x_154 : bool = u_xlatb37;
  u_xlat37 = select(-1.0f, 1.0f, x_154);
  let x_158 : f32 = x_107.unity_WorldTransformParams.w;
  u_xlatb38 = (x_158 >= 0.0f);
  let x_161 : bool = u_xlatb38;
  u_xlat38 = select(-1.0f, 1.0f, x_161);
  let x_163 : f32 = u_xlat37;
  let x_164 : f32 = u_xlat38;
  u_xlat37 = (x_163 * x_164);
  let x_167 : vec4<f32> = vs_INTERP4;
  let x_171 : vec3<f32> = vs_INTERP8;
  let x_173 : vec3<f32> = (vec3<f32>(x_167.y, x_167.z, x_167.x) * vec3<f32>(x_171.z, x_171.x, x_171.y));
  let x_174 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_173.x, x_173.y, x_173.z, x_174.w);
  let x_176 : vec3<f32> = vs_INTERP8;
  let x_178 : vec4<f32> = vs_INTERP4;
  let x_181 : vec4<f32> = u_xlat4;
  let x_184 : vec3<f32> = ((vec3<f32>(x_176.y, x_176.z, x_176.x) * vec3<f32>(x_178.z, x_178.x, x_178.y)) + -(vec3<f32>(x_181.x, x_181.y, x_181.z)));
  let x_185 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
  let x_187 : f32 = u_xlat37;
  let x_189 : vec4<f32> = u_xlat4;
  let x_191 : vec3<f32> = (vec3<f32>(x_187, x_187, x_187) * vec3<f32>(x_189.x, x_189.y, x_189.z));
  let x_192 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_191.x, x_191.y, x_191.z, x_192.w);
  let x_194 : vec4<f32> = u_xlat1;
  let x_196 : vec4<f32> = u_xlat4;
  let x_198 : vec3<f32> = (vec3<f32>(x_194.y, x_194.y, x_194.y) * vec3<f32>(x_196.x, x_196.y, x_196.z));
  let x_199 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_198.x, x_198.y, x_198.z, x_199.w);
  let x_201 : vec4<f32> = u_xlat1;
  let x_203 : vec4<f32> = vs_INTERP4;
  let x_206 : vec4<f32> = u_xlat4;
  let x_208 : vec3<f32> = ((vec3<f32>(x_201.x, x_201.x, x_201.x) * vec3<f32>(x_203.x, x_203.y, x_203.z)) + vec3<f32>(x_206.x, x_206.y, x_206.z));
  let x_209 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_208.x, x_208.y, x_209.z, x_208.z);
  let x_211 : f32 = u_xlat36;
  let x_213 : vec3<f32> = vs_INTERP8;
  let x_215 : vec4<f32> = u_xlat1;
  let x_217 : vec3<f32> = ((vec3<f32>(x_211, x_211, x_211) * x_213) + vec3<f32>(x_215.x, x_215.y, x_215.w));
  let x_218 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_217.x, x_217.y, x_218.z, x_217.z);
  let x_220 : vec4<f32> = u_xlat1;
  let x_222 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec3<f32>(x_220.x, x_220.y, x_220.w), vec3<f32>(x_222.x, x_222.y, x_222.w));
  let x_225 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat36;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = (vec3<f32>(x_227, x_227, x_227) * vec3<f32>(x_229.x, x_229.y, x_229.w));
  let x_232 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_237 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb36 = (x_237 == 0.0f);
  let x_240 : vec3<f32> = vs_INTERP7;
  let x_245 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  let x_246 : vec3<f32> = (-(x_240) + x_245);
  let x_247 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_246.x, x_246.y, x_247.z, x_246.z);
  let x_249 : vec4<f32> = u_xlat1;
  let x_251 : vec4<f32> = u_xlat1;
  u_xlat38 = dot(vec3<f32>(x_249.x, x_249.y, x_249.w), vec3<f32>(x_251.x, x_251.y, x_251.w));
  let x_254 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_254);
  let x_256 : vec4<f32> = u_xlat1;
  let x_258 : f32 = u_xlat38;
  let x_260 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.w) * vec3<f32>(x_258, x_258, x_258));
  let x_261 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_260.x, x_260.y, x_261.z, x_260.z);
  let x_266 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat5.x = x_266;
  let x_270 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat5.y = x_270;
  let x_275 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat5.z = x_275;
  let x_277 : bool = u_xlatb36;
  if (x_277) {
    let x_282 : vec4<f32> = u_xlat1;
    x_279 = vec3<f32>(x_282.x, x_282.y, x_282.w);
  } else {
    let x_285 : vec4<f32> = u_xlat5;
    x_279 = vec3<f32>(x_285.x, x_285.y, x_285.z);
  }
  let x_287 : vec3<f32> = x_279;
  let x_288 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_287.x, x_287.y, x_288.z, x_287.z);
  let x_290 : vec3<f32> = vs_INTERP7;
  let x_300 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres0;
  let x_303 : vec3<f32> = (x_290 + -(vec3<f32>(x_300.x, x_300.y, x_300.z)));
  let x_304 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
  let x_307 : vec3<f32> = vs_INTERP7;
  let x_309 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres1;
  let x_312 : vec3<f32> = (x_307 + -(vec3<f32>(x_309.x, x_309.y, x_309.z)));
  let x_313 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
  let x_316 : vec3<f32> = vs_INTERP7;
  let x_318 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres2;
  let x_321 : vec3<f32> = (x_316 + -(vec3<f32>(x_318.x, x_318.y, x_318.z)));
  let x_322 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_321.x, x_321.y, x_321.z, x_322.w);
  let x_325 : vec3<f32> = vs_INTERP7;
  let x_327 : vec4<f32> = x_298.x_CascadeShadowSplitSpheres3;
  let x_330 : vec3<f32> = (x_325 + -(vec3<f32>(x_327.x, x_327.y, x_327.z)));
  let x_331 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat5;
  let x_335 : vec4<f32> = u_xlat5;
  u_xlat5.x = dot(vec3<f32>(x_333.x, x_333.y, x_333.z), vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_339 : vec4<f32> = u_xlat6;
  let x_341 : vec4<f32> = u_xlat6;
  u_xlat5.y = dot(vec3<f32>(x_339.x, x_339.y, x_339.z), vec3<f32>(x_341.x, x_341.y, x_341.z));
  let x_345 : vec4<f32> = u_xlat7;
  let x_347 : vec4<f32> = u_xlat7;
  u_xlat5.z = dot(vec3<f32>(x_345.x, x_345.y, x_345.z), vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_351 : vec4<f32> = u_xlat8;
  let x_353 : vec4<f32> = u_xlat8;
  u_xlat5.w = dot(vec3<f32>(x_351.x, x_351.y, x_351.z), vec3<f32>(x_353.x, x_353.y, x_353.z));
  let x_360 : vec4<f32> = u_xlat5;
  let x_363 : vec4<f32> = x_298.x_CascadeShadowSplitSphereRadii;
  u_xlatb5 = (x_360 < x_363);
  let x_366 : bool = u_xlatb5.x;
  u_xlat6.x = select(0.0f, 1.0f, x_366);
  let x_370 : bool = u_xlatb5.y;
  u_xlat6.y = select(0.0f, 1.0f, x_370);
  let x_374 : bool = u_xlatb5.z;
  u_xlat6.z = select(0.0f, 1.0f, x_374);
  let x_378 : bool = u_xlatb5.w;
  u_xlat6.w = select(0.0f, 1.0f, x_378);
  let x_382 : bool = u_xlatb5.x;
  u_xlat5.x = select(-0.0f, -1.0f, x_382);
  let x_387 : bool = u_xlatb5.y;
  u_xlat5.y = select(-0.0f, -1.0f, x_387);
  let x_391 : bool = u_xlatb5.z;
  u_xlat5.z = select(-0.0f, -1.0f, x_391);
  let x_394 : vec4<f32> = u_xlat5;
  let x_396 : vec4<f32> = u_xlat6;
  let x_398 : vec3<f32> = (vec3<f32>(x_394.x, x_394.y, x_394.z) + vec3<f32>(x_396.y, x_396.z, x_396.w));
  let x_399 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_398.x, x_398.y, x_398.z, x_399.w);
  let x_401 : vec4<f32> = u_xlat5;
  let x_404 : vec3<f32> = max(vec3<f32>(x_401.x, x_401.y, x_401.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_405 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_405.x, x_404.x, x_404.y, x_404.z);
  let x_407 : vec4<f32> = u_xlat6;
  u_xlat36 = dot(x_407, vec4<f32>(4.0f, 3.0f, 2.0f, 1.0f));
  let x_412 : f32 = u_xlat36;
  u_xlat36 = (-(x_412) + 4.0f);
  let x_417 : f32 = u_xlat36;
  u_xlatu36 = u32(x_417);
  let x_421 : u32 = u_xlatu36;
  u_xlati36 = (bitcast<i32>(x_421) << bitcast<u32>(2i));
  let x_424 : vec3<f32> = vs_INTERP7;
  let x_426 : i32 = u_xlati36;
  let x_429 : i32 = u_xlati36;
  let x_433 : vec4<f32> = x_298.x_MainLightWorldToShadow[((x_426 + 1i) / 4i)][((x_429 + 1i) % 4i)];
  let x_435 : vec3<f32> = (vec3<f32>(x_424.y, x_424.y, x_424.y) * vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : i32 = u_xlati36;
  let x_440 : i32 = u_xlati36;
  let x_443 : vec4<f32> = x_298.x_MainLightWorldToShadow[(x_438 / 4i)][(x_440 % 4i)];
  let x_445 : vec3<f32> = vs_INTERP7;
  let x_448 : vec4<f32> = u_xlat5;
  let x_450 : vec3<f32> = ((vec3<f32>(x_443.x, x_443.y, x_443.z) * vec3<f32>(x_445.x, x_445.x, x_445.x)) + vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_453 : i32 = u_xlati36;
  let x_456 : i32 = u_xlati36;
  let x_460 : vec4<f32> = x_298.x_MainLightWorldToShadow[((x_453 + 2i) / 4i)][((x_456 + 2i) % 4i)];
  let x_462 : vec3<f32> = vs_INTERP7;
  let x_465 : vec4<f32> = u_xlat5;
  let x_467 : vec3<f32> = ((vec3<f32>(x_460.x, x_460.y, x_460.z) * vec3<f32>(x_462.z, x_462.z, x_462.z)) + vec3<f32>(x_465.x, x_465.y, x_465.z));
  let x_468 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
  let x_470 : vec4<f32> = u_xlat5;
  let x_472 : i32 = u_xlati36;
  let x_475 : i32 = u_xlati36;
  let x_479 : vec4<f32> = x_298.x_MainLightWorldToShadow[((x_472 + 3i) / 4i)][((x_475 + 3i) % 4i)];
  let x_481 : vec3<f32> = (vec3<f32>(x_470.x, x_470.y, x_470.z) + vec3<f32>(x_479.x, x_479.y, x_479.z));
  let x_482 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_481.x, x_481.y, x_481.z, x_482.w);
  let x_485 : f32 = vs_INTERP7.y;
  let x_487 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat36 = (x_485 * x_487);
  let x_490 : f32 = x_29.unity_MatrixV[0i].z;
  let x_492 : f32 = vs_INTERP7.x;
  let x_494 : f32 = u_xlat36;
  u_xlat36 = ((x_490 * x_492) + x_494);
  let x_497 : f32 = x_29.unity_MatrixV[2i].z;
  let x_499 : f32 = vs_INTERP7.z;
  let x_501 : f32 = u_xlat36;
  u_xlat36 = ((x_497 * x_499) + x_501);
  let x_503 : f32 = u_xlat36;
  let x_505 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat36 = (x_503 + x_505);
  let x_507 : f32 = u_xlat36;
  let x_510 : f32 = x_29.x_ProjectionParams.y;
  u_xlat36 = (-(x_507) + -(x_510));
  let x_513 : f32 = u_xlat36;
  u_xlat36 = max(x_513, 0.0f);
  let x_515 : f32 = u_xlat36;
  let x_518 : f32 = x_29.unity_FogParams.x;
  u_xlat36 = (x_515 * x_518);
  u_xlat4.w = 1.0f;
  let x_523 : vec4<f32> = x_107.unity_SHAr;
  let x_524 : vec4<f32> = u_xlat4;
  u_xlat6.x = dot(x_523, x_524);
  let x_529 : vec4<f32> = x_107.unity_SHAg;
  let x_530 : vec4<f32> = u_xlat4;
  u_xlat6.y = dot(x_529, x_530);
  let x_535 : vec4<f32> = x_107.unity_SHAb;
  let x_536 : vec4<f32> = u_xlat4;
  u_xlat6.z = dot(x_535, x_536);
  let x_539 : vec4<f32> = u_xlat4;
  let x_541 : vec4<f32> = u_xlat4;
  u_xlat7 = (vec4<f32>(x_539.y, x_539.z, x_539.z, x_539.x) * vec4<f32>(x_541.x, x_541.y, x_541.z, x_541.z));
  let x_546 : vec4<f32> = x_107.unity_SHBr;
  let x_547 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(x_546, x_547);
  let x_552 : vec4<f32> = x_107.unity_SHBg;
  let x_553 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(x_552, x_553);
  let x_558 : vec4<f32> = x_107.unity_SHBb;
  let x_559 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(x_558, x_559);
  let x_563 : f32 = u_xlat4.y;
  let x_565 : f32 = u_xlat4.y;
  u_xlat38 = (x_563 * x_565);
  let x_568 : f32 = u_xlat4.x;
  let x_570 : f32 = u_xlat4.x;
  let x_572 : f32 = u_xlat38;
  u_xlat38 = ((x_568 * x_570) + -(x_572));
  let x_577 : vec4<f32> = x_107.unity_SHC;
  let x_579 : f32 = u_xlat38;
  let x_582 : vec4<f32> = u_xlat8;
  let x_584 : vec3<f32> = ((vec3<f32>(x_577.x, x_577.y, x_577.z) * vec3<f32>(x_579, x_579, x_579)) + vec3<f32>(x_582.x, x_582.y, x_582.z));
  let x_585 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_584.x, x_584.y, x_584.z, x_585.w);
  let x_587 : vec4<f32> = u_xlat6;
  let x_589 : vec4<f32> = u_xlat7;
  let x_591 : vec3<f32> = (vec3<f32>(x_587.x, x_587.y, x_587.z) + vec3<f32>(x_589.x, x_589.y, x_589.z));
  let x_592 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
  let x_594 : vec4<f32> = u_xlat6;
  let x_596 : vec3<f32> = max(vec3<f32>(x_594.x, x_594.y, x_594.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_597 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
  let x_599 : vec3<f32> = u_xlat3;
  let x_600 : vec2<f32> = vec2<f32>(x_599.x, x_599.y);
  let x_601 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_600.x, x_600.y, x_601.z);
  let x_603 : vec3<f32> = u_xlat3;
  let x_607 : vec2<f32> = clamp(vec2<f32>(x_603.x, x_603.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_608 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_607.x, x_607.y, x_608.z);
  let x_611 : f32 = u_xlat3.x;
  u_xlat38 = ((-(x_611) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_617 : f32 = u_xlat38;
  u_xlat39 = (-(x_617) + 1.0f);
  let x_620 : vec3<f32> = u_xlat0;
  let x_621 : f32 = u_xlat38;
  let x_623 : vec3<f32> = (x_620 * vec3<f32>(x_621, x_621, x_621));
  let x_624 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_623.x, x_623.y, x_623.z, x_624.w);
  let x_626 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_626 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_630 : vec3<f32> = u_xlat3;
  let x_632 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_630.x, x_630.x, x_630.x) * x_632) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_638 : f32 = u_xlat3.y;
  u_xlat38 = (-(x_638) + 1.0f);
  let x_641 : f32 = u_xlat38;
  let x_642 : f32 = u_xlat38;
  u_xlat3.x = (x_641 * x_642);
  let x_646 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_646, 0.0078125f);
  let x_652 : f32 = u_xlat3.x;
  let x_654 : f32 = u_xlat3.x;
  u_xlat40 = (x_652 * x_654);
  let x_657 : f32 = u_xlat39;
  let x_659 : f32 = u_xlat3.y;
  u_xlat15 = (x_657 + x_659);
  let x_661 : f32 = u_xlat15;
  u_xlat15 = min(x_661, 1.0f);
  let x_664 : f32 = u_xlat3.x;
  u_xlat39 = ((x_664 * 4.0f) + 2.0f);
  let x_669 : f32 = u_xlat3.z;
  u_xlat27 = min(x_669, 1.0f);
  let x_672 : vec4<f32> = u_xlat5;
  let x_673 : vec2<f32> = vec2<f32>(x_672.x, x_672.y);
  let x_675 : f32 = u_xlat5.z;
  txVec0 = vec3<f32>(x_673.x, x_673.y, x_675);
  let x_687 : vec3<f32> = txVec0;
  let x_689 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_687.xy, x_687.z);
  u_xlat5.x = x_689;
  let x_694 : f32 = x_298.x_MainLightShadowParams.x;
  u_xlat17.x = (-(x_694) + 1.0f);
  let x_699 : f32 = u_xlat5.x;
  let x_701 : f32 = x_298.x_MainLightShadowParams.x;
  let x_704 : f32 = u_xlat17.x;
  u_xlat5.x = ((x_699 * x_701) + x_704);
  let x_709 : f32 = u_xlat5.z;
  u_xlatb17 = (0.0f >= x_709);
  let x_713 : f32 = u_xlat5.z;
  u_xlatb29 = (x_713 >= 1.0f);
  let x_715 : bool = u_xlatb29;
  let x_716 : bool = u_xlatb17;
  u_xlatb17 = (x_715 | x_716);
  let x_718 : bool = u_xlatb17;
  if (x_718) {
    x_720 = 1.0f;
  } else {
    let x_725 : f32 = u_xlat5.x;
    x_720 = x_725;
  }
  let x_726 : f32 = x_720;
  u_xlat5.x = x_726;
  let x_728 : vec3<f32> = vs_INTERP7;
  let x_730 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat17 = (x_728 + -(x_730));
  let x_733 : vec3<f32> = u_xlat17;
  let x_734 : vec3<f32> = u_xlat17;
  u_xlat17.x = dot(x_733, x_734);
  let x_739 : f32 = u_xlat17.x;
  let x_741 : f32 = x_298.x_MainLightShadowParams.z;
  let x_744 : f32 = x_298.x_MainLightShadowParams.w;
  u_xlat29 = ((x_739 * x_741) + x_744);
  let x_746 : f32 = u_xlat29;
  u_xlat29 = clamp(x_746, 0.0f, 1.0f);
  let x_750 : f32 = u_xlat5.x;
  u_xlat41 = (-(x_750) + 1.0f);
  let x_753 : f32 = u_xlat29;
  let x_754 : f32 = u_xlat41;
  let x_757 : f32 = u_xlat5.x;
  u_xlat5.x = ((x_753 * x_754) + x_757);
  let x_760 : vec4<f32> = u_xlat1;
  let x_763 : vec4<f32> = u_xlat4;
  u_xlat29 = dot(-(vec3<f32>(x_760.x, x_760.y, x_760.w)), vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : f32 = u_xlat29;
  let x_767 : f32 = u_xlat29;
  u_xlat29 = (x_766 + x_767);
  let x_769 : vec4<f32> = u_xlat4;
  let x_771 : f32 = u_xlat29;
  let x_775 : vec4<f32> = u_xlat1;
  let x_778 : vec3<f32> = ((vec3<f32>(x_769.x, x_769.y, x_769.z) * -(vec3<f32>(x_771, x_771, x_771))) + -(vec3<f32>(x_775.x, x_775.y, x_775.w)));
  let x_779 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_781 : vec4<f32> = u_xlat4;
  let x_783 : vec4<f32> = u_xlat1;
  u_xlat29 = dot(vec3<f32>(x_781.x, x_781.y, x_781.z), vec3<f32>(x_783.x, x_783.y, x_783.w));
  let x_786 : f32 = u_xlat29;
  u_xlat29 = clamp(x_786, 0.0f, 1.0f);
  let x_788 : f32 = u_xlat29;
  u_xlat29 = (-(x_788) + 1.0f);
  let x_791 : f32 = u_xlat29;
  let x_792 : f32 = u_xlat29;
  u_xlat29 = (x_791 * x_792);
  let x_794 : f32 = u_xlat29;
  let x_795 : f32 = u_xlat29;
  u_xlat29 = (x_794 * x_795);
  let x_797 : f32 = u_xlat38;
  u_xlat41 = ((-(x_797) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_803 : f32 = u_xlat38;
  let x_804 : f32 = u_xlat41;
  u_xlat2.w = (x_803 * x_804);
  let x_807 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_807 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_820 : vec4<f32> = u_xlat8;
  let x_823 : f32 = u_xlat2.w;
  let x_824 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_820.x, x_820.y, x_820.z), x_823);
  u_xlat8 = x_824;
  let x_826 : f32 = u_xlat8.w;
  u_xlat38 = (x_826 + -1.0f);
  let x_829 : f32 = x_107.unity_SpecCube0_HDR.w;
  let x_830 : f32 = u_xlat38;
  u_xlat38 = ((x_829 * x_830) + 1.0f);
  let x_833 : f32 = u_xlat38;
  u_xlat38 = max(x_833, 0.0f);
  let x_835 : f32 = u_xlat38;
  u_xlat38 = log2(x_835);
  let x_837 : f32 = u_xlat38;
  let x_839 : f32 = x_107.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_837 * x_839);
  let x_841 : f32 = u_xlat38;
  u_xlat38 = exp2(x_841);
  let x_843 : f32 = u_xlat38;
  let x_845 : f32 = x_107.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_843 * x_845);
  let x_847 : vec4<f32> = u_xlat8;
  let x_849 : f32 = u_xlat38;
  let x_851 : vec3<f32> = (vec3<f32>(x_847.x, x_847.y, x_847.z) * vec3<f32>(x_849, x_849, x_849));
  let x_852 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_851.x, x_851.y, x_851.z, x_852.w);
  let x_856 : vec3<f32> = u_xlat3;
  let x_858 : vec3<f32> = u_xlat3;
  u_xlat9 = ((vec2<f32>(x_856.x, x_856.x) * vec2<f32>(x_858.x, x_858.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_864 : f32 = u_xlat9.y;
  u_xlat38 = (1.0f / x_864);
  let x_867 : vec3<f32> = u_xlat0;
  let x_869 : f32 = u_xlat15;
  u_xlat21 = (-(x_867) + vec3<f32>(x_869, x_869, x_869));
  let x_872 : f32 = u_xlat29;
  let x_874 : vec3<f32> = u_xlat21;
  let x_876 : vec3<f32> = u_xlat0;
  u_xlat21 = ((vec3<f32>(x_872, x_872, x_872) * x_874) + x_876);
  let x_878 : f32 = u_xlat38;
  let x_880 : vec3<f32> = u_xlat21;
  u_xlat21 = (vec3<f32>(x_878, x_878, x_878) * x_880);
  let x_882 : vec4<f32> = u_xlat8;
  let x_884 : vec3<f32> = u_xlat21;
  let x_885 : vec3<f32> = (vec3<f32>(x_882.x, x_882.y, x_882.z) * x_884);
  let x_886 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
  let x_888 : vec4<f32> = u_xlat6;
  let x_890 : vec4<f32> = u_xlat7;
  let x_893 : vec4<f32> = u_xlat8;
  let x_895 : vec3<f32> = ((vec3<f32>(x_888.x, x_888.y, x_888.z) * vec3<f32>(x_890.x, x_890.y, x_890.z)) + vec3<f32>(x_893.x, x_893.y, x_893.z));
  let x_896 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
  let x_899 : f32 = u_xlat5.x;
  let x_901 : f32 = x_107.unity_LightData.z;
  u_xlat38 = (x_899 * x_901);
  let x_903 : vec4<f32> = u_xlat4;
  let x_906 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_903.x, x_903.y, x_903.z), vec3<f32>(x_906.x, x_906.y, x_906.z));
  let x_911 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_911, 0.0f, 1.0f);
  let x_914 : f32 = u_xlat38;
  let x_916 : f32 = u_xlat3.x;
  u_xlat38 = (x_914 * x_916);
  let x_918 : f32 = u_xlat38;
  let x_921 : vec4<f32> = x_29.x_MainLightColor;
  let x_923 : vec3<f32> = (vec3<f32>(x_918, x_918, x_918) * vec3<f32>(x_921.x, x_921.y, x_921.z));
  let x_924 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_923.x, x_924.y, x_923.y, x_923.z);
  let x_926 : vec4<f32> = u_xlat1;
  let x_929 : vec4<f32> = x_29.x_MainLightPosition;
  let x_931 : vec3<f32> = (vec3<f32>(x_926.x, x_926.y, x_926.w) + vec3<f32>(x_929.x, x_929.y, x_929.z));
  let x_932 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_931.x, x_931.y, x_931.z, x_932.w);
  let x_934 : vec4<f32> = u_xlat8;
  let x_936 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_934.x, x_934.y, x_934.z), vec3<f32>(x_936.x, x_936.y, x_936.z));
  let x_939 : f32 = u_xlat38;
  u_xlat38 = max(x_939, 1.17549435e-38f);
  let x_942 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_942);
  let x_944 : f32 = u_xlat38;
  let x_946 : vec4<f32> = u_xlat8;
  let x_948 : vec3<f32> = (vec3<f32>(x_944, x_944, x_944) * vec3<f32>(x_946.x, x_946.y, x_946.z));
  let x_949 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_951 : vec4<f32> = u_xlat4;
  let x_953 : vec4<f32> = u_xlat8;
  u_xlat38 = dot(vec3<f32>(x_951.x, x_951.y, x_951.z), vec3<f32>(x_953.x, x_953.y, x_953.z));
  let x_956 : f32 = u_xlat38;
  u_xlat38 = clamp(x_956, 0.0f, 1.0f);
  let x_959 : vec4<f32> = x_29.x_MainLightPosition;
  let x_961 : vec4<f32> = u_xlat8;
  u_xlat3.x = dot(vec3<f32>(x_959.x, x_959.y, x_959.z), vec3<f32>(x_961.x, x_961.y, x_961.z));
  let x_966 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_966, 0.0f, 1.0f);
  let x_969 : f32 = u_xlat38;
  let x_970 : f32 = u_xlat38;
  u_xlat38 = (x_969 * x_970);
  let x_972 : f32 = u_xlat38;
  let x_974 : f32 = u_xlat9.x;
  u_xlat38 = ((x_972 * x_974) + 1.00001001358032226562f);
  let x_979 : f32 = u_xlat3.x;
  let x_981 : f32 = u_xlat3.x;
  u_xlat3.x = (x_979 * x_981);
  let x_984 : f32 = u_xlat38;
  let x_985 : f32 = u_xlat38;
  u_xlat38 = (x_984 * x_985);
  let x_988 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_988, 0.10000000149011611938f);
  let x_992 : f32 = u_xlat38;
  let x_994 : f32 = u_xlat3.x;
  u_xlat38 = (x_992 * x_994);
  let x_996 : f32 = u_xlat39;
  let x_997 : f32 = u_xlat38;
  u_xlat38 = (x_996 * x_997);
  let x_999 : f32 = u_xlat40;
  let x_1000 : f32 = u_xlat38;
  u_xlat38 = (x_999 / x_1000);
  let x_1002 : vec3<f32> = u_xlat0;
  let x_1003 : f32 = u_xlat38;
  let x_1006 : vec4<f32> = u_xlat7;
  let x_1008 : vec3<f32> = ((x_1002 * vec3<f32>(x_1003, x_1003, x_1003)) + vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1009 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_1008.x, x_1008.y, x_1008.z, x_1009.w);
  let x_1011 : vec4<f32> = u_xlat5;
  let x_1013 : vec4<f32> = u_xlat8;
  let x_1015 : vec3<f32> = (vec3<f32>(x_1011.x, x_1011.z, x_1011.w) * vec3<f32>(x_1013.x, x_1013.y, x_1013.z));
  let x_1016 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1015.x, x_1016.y, x_1015.y, x_1015.z);
  let x_1019 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_1021 : f32 = x_107.unity_LightData.y;
  u_xlat38 = min(x_1019, x_1021);
  let x_1024 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_1024));
  let x_1028 : f32 = u_xlat17.x;
  let x_1031 : f32 = x_298.x_AdditionalShadowFadeParams.x;
  let x_1034 : f32 = x_298.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_1028 * x_1031) + x_1034);
  let x_1038 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_1038, 0.0f, 1.0f);
  u_xlat8.x = 0.0f;
  u_xlat8.y = 0.0f;
  u_xlat8.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_1051 : u32 = u_xlatu_loop_1;
    let x_1052 : u32 = u_xlatu38;
    if ((x_1051 < x_1052)) {
    } else {
      break;
    }
    let x_1055 : u32 = u_xlatu_loop_1;
    u_xlatu17 = (x_1055 >> 2u);
    let x_1058 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_1058 & 3u));
    let x_1061 : u32 = u_xlatu17;
    let x_1064 : vec4<f32> = x_107.unity_LightIndices[bitcast<i32>(x_1061)];
    let x_1074 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_1079 : vec4<u32> = indexable[x_1074];
    u_xlat17.x = dot(x_1064, bitcast<vec4<f32>>(x_1079));
    let x_1085 : f32 = u_xlat17.x;
    u_xlati17 = i32(x_1085);
    let x_1087 : vec3<f32> = vs_INTERP7;
    let x_1098 : i32 = u_xlati17;
    let x_1100 : vec4<f32> = x_1097.x_AdditionalLightsPosition[x_1098];
    let x_1103 : i32 = u_xlati17;
    let x_1105 : vec4<f32> = x_1097.x_AdditionalLightsPosition[x_1103];
    u_xlat21 = ((-(x_1087) * vec3<f32>(x_1100.w, x_1100.w, x_1100.w)) + vec3<f32>(x_1105.x, x_1105.y, x_1105.z));
    let x_1109 : vec3<f32> = u_xlat21;
    let x_1110 : vec3<f32> = u_xlat21;
    u_xlat42 = dot(x_1109, x_1110);
    let x_1112 : f32 = u_xlat42;
    u_xlat42 = max(x_1112, 0.00006103515625f);
    let x_1116 : f32 = u_xlat42;
    u_xlat43 = inverseSqrt(x_1116);
    let x_1119 : f32 = u_xlat43;
    let x_1121 : vec3<f32> = u_xlat21;
    u_xlat10 = (vec3<f32>(x_1119, x_1119, x_1119) * x_1121);
    let x_1124 : f32 = u_xlat42;
    u_xlat44 = (1.0f / x_1124);
    let x_1126 : f32 = u_xlat42;
    let x_1127 : i32 = u_xlati17;
    let x_1129 : f32 = x_1097.x_AdditionalLightsAttenuation[x_1127].x;
    u_xlat42 = (x_1126 * x_1129);
    let x_1131 : f32 = u_xlat42;
    let x_1133 : f32 = u_xlat42;
    u_xlat42 = ((-(x_1131) * x_1133) + 1.0f);
    let x_1136 : f32 = u_xlat42;
    u_xlat42 = max(x_1136, 0.0f);
    let x_1138 : f32 = u_xlat42;
    let x_1139 : f32 = u_xlat42;
    u_xlat42 = (x_1138 * x_1139);
    let x_1141 : f32 = u_xlat42;
    let x_1142 : f32 = u_xlat44;
    u_xlat42 = (x_1141 * x_1142);
    let x_1144 : i32 = u_xlati17;
    let x_1146 : vec4<f32> = x_1097.x_AdditionalLightsSpotDir[x_1144];
    let x_1148 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_1146.x, x_1146.y, x_1146.z), x_1148);
    let x_1150 : f32 = u_xlat44;
    let x_1151 : i32 = u_xlati17;
    let x_1153 : f32 = x_1097.x_AdditionalLightsAttenuation[x_1151].z;
    let x_1155 : i32 = u_xlati17;
    let x_1157 : f32 = x_1097.x_AdditionalLightsAttenuation[x_1155].w;
    u_xlat44 = ((x_1150 * x_1153) + x_1157);
    let x_1159 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1159, 0.0f, 1.0f);
    let x_1161 : f32 = u_xlat44;
    let x_1162 : f32 = u_xlat44;
    u_xlat44 = (x_1161 * x_1162);
    let x_1164 : f32 = u_xlat42;
    let x_1165 : f32 = u_xlat44;
    u_xlat42 = (x_1164 * x_1165);
    let x_1169 : i32 = u_xlati17;
    let x_1171 : f32 = x_298.x_AdditionalShadowParams[x_1169].w;
    u_xlati44 = i32(x_1171);
    let x_1174 : i32 = u_xlati44;
    u_xlatb46 = (x_1174 >= 0i);
    let x_1176 : bool = u_xlatb46;
    if (x_1176) {
      let x_1180 : i32 = u_xlati17;
      let x_1182 : f32 = x_298.x_AdditionalShadowParams[x_1180].z;
      u_xlatb46 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_1182, x_1182, x_1182, x_1182))));
      let x_1186 : bool = u_xlatb46;
      if (x_1186) {
        let x_1190 : vec3<f32> = u_xlat10;
        let x_1193 : vec3<f32> = u_xlat10;
        let x_1196 : vec4<bool> = (abs(vec4<f32>(x_1190.z, x_1190.z, x_1190.y, x_1190.z)) >= abs(vec4<f32>(x_1193.x, x_1193.y, x_1193.x, x_1193.x)));
        let x_1198 : vec3<bool> = vec3<bool>(x_1196.x, x_1196.y, x_1196.z);
        let x_1199 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
        let x_1202 : bool = u_xlatb11.y;
        let x_1204 : bool = u_xlatb11.x;
        u_xlatb46 = (x_1202 & x_1204);
        let x_1206 : vec3<f32> = u_xlat10;
        let x_1209 : vec4<bool> = (-(vec4<f32>(x_1206.z, x_1206.y, x_1206.z, x_1206.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_1210 : vec3<bool> = vec3<bool>(x_1209.x, x_1209.y, x_1209.w);
        let x_1211 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_1210.x, x_1210.y, x_1211.z, x_1210.z);
        let x_1215 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_1215);
        let x_1220 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_1220);
        let x_1225 : bool = u_xlatb11.w;
        u_xlat47 = select(0.0f, 1.0f, x_1225);
        let x_1229 : bool = u_xlatb11.z;
        if (x_1229) {
          let x_1234 : f32 = u_xlat11.y;
          x_1230 = x_1234;
        } else {
          let x_1236 : f32 = u_xlat47;
          x_1230 = x_1236;
        }
        let x_1237 : f32 = x_1230;
        u_xlat23 = x_1237;
        let x_1239 : bool = u_xlatb46;
        if (x_1239) {
          let x_1244 : f32 = u_xlat11.x;
          x_1240 = x_1244;
        } else {
          let x_1246 : f32 = u_xlat23;
          x_1240 = x_1246;
        }
        let x_1247 : f32 = x_1240;
        u_xlat46 = x_1247;
        let x_1248 : i32 = u_xlati17;
        let x_1250 : f32 = x_298.x_AdditionalShadowParams[x_1248].w;
        u_xlat11.x = trunc(x_1250);
        let x_1253 : f32 = u_xlat46;
        let x_1255 : f32 = u_xlat11.x;
        u_xlat46 = (x_1253 + x_1255);
        let x_1257 : f32 = u_xlat46;
        u_xlati44 = i32(x_1257);
      }
      let x_1259 : i32 = u_xlati44;
      u_xlati44 = (x_1259 << bitcast<u32>(2i));
      let x_1261 : vec3<f32> = vs_INTERP7;
      let x_1264 : i32 = u_xlati44;
      let x_1267 : i32 = u_xlati44;
      let x_1271 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_1264 + 1i) / 4i)][((x_1267 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_1261.y, x_1261.y, x_1261.y, x_1261.y) * x_1271);
      let x_1273 : i32 = u_xlati44;
      let x_1275 : i32 = u_xlati44;
      let x_1278 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[(x_1273 / 4i)][(x_1275 % 4i)];
      let x_1279 : vec3<f32> = vs_INTERP7;
      let x_1282 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1278 * vec4<f32>(x_1279.x, x_1279.x, x_1279.x, x_1279.x)) + x_1282);
      let x_1284 : i32 = u_xlati44;
      let x_1287 : i32 = u_xlati44;
      let x_1291 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_1284 + 2i) / 4i)][((x_1287 + 2i) % 4i)];
      let x_1292 : vec3<f32> = vs_INTERP7;
      let x_1295 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1291 * vec4<f32>(x_1292.z, x_1292.z, x_1292.z, x_1292.z)) + x_1295);
      let x_1297 : vec4<f32> = u_xlat11;
      let x_1298 : i32 = u_xlati44;
      let x_1301 : i32 = u_xlati44;
      let x_1305 : vec4<f32> = x_298.x_AdditionalLightsWorldToShadow[((x_1298 + 3i) / 4i)][((x_1301 + 3i) % 4i)];
      u_xlat11 = (x_1297 + x_1305);
      let x_1307 : vec4<f32> = u_xlat11;
      let x_1309 : vec4<f32> = u_xlat11;
      let x_1311 : vec3<f32> = (vec3<f32>(x_1307.x, x_1307.y, x_1307.z) / vec3<f32>(x_1309.w, x_1309.w, x_1309.w));
      let x_1312 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1311.x, x_1311.y, x_1311.z, x_1312.w);
      let x_1315 : vec4<f32> = u_xlat11;
      let x_1316 : vec2<f32> = vec2<f32>(x_1315.x, x_1315.y);
      let x_1318 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1316.x, x_1316.y, x_1318);
      let x_1326 : vec3<f32> = txVec1;
      let x_1328 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1326.xy, x_1326.z);
      u_xlat44 = x_1328;
      let x_1329 : i32 = u_xlati17;
      let x_1331 : f32 = x_298.x_AdditionalShadowParams[x_1329].x;
      u_xlat46 = (1.0f + -(x_1331));
      let x_1334 : f32 = u_xlat44;
      let x_1335 : i32 = u_xlati17;
      let x_1337 : f32 = x_298.x_AdditionalShadowParams[x_1335].x;
      let x_1339 : f32 = u_xlat46;
      u_xlat44 = ((x_1334 * x_1337) + x_1339);
      let x_1342 : f32 = u_xlat11.z;
      u_xlatb46 = (0.0f >= x_1342);
      let x_1345 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1345 >= 1.0f);
      let x_1348 : bool = u_xlatb46;
      let x_1350 : bool = u_xlatb11.x;
      u_xlatb46 = (x_1348 | x_1350);
      let x_1352 : bool = u_xlatb46;
      let x_1353 : f32 = u_xlat44;
      u_xlat44 = select(x_1353, 1.0f, x_1352);
    } else {
      u_xlat44 = 1.0f;
    }
    let x_1356 : f32 = u_xlat44;
    u_xlat46 = (-(x_1356) + 1.0f);
    let x_1360 : f32 = u_xlat3.x;
    let x_1361 : f32 = u_xlat46;
    let x_1363 : f32 = u_xlat44;
    u_xlat44 = ((x_1360 * x_1361) + x_1363);
    let x_1365 : f32 = u_xlat42;
    let x_1366 : f32 = u_xlat44;
    u_xlat42 = (x_1365 * x_1366);
    let x_1368 : vec4<f32> = u_xlat4;
    let x_1370 : vec3<f32> = u_xlat10;
    u_xlat44 = dot(vec3<f32>(x_1368.x, x_1368.y, x_1368.z), x_1370);
    let x_1372 : f32 = u_xlat44;
    u_xlat44 = clamp(x_1372, 0.0f, 1.0f);
    let x_1374 : f32 = u_xlat42;
    let x_1375 : f32 = u_xlat44;
    u_xlat42 = (x_1374 * x_1375);
    let x_1377 : f32 = u_xlat42;
    let x_1379 : i32 = u_xlati17;
    let x_1381 : vec4<f32> = x_1097.x_AdditionalLightsColor[x_1379];
    let x_1383 : vec3<f32> = (vec3<f32>(x_1377, x_1377, x_1377) * vec3<f32>(x_1381.x, x_1381.y, x_1381.z));
    let x_1384 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1383.x, x_1383.y, x_1383.z, x_1384.w);
    let x_1386 : vec3<f32> = u_xlat21;
    let x_1387 : f32 = u_xlat43;
    let x_1390 : vec4<f32> = u_xlat1;
    u_xlat21 = ((x_1386 * vec3<f32>(x_1387, x_1387, x_1387)) + vec3<f32>(x_1390.x, x_1390.y, x_1390.w));
    let x_1393 : vec3<f32> = u_xlat21;
    let x_1394 : vec3<f32> = u_xlat21;
    u_xlat17.x = dot(x_1393, x_1394);
    let x_1398 : f32 = u_xlat17.x;
    u_xlat17.x = max(x_1398, 1.17549435e-38f);
    let x_1402 : f32 = u_xlat17.x;
    u_xlat17.x = inverseSqrt(x_1402);
    let x_1405 : vec3<f32> = u_xlat17;
    let x_1407 : vec3<f32> = u_xlat21;
    u_xlat21 = (vec3<f32>(x_1405.x, x_1405.x, x_1405.x) * x_1407);
    let x_1409 : vec4<f32> = u_xlat4;
    let x_1411 : vec3<f32> = u_xlat21;
    u_xlat17.x = dot(vec3<f32>(x_1409.x, x_1409.y, x_1409.z), x_1411);
    let x_1415 : f32 = u_xlat17.x;
    u_xlat17.x = clamp(x_1415, 0.0f, 1.0f);
    let x_1418 : vec3<f32> = u_xlat10;
    let x_1419 : vec3<f32> = u_xlat21;
    u_xlat42 = dot(x_1418, x_1419);
    let x_1421 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1421, 0.0f, 1.0f);
    let x_1424 : f32 = u_xlat17.x;
    let x_1426 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1424 * x_1426);
    let x_1430 : f32 = u_xlat17.x;
    let x_1432 : f32 = u_xlat9.x;
    u_xlat17.x = ((x_1430 * x_1432) + 1.00001001358032226562f);
    let x_1436 : f32 = u_xlat42;
    let x_1437 : f32 = u_xlat42;
    u_xlat42 = (x_1436 * x_1437);
    let x_1440 : f32 = u_xlat17.x;
    let x_1442 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1440 * x_1442);
    let x_1445 : f32 = u_xlat42;
    u_xlat42 = max(x_1445, 0.10000000149011611938f);
    let x_1448 : f32 = u_xlat17.x;
    let x_1449 : f32 = u_xlat42;
    u_xlat17.x = (x_1448 * x_1449);
    let x_1452 : f32 = u_xlat39;
    let x_1454 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1452 * x_1454);
    let x_1457 : f32 = u_xlat40;
    let x_1459 : f32 = u_xlat17.x;
    u_xlat17.x = (x_1457 / x_1459);
    let x_1462 : vec3<f32> = u_xlat0;
    let x_1463 : vec3<f32> = u_xlat17;
    let x_1466 : vec4<f32> = u_xlat7;
    u_xlat21 = ((x_1462 * vec3<f32>(x_1463.x, x_1463.x, x_1463.x)) + vec3<f32>(x_1466.x, x_1466.y, x_1466.z));
    let x_1469 : vec3<f32> = u_xlat21;
    let x_1470 : vec4<f32> = u_xlat11;
    let x_1473 : vec4<f32> = u_xlat8;
    let x_1475 : vec3<f32> = ((x_1469 * vec3<f32>(x_1470.x, x_1470.y, x_1470.z)) + vec3<f32>(x_1473.x, x_1473.y, x_1473.z));
    let x_1476 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1475.x, x_1475.y, x_1475.z, x_1476.w);

    continuing {
      let x_1478 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1478 + bitcast<u32>(1i));
    }
  }
  let x_1480 : vec4<f32> = u_xlat6;
  let x_1482 : f32 = u_xlat27;
  let x_1485 : vec4<f32> = u_xlat5;
  u_xlat0 = ((vec3<f32>(x_1480.x, x_1480.y, x_1480.z) * vec3<f32>(x_1482, x_1482, x_1482)) + vec3<f32>(x_1485.x, x_1485.z, x_1485.w));
  let x_1488 : vec4<f32> = u_xlat8;
  let x_1490 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_1488.x, x_1488.y, x_1488.z) + x_1490);
  let x_1492 : vec4<f32> = u_xlat2;
  let x_1494 : f32 = u_xlat25;
  let x_1497 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1492.x, x_1492.y, x_1492.z) * vec3<f32>(x_1494, x_1494, x_1494)) + x_1497);
  let x_1499 : f32 = u_xlat36;
  let x_1500 : f32 = u_xlat36;
  u_xlat36 = (x_1499 * -(x_1500));
  let x_1503 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1503);
  let x_1505 : vec3<f32> = u_xlat0;
  let x_1507 : vec4<f32> = x_29.unity_FogColor;
  u_xlat0 = (x_1505 + -(vec3<f32>(x_1507.x, x_1507.y, x_1507.z)));
  let x_1513 : f32 = u_xlat36;
  let x_1515 : vec3<f32> = u_xlat0;
  let x_1518 : vec4<f32> = x_29.unity_FogColor;
  let x_1520 : vec3<f32> = ((vec3<f32>(x_1513, x_1513, x_1513) * x_1515) + vec3<f32>(x_1518.x, x_1518.y, x_1518.z));
  let x_1521 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1520.x, x_1520.y, x_1520.z, x_1521.w);
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


