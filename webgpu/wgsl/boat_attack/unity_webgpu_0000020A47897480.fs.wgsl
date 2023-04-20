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

@group(0) @binding(5) var Texture2D_52571568 : texture_2d<f32>;

@group(0) @binding(12) var samplerTexture2D_52571568 : sampler;

var<private> vs_INTERP5 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(7) var Texture2D_8BA53EED : texture_2d<f32>;

@group(0) @binding(14) var samplerTexture2D_8BA53EED : sampler;

var<private> u_xlat36 : f32;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(8) var Texture2D_AB84E4D0 : texture_2d<f32>;

@group(0) @binding(15) var samplerTexture2D_AB84E4D0 : sampler;

var<private> u_xlat25 : f32;

@group(1) @binding(2) var<uniform> x_107 : UnityPerDraw;

var<private> u_xlatb25 : bool;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(6) var Texture2D_F0A81025 : texture_2d<f32>;

@group(0) @binding(13) var samplerTexture2D_F0A81025 : sampler;

var<private> u_xlatb37 : bool;

var<private> vs_INTERP4 : vec4<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlat38 : f32;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_INTERP8 : vec3<f32>;

var<private> u_xlatb36 : bool;

var<private> vs_INTERP7 : vec3<f32>;

var<private> u_xlat5 : vec4<f32>;

@group(0) @binding(2) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(10) var samplerunity_Lightmap : sampler;

var<private> vs_INTERP0 : vec2<f32>;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(1) var unity_Lightmap : texture_2d<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlat27 : f32;

var<private> vs_INTERP3 : vec4<f32>;

var<private> u_xlat41 : f32;

@group(0) @binding(3) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(11) var sampler_LinearClampCompare : sampler_comparison;

var<private> u_xlat42 : f32;

@group(1) @binding(3) var<uniform> x_458 : LightShadows;

var<private> u_xlatb42 : bool;

var<private> u_xlatb7 : bool;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat43 : f32;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(0) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat20 : vec3<f32>;

var<private> u_xlatu38 : u32;

var<private> u_xlatu41 : u32;

var<private> u_xlati42 : i32;

var<private> u_xlati41 : i32;

var<private> u_xlat9 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_827 : AdditionalLights;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat45 : f32;

var<private> u_xlati45 : i32;

var<private> u_xlatb46 : bool;

var<private> u_xlatb11 : vec4<bool>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat47 : f32;

var<private> u_xlat23 : f32;

var<private> u_xlat46 : f32;

@group(0) @binding(4) var x_AdditionalLightsShadowmapTexture : texture_depth_2d;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlatu39 : u32;

var<private> u_xlatb41 : bool;

fn main_1() {
  var x_260 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatu_loop_1 : u32;
  var indexable : array<vec4<u32>, 4u>;
  var x_962 : f32;
  var x_972 : f32;
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
  u_xlat4 = (vec3<f32>(x_167.y, x_167.z, x_167.x) * vec3<f32>(x_171.z, x_171.x, x_171.y));
  let x_174 : vec3<f32> = vs_INTERP8;
  let x_176 : vec4<f32> = vs_INTERP4;
  let x_179 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_174.y, x_174.z, x_174.x) * vec3<f32>(x_176.z, x_176.x, x_176.y)) + -(x_179));
  let x_182 : f32 = u_xlat37;
  let x_184 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_182, x_182, x_182) * x_184);
  let x_186 : vec4<f32> = u_xlat1;
  let x_188 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_186.y, x_186.y, x_186.y) * x_188);
  let x_190 : vec4<f32> = u_xlat1;
  let x_192 : vec4<f32> = vs_INTERP4;
  let x_195 : vec3<f32> = u_xlat4;
  let x_196 : vec3<f32> = ((vec3<f32>(x_190.x, x_190.x, x_190.x) * vec3<f32>(x_192.x, x_192.y, x_192.z)) + x_195);
  let x_197 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_196.x, x_196.y, x_197.z, x_196.z);
  let x_199 : f32 = u_xlat36;
  let x_201 : vec3<f32> = vs_INTERP8;
  let x_203 : vec4<f32> = u_xlat1;
  let x_205 : vec3<f32> = ((vec3<f32>(x_199, x_199, x_199) * x_201) + vec3<f32>(x_203.x, x_203.y, x_203.w));
  let x_206 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_205.x, x_205.y, x_206.z, x_205.z);
  let x_208 : vec4<f32> = u_xlat1;
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec3<f32>(x_208.x, x_208.y, x_208.w), vec3<f32>(x_210.x, x_210.y, x_210.w));
  let x_213 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_213);
  let x_215 : f32 = u_xlat36;
  let x_217 : vec4<f32> = u_xlat1;
  let x_219 : vec3<f32> = (vec3<f32>(x_215, x_215, x_215) * vec3<f32>(x_217.x, x_217.y, x_217.w));
  let x_220 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_219.x, x_219.y, x_220.z, x_219.z);
  let x_225 : f32 = x_29.unity_OrthoParams.w;
  u_xlatb36 = (x_225 == 0.0f);
  let x_228 : vec3<f32> = vs_INTERP7;
  let x_233 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat4 = (-(x_228) + x_233);
  let x_235 : vec3<f32> = u_xlat4;
  let x_236 : vec3<f32> = u_xlat4;
  u_xlat38 = dot(x_235, x_236);
  let x_238 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_238);
  let x_240 : f32 = u_xlat38;
  let x_242 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_240, x_240, x_240) * x_242);
  let x_247 : f32 = x_29.unity_MatrixV[0i].z;
  u_xlat5.x = x_247;
  let x_251 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat5.y = x_251;
  let x_256 : f32 = x_29.unity_MatrixV[2i].z;
  u_xlat5.z = x_256;
  let x_258 : bool = u_xlatb36;
  if (x_258) {
    let x_263 : vec3<f32> = u_xlat4;
    x_260 = x_263;
  } else {
    let x_265 : vec4<f32> = u_xlat5;
    x_260 = vec3<f32>(x_265.x, x_265.y, x_265.z);
  }
  let x_267 : vec3<f32> = x_260;
  u_xlat4 = x_267;
  let x_269 : f32 = vs_INTERP7.y;
  let x_271 : f32 = x_29.unity_MatrixV[1i].z;
  u_xlat36 = (x_269 * x_271);
  let x_274 : f32 = x_29.unity_MatrixV[0i].z;
  let x_276 : f32 = vs_INTERP7.x;
  let x_278 : f32 = u_xlat36;
  u_xlat36 = ((x_274 * x_276) + x_278);
  let x_281 : f32 = x_29.unity_MatrixV[2i].z;
  let x_283 : f32 = vs_INTERP7.z;
  let x_285 : f32 = u_xlat36;
  u_xlat36 = ((x_281 * x_283) + x_285);
  let x_287 : f32 = u_xlat36;
  let x_289 : f32 = x_29.unity_MatrixV[3i].z;
  u_xlat36 = (x_287 + x_289);
  let x_291 : f32 = u_xlat36;
  let x_295 : f32 = x_29.x_ProjectionParams.y;
  u_xlat36 = (-(x_291) + -(x_295));
  let x_298 : f32 = u_xlat36;
  u_xlat36 = max(x_298, 0.0f);
  let x_300 : f32 = u_xlat36;
  let x_303 : f32 = x_29.unity_FogParams.x;
  u_xlat36 = (x_300 * x_303);
  let x_312 : vec2<f32> = vs_INTERP0;
  let x_314 : f32 = x_29.x_GlobalMipBias.x;
  let x_315 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_312, x_314);
  u_xlat5 = x_315;
  let x_321 : vec2<f32> = vs_INTERP0;
  let x_323 : f32 = x_29.x_GlobalMipBias.x;
  let x_324 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_321, x_323);
  u_xlat6 = vec3<f32>(x_324.x, x_324.y, x_324.z);
  let x_326 : vec4<f32> = u_xlat5;
  let x_330 : vec3<f32> = (vec3<f32>(x_326.x, x_326.y, x_326.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_331 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_333 : vec4<f32> = u_xlat1;
  let x_335 : vec4<f32> = u_xlat5;
  u_xlat38 = dot(vec3<f32>(x_333.x, x_333.y, x_333.w), vec3<f32>(x_335.x, x_335.y, x_335.z));
  let x_338 : f32 = u_xlat38;
  u_xlat38 = (x_338 + 0.5f);
  let x_341 : f32 = u_xlat38;
  let x_343 : vec3<f32> = u_xlat6;
  let x_344 : vec3<f32> = (vec3<f32>(x_341, x_341, x_341) * x_343);
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_344.y, x_344.z, x_345.w);
  let x_348 : f32 = u_xlat5.w;
  u_xlat38 = max(x_348, 0.00009999999747378752f);
  let x_351 : vec4<f32> = u_xlat5;
  let x_353 : f32 = u_xlat38;
  let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) / vec3<f32>(x_353, x_353, x_353));
  let x_356 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : vec3<f32> = u_xlat3;
  let x_359 : vec2<f32> = vec2<f32>(x_358.x, x_358.y);
  let x_360 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_359.x, x_359.y, x_360.z);
  let x_362 : vec3<f32> = u_xlat3;
  let x_366 : vec2<f32> = clamp(vec2<f32>(x_362.x, x_362.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_367 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_366.x, x_366.y, x_367.z);
  let x_370 : f32 = u_xlat3.x;
  u_xlat38 = ((-(x_370) * 0.95999997854232788086f) + 0.95999997854232788086f);
  let x_376 : f32 = u_xlat38;
  let x_379 : f32 = u_xlat3.y;
  u_xlat39 = (-(x_376) + x_379);
  let x_381 : vec3<f32> = u_xlat0;
  let x_382 : f32 = u_xlat38;
  u_xlat6 = (x_381 * vec3<f32>(x_382, x_382, x_382));
  let x_385 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_385 + vec3<f32>(-0.03999999910593032837f, -0.03999999910593032837f, -0.03999999910593032837f));
  let x_389 : vec3<f32> = u_xlat3;
  let x_391 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_389.x, x_389.x, x_389.x) * x_391) + vec3<f32>(0.03999999910593032837f, 0.03999999910593032837f, 0.03999999910593032837f));
  let x_397 : f32 = u_xlat3.y;
  u_xlat38 = (-(x_397) + 1.0f);
  let x_400 : f32 = u_xlat38;
  let x_401 : f32 = u_xlat38;
  u_xlat3.x = (x_400 * x_401);
  let x_405 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_405, 0.0078125f);
  let x_411 : f32 = u_xlat3.x;
  let x_413 : f32 = u_xlat3.x;
  u_xlat15 = (x_411 * x_413);
  let x_415 : f32 = u_xlat39;
  u_xlat39 = (x_415 + 1.0f);
  let x_417 : f32 = u_xlat39;
  u_xlat39 = min(x_417, 1.0f);
  let x_421 : f32 = u_xlat3.x;
  u_xlat40 = ((x_421 * 4.0f) + 2.0f);
  let x_427 : f32 = u_xlat3.z;
  u_xlat27 = min(x_427, 1.0f);
  let x_431 : vec4<f32> = vs_INTERP3;
  let x_432 : vec2<f32> = vec2<f32>(x_431.x, x_431.y);
  let x_434 : f32 = vs_INTERP3.z;
  txVec0 = vec3<f32>(x_432.x, x_432.y, x_434);
  let x_447 : vec3<f32> = txVec0;
  let x_449 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_447.xy, x_447.z);
  u_xlat41 = x_449;
  let x_461 : f32 = x_458.x_MainLightShadowParams.x;
  u_xlat42 = (-(x_461) + 1.0f);
  let x_464 : f32 = u_xlat41;
  let x_466 : f32 = x_458.x_MainLightShadowParams.x;
  let x_468 : f32 = u_xlat42;
  u_xlat41 = ((x_464 * x_466) + x_468);
  let x_472 : f32 = vs_INTERP3.z;
  u_xlatb42 = (0.0f >= x_472);
  let x_476 : f32 = vs_INTERP3.z;
  u_xlatb7 = (x_476 >= 1.0f);
  let x_478 : bool = u_xlatb42;
  let x_479 : bool = u_xlatb7;
  u_xlatb42 = (x_478 | x_479);
  let x_481 : bool = u_xlatb42;
  let x_482 : f32 = u_xlat41;
  u_xlat41 = select(x_482, 1.0f, x_481);
  let x_485 : vec3<f32> = vs_INTERP7;
  let x_487 : vec3<f32> = x_29.x_WorldSpaceCameraPos;
  u_xlat7 = (x_485 + -(x_487));
  let x_490 : vec3<f32> = u_xlat7;
  let x_491 : vec3<f32> = u_xlat7;
  u_xlat42 = dot(x_490, x_491);
  let x_493 : f32 = u_xlat42;
  let x_495 : f32 = x_458.x_MainLightShadowParams.z;
  let x_498 : f32 = x_458.x_MainLightShadowParams.w;
  u_xlat7.x = ((x_493 * x_495) + x_498);
  let x_502 : f32 = u_xlat7.x;
  u_xlat7.x = clamp(x_502, 0.0f, 1.0f);
  let x_506 : f32 = u_xlat41;
  u_xlat19 = (-(x_506) + 1.0f);
  let x_510 : f32 = u_xlat7.x;
  let x_511 : f32 = u_xlat19;
  let x_513 : f32 = u_xlat41;
  u_xlat41 = ((x_510 * x_511) + x_513);
  let x_515 : vec3<f32> = u_xlat4;
  let x_517 : vec4<f32> = u_xlat1;
  u_xlat7.x = dot(-(x_515), vec3<f32>(x_517.x, x_517.y, x_517.w));
  let x_522 : f32 = u_xlat7.x;
  let x_524 : f32 = u_xlat7.x;
  u_xlat7.x = (x_522 + x_524);
  let x_527 : vec4<f32> = u_xlat1;
  let x_529 : vec3<f32> = u_xlat7;
  let x_533 : vec3<f32> = u_xlat4;
  u_xlat7 = ((vec3<f32>(x_527.x, x_527.y, x_527.w) * -(vec3<f32>(x_529.x, x_529.x, x_529.x))) + -(x_533));
  let x_537 : vec4<f32> = u_xlat1;
  let x_539 : vec3<f32> = u_xlat4;
  u_xlat43 = dot(vec3<f32>(x_537.x, x_537.y, x_537.w), x_539);
  let x_541 : f32 = u_xlat43;
  u_xlat43 = clamp(x_541, 0.0f, 1.0f);
  let x_543 : f32 = u_xlat43;
  u_xlat43 = (-(x_543) + 1.0f);
  let x_546 : f32 = u_xlat43;
  let x_547 : f32 = u_xlat43;
  u_xlat43 = (x_546 * x_547);
  let x_549 : f32 = u_xlat43;
  let x_550 : f32 = u_xlat43;
  u_xlat43 = (x_549 * x_550);
  let x_553 : f32 = u_xlat38;
  u_xlat8.x = ((-(x_553) * 0.69999998807907104492f) + 1.70000004768371582031f);
  let x_560 : f32 = u_xlat38;
  let x_562 : f32 = u_xlat8.x;
  u_xlat2.w = (x_560 * x_562);
  let x_565 : vec4<f32> = u_xlat2;
  u_xlat2 = (x_565 * vec4<f32>(14.0f, 14.0f, 14.0f, 6.0f));
  let x_578 : vec3<f32> = u_xlat7;
  let x_580 : f32 = u_xlat2.w;
  let x_581 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, x_578, x_580);
  u_xlat8 = x_581;
  let x_583 : f32 = u_xlat8.w;
  u_xlat38 = (x_583 + -1.0f);
  let x_586 : f32 = x_107.unity_SpecCube0_HDR.w;
  let x_587 : f32 = u_xlat38;
  u_xlat38 = ((x_586 * x_587) + 1.0f);
  let x_590 : f32 = u_xlat38;
  u_xlat38 = max(x_590, 0.0f);
  let x_592 : f32 = u_xlat38;
  u_xlat38 = log2(x_592);
  let x_594 : f32 = u_xlat38;
  let x_596 : f32 = x_107.unity_SpecCube0_HDR.y;
  u_xlat38 = (x_594 * x_596);
  let x_598 : f32 = u_xlat38;
  u_xlat38 = exp2(x_598);
  let x_600 : f32 = u_xlat38;
  let x_602 : f32 = x_107.unity_SpecCube0_HDR.x;
  u_xlat38 = (x_600 * x_602);
  let x_604 : vec4<f32> = u_xlat8;
  let x_606 : f32 = u_xlat38;
  u_xlat7 = (vec3<f32>(x_604.x, x_604.y, x_604.z) * vec3<f32>(x_606, x_606, x_606));
  let x_609 : vec3<f32> = u_xlat3;
  let x_611 : vec3<f32> = u_xlat3;
  let x_615 : vec2<f32> = ((vec2<f32>(x_609.x, x_609.x) * vec2<f32>(x_611.x, x_611.x)) + vec2<f32>(-1.0f, 1.0f));
  let x_616 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_615.x, x_615.y, x_616.z, x_616.w);
  let x_619 : f32 = u_xlat8.y;
  u_xlat38 = (1.0f / x_619);
  let x_622 : vec3<f32> = u_xlat0;
  let x_624 : f32 = u_xlat39;
  u_xlat20 = (-(x_622) + vec3<f32>(x_624, x_624, x_624));
  let x_627 : f32 = u_xlat43;
  let x_629 : vec3<f32> = u_xlat20;
  let x_631 : vec3<f32> = u_xlat0;
  u_xlat20 = ((vec3<f32>(x_627, x_627, x_627) * x_629) + x_631);
  let x_633 : f32 = u_xlat38;
  let x_635 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_633, x_633, x_633) * x_635);
  let x_637 : vec3<f32> = u_xlat7;
  let x_638 : vec3<f32> = u_xlat20;
  u_xlat7 = (x_637 * x_638);
  let x_640 : vec4<f32> = u_xlat5;
  let x_642 : vec3<f32> = u_xlat6;
  let x_644 : vec3<f32> = u_xlat7;
  let x_645 : vec3<f32> = ((vec3<f32>(x_640.x, x_640.y, x_640.z) * x_642) + x_644);
  let x_646 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
  let x_648 : f32 = u_xlat41;
  let x_650 : f32 = x_107.unity_LightData.z;
  u_xlat38 = (x_648 * x_650);
  let x_652 : vec4<f32> = u_xlat1;
  let x_655 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat3.x = dot(vec3<f32>(x_652.x, x_652.y, x_652.w), vec3<f32>(x_655.x, x_655.y, x_655.z));
  let x_660 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_660, 0.0f, 1.0f);
  let x_663 : f32 = u_xlat38;
  let x_665 : f32 = u_xlat3.x;
  u_xlat38 = (x_663 * x_665);
  let x_667 : f32 = u_xlat38;
  let x_670 : vec4<f32> = x_29.x_MainLightColor;
  u_xlat7 = (vec3<f32>(x_667, x_667, x_667) * vec3<f32>(x_670.x, x_670.y, x_670.z));
  let x_673 : vec3<f32> = u_xlat4;
  let x_675 : vec4<f32> = x_29.x_MainLightPosition;
  u_xlat20 = (x_673 + vec3<f32>(x_675.x, x_675.y, x_675.z));
  let x_678 : vec3<f32> = u_xlat20;
  let x_679 : vec3<f32> = u_xlat20;
  u_xlat38 = dot(x_678, x_679);
  let x_681 : f32 = u_xlat38;
  u_xlat38 = max(x_681, 1.17549435e-38f);
  let x_684 : f32 = u_xlat38;
  u_xlat38 = inverseSqrt(x_684);
  let x_686 : f32 = u_xlat38;
  let x_688 : vec3<f32> = u_xlat20;
  u_xlat20 = (vec3<f32>(x_686, x_686, x_686) * x_688);
  let x_690 : vec4<f32> = u_xlat1;
  let x_692 : vec3<f32> = u_xlat20;
  u_xlat38 = dot(vec3<f32>(x_690.x, x_690.y, x_690.w), x_692);
  let x_694 : f32 = u_xlat38;
  u_xlat38 = clamp(x_694, 0.0f, 1.0f);
  let x_697 : vec4<f32> = x_29.x_MainLightPosition;
  let x_699 : vec3<f32> = u_xlat20;
  u_xlat3.x = dot(vec3<f32>(x_697.x, x_697.y, x_697.z), x_699);
  let x_703 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_703, 0.0f, 1.0f);
  let x_706 : f32 = u_xlat38;
  let x_707 : f32 = u_xlat38;
  u_xlat38 = (x_706 * x_707);
  let x_709 : f32 = u_xlat38;
  let x_711 : f32 = u_xlat8.x;
  u_xlat38 = ((x_709 * x_711) + 1.00001001358032226562f);
  let x_716 : f32 = u_xlat3.x;
  let x_718 : f32 = u_xlat3.x;
  u_xlat3.x = (x_716 * x_718);
  let x_721 : f32 = u_xlat38;
  let x_722 : f32 = u_xlat38;
  u_xlat38 = (x_721 * x_722);
  let x_725 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_725, 0.10000000149011611938f);
  let x_729 : f32 = u_xlat38;
  let x_731 : f32 = u_xlat3.x;
  u_xlat38 = (x_729 * x_731);
  let x_733 : f32 = u_xlat40;
  let x_734 : f32 = u_xlat38;
  u_xlat38 = (x_733 * x_734);
  let x_736 : f32 = u_xlat15;
  let x_737 : f32 = u_xlat38;
  u_xlat38 = (x_736 / x_737);
  let x_739 : vec3<f32> = u_xlat0;
  let x_740 : f32 = u_xlat38;
  let x_743 : vec3<f32> = u_xlat6;
  u_xlat20 = ((x_739 * vec3<f32>(x_740, x_740, x_740)) + x_743);
  let x_745 : vec3<f32> = u_xlat7;
  let x_746 : vec3<f32> = u_xlat20;
  u_xlat7 = (x_745 * x_746);
  let x_749 : f32 = x_29.x_AdditionalLightsCount.x;
  let x_751 : f32 = x_107.unity_LightData.y;
  u_xlat38 = min(x_749, x_751);
  let x_755 : f32 = u_xlat38;
  u_xlatu38 = bitcast<u32>(i32(x_755));
  let x_758 : f32 = u_xlat42;
  let x_761 : f32 = x_458.x_AdditionalShadowFadeParams.x;
  let x_764 : f32 = x_458.x_AdditionalShadowFadeParams.y;
  u_xlat3.x = ((x_758 * x_761) + x_764);
  let x_768 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_768, 0.0f, 1.0f);
  u_xlat20.x = 0.0f;
  u_xlat20.y = 0.0f;
  u_xlat20.z = 0.0f;
  u_xlatu_loop_1 = 0u;
  loop {
    let x_781 : u32 = u_xlatu_loop_1;
    let x_782 : u32 = u_xlatu38;
    if ((x_781 < x_782)) {
    } else {
      break;
    }
    let x_785 : u32 = u_xlatu_loop_1;
    u_xlatu41 = (x_785 >> 2u);
    let x_789 : u32 = u_xlatu_loop_1;
    u_xlati42 = bitcast<i32>((x_789 & 3u));
    let x_792 : u32 = u_xlatu41;
    let x_795 : vec4<f32> = x_107.unity_LightIndices[bitcast<i32>(x_792)];
    let x_805 : i32 = u_xlati42;
    indexable = array<vec4<u32>, 4u>(vec4<u32>(1065353216u, 0u, 0u, 0u), vec4<u32>(0u, 1065353216u, 0u, 0u), vec4<u32>(0u, 0u, 1065353216u, 0u), vec4<u32>(0u, 0u, 0u, 1065353216u));
    let x_810 : vec4<u32> = indexable[x_805];
    u_xlat41 = dot(x_795, bitcast<vec4<f32>>(x_810));
    let x_814 : f32 = u_xlat41;
    u_xlati41 = i32(x_814);
    let x_817 : vec3<f32> = vs_INTERP7;
    let x_828 : i32 = u_xlati41;
    let x_830 : vec4<f32> = x_827.x_AdditionalLightsPosition[x_828];
    let x_833 : i32 = u_xlati41;
    let x_835 : vec4<f32> = x_827.x_AdditionalLightsPosition[x_833];
    u_xlat9 = ((-(x_817) * vec3<f32>(x_830.w, x_830.w, x_830.w)) + vec3<f32>(x_835.x, x_835.y, x_835.z));
    let x_838 : vec3<f32> = u_xlat9;
    let x_839 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(x_838, x_839);
    let x_841 : f32 = u_xlat42;
    u_xlat42 = max(x_841, 0.00006103515625f);
    let x_844 : f32 = u_xlat42;
    u_xlat43 = inverseSqrt(x_844);
    let x_847 : f32 = u_xlat43;
    let x_849 : vec3<f32> = u_xlat9;
    u_xlat10 = (vec3<f32>(x_847, x_847, x_847) * x_849);
    let x_852 : f32 = u_xlat42;
    u_xlat45 = (1.0f / x_852);
    let x_854 : f32 = u_xlat42;
    let x_855 : i32 = u_xlati41;
    let x_857 : f32 = x_827.x_AdditionalLightsAttenuation[x_855].x;
    u_xlat42 = (x_854 * x_857);
    let x_859 : f32 = u_xlat42;
    let x_861 : f32 = u_xlat42;
    u_xlat42 = ((-(x_859) * x_861) + 1.0f);
    let x_864 : f32 = u_xlat42;
    u_xlat42 = max(x_864, 0.0f);
    let x_866 : f32 = u_xlat42;
    let x_867 : f32 = u_xlat42;
    u_xlat42 = (x_866 * x_867);
    let x_869 : f32 = u_xlat42;
    let x_870 : f32 = u_xlat45;
    u_xlat42 = (x_869 * x_870);
    let x_872 : i32 = u_xlati41;
    let x_874 : vec4<f32> = x_827.x_AdditionalLightsSpotDir[x_872];
    let x_876 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_874.x, x_874.y, x_874.z), x_876);
    let x_878 : f32 = u_xlat45;
    let x_879 : i32 = u_xlati41;
    let x_881 : f32 = x_827.x_AdditionalLightsAttenuation[x_879].z;
    let x_883 : i32 = u_xlati41;
    let x_885 : f32 = x_827.x_AdditionalLightsAttenuation[x_883].w;
    u_xlat45 = ((x_878 * x_881) + x_885);
    let x_887 : f32 = u_xlat45;
    u_xlat45 = clamp(x_887, 0.0f, 1.0f);
    let x_889 : f32 = u_xlat45;
    let x_890 : f32 = u_xlat45;
    u_xlat45 = (x_889 * x_890);
    let x_892 : f32 = u_xlat42;
    let x_893 : f32 = u_xlat45;
    u_xlat42 = (x_892 * x_893);
    let x_897 : i32 = u_xlati41;
    let x_899 : f32 = x_458.x_AdditionalShadowParams[x_897].w;
    u_xlati45 = i32(x_899);
    let x_902 : i32 = u_xlati45;
    u_xlatb46 = (x_902 >= 0i);
    let x_904 : bool = u_xlatb46;
    if (x_904) {
      let x_908 : i32 = u_xlati41;
      let x_910 : f32 = x_458.x_AdditionalShadowParams[x_908].z;
      u_xlatb46 = any(!((vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) == vec4<f32>(x_910, x_910, x_910, x_910))));
      let x_915 : bool = u_xlatb46;
      if (x_915) {
        let x_920 : vec3<f32> = u_xlat10;
        let x_923 : vec3<f32> = u_xlat10;
        let x_926 : vec4<bool> = (abs(vec4<f32>(x_920.z, x_920.z, x_920.y, x_920.z)) >= abs(vec4<f32>(x_923.x, x_923.y, x_923.x, x_923.x)));
        let x_928 : vec3<bool> = vec3<bool>(x_926.x, x_926.y, x_926.z);
        let x_929 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_928.x, x_928.y, x_928.z, x_929.w);
        let x_932 : bool = u_xlatb11.y;
        let x_934 : bool = u_xlatb11.x;
        u_xlatb46 = (x_932 & x_934);
        let x_936 : vec3<f32> = u_xlat10;
        let x_939 : vec4<bool> = (-(vec4<f32>(x_936.z, x_936.y, x_936.z, x_936.x)) < vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f));
        let x_940 : vec3<bool> = vec3<bool>(x_939.x, x_939.y, x_939.w);
        let x_941 : vec4<bool> = u_xlatb11;
        u_xlatb11 = vec4<bool>(x_940.x, x_940.y, x_941.z, x_940.z);
        let x_945 : bool = u_xlatb11.x;
        u_xlat11.x = select(4.0f, 5.0f, x_945);
        let x_950 : bool = u_xlatb11.y;
        u_xlat11.y = select(2.0f, 3.0f, x_950);
        let x_956 : bool = u_xlatb11.w;
        u_xlat47 = select(0.0f, 1.0f, x_956);
        let x_960 : bool = u_xlatb11.z;
        if (x_960) {
          let x_966 : f32 = u_xlat11.y;
          x_962 = x_966;
        } else {
          let x_968 : f32 = u_xlat47;
          x_962 = x_968;
        }
        let x_969 : f32 = x_962;
        u_xlat23 = x_969;
        let x_971 : bool = u_xlatb46;
        if (x_971) {
          let x_976 : f32 = u_xlat11.x;
          x_972 = x_976;
        } else {
          let x_978 : f32 = u_xlat23;
          x_972 = x_978;
        }
        let x_979 : f32 = x_972;
        u_xlat46 = x_979;
        let x_980 : i32 = u_xlati41;
        let x_982 : f32 = x_458.x_AdditionalShadowParams[x_980].w;
        u_xlat11.x = trunc(x_982);
        let x_985 : f32 = u_xlat46;
        let x_987 : f32 = u_xlat11.x;
        u_xlat46 = (x_985 + x_987);
        let x_989 : f32 = u_xlat46;
        u_xlati45 = i32(x_989);
      }
      let x_991 : i32 = u_xlati45;
      u_xlati45 = (x_991 << bitcast<u32>(2i));
      let x_993 : vec3<f32> = vs_INTERP7;
      let x_996 : i32 = u_xlati45;
      let x_999 : i32 = u_xlati45;
      let x_1003 : vec4<f32> = x_458.x_AdditionalLightsWorldToShadow[((x_996 + 1i) / 4i)][((x_999 + 1i) % 4i)];
      u_xlat11 = (vec4<f32>(x_993.y, x_993.y, x_993.y, x_993.y) * x_1003);
      let x_1005 : i32 = u_xlati45;
      let x_1007 : i32 = u_xlati45;
      let x_1010 : vec4<f32> = x_458.x_AdditionalLightsWorldToShadow[(x_1005 / 4i)][(x_1007 % 4i)];
      let x_1011 : vec3<f32> = vs_INTERP7;
      let x_1014 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1010 * vec4<f32>(x_1011.x, x_1011.x, x_1011.x, x_1011.x)) + x_1014);
      let x_1016 : i32 = u_xlati45;
      let x_1019 : i32 = u_xlati45;
      let x_1023 : vec4<f32> = x_458.x_AdditionalLightsWorldToShadow[((x_1016 + 2i) / 4i)][((x_1019 + 2i) % 4i)];
      let x_1024 : vec3<f32> = vs_INTERP7;
      let x_1027 : vec4<f32> = u_xlat11;
      u_xlat11 = ((x_1023 * vec4<f32>(x_1024.z, x_1024.z, x_1024.z, x_1024.z)) + x_1027);
      let x_1029 : vec4<f32> = u_xlat11;
      let x_1030 : i32 = u_xlati45;
      let x_1033 : i32 = u_xlati45;
      let x_1037 : vec4<f32> = x_458.x_AdditionalLightsWorldToShadow[((x_1030 + 3i) / 4i)][((x_1033 + 3i) % 4i)];
      u_xlat11 = (x_1029 + x_1037);
      let x_1039 : vec4<f32> = u_xlat11;
      let x_1041 : vec4<f32> = u_xlat11;
      let x_1043 : vec3<f32> = (vec3<f32>(x_1039.x, x_1039.y, x_1039.z) / vec3<f32>(x_1041.w, x_1041.w, x_1041.w));
      let x_1044 : vec4<f32> = u_xlat11;
      u_xlat11 = vec4<f32>(x_1043.x, x_1043.y, x_1043.z, x_1044.w);
      let x_1047 : vec4<f32> = u_xlat11;
      let x_1048 : vec2<f32> = vec2<f32>(x_1047.x, x_1047.y);
      let x_1050 : f32 = u_xlat11.z;
      txVec1 = vec3<f32>(x_1048.x, x_1048.y, x_1050);
      let x_1058 : vec3<f32> = txVec1;
      let x_1060 : f32 = textureSampleCompareLevel(x_AdditionalLightsShadowmapTexture, sampler_LinearClampCompare, x_1058.xy, x_1058.z);
      u_xlat45 = x_1060;
      let x_1061 : i32 = u_xlati41;
      let x_1063 : f32 = x_458.x_AdditionalShadowParams[x_1061].x;
      u_xlat46 = (1.0f + -(x_1063));
      let x_1066 : f32 = u_xlat45;
      let x_1067 : i32 = u_xlati41;
      let x_1069 : f32 = x_458.x_AdditionalShadowParams[x_1067].x;
      let x_1071 : f32 = u_xlat46;
      u_xlat45 = ((x_1066 * x_1069) + x_1071);
      let x_1074 : f32 = u_xlat11.z;
      u_xlatb46 = (0.0f >= x_1074);
      let x_1077 : f32 = u_xlat11.z;
      u_xlatb11.x = (x_1077 >= 1.0f);
      let x_1080 : bool = u_xlatb46;
      let x_1082 : bool = u_xlatb11.x;
      u_xlatb46 = (x_1080 | x_1082);
      let x_1084 : bool = u_xlatb46;
      let x_1085 : f32 = u_xlat45;
      u_xlat45 = select(x_1085, 1.0f, x_1084);
    } else {
      u_xlat45 = 1.0f;
    }
    let x_1088 : f32 = u_xlat45;
    u_xlat46 = (-(x_1088) + 1.0f);
    let x_1092 : f32 = u_xlat3.x;
    let x_1093 : f32 = u_xlat46;
    let x_1095 : f32 = u_xlat45;
    u_xlat45 = ((x_1092 * x_1093) + x_1095);
    let x_1097 : f32 = u_xlat42;
    let x_1098 : f32 = u_xlat45;
    u_xlat42 = (x_1097 * x_1098);
    let x_1100 : vec4<f32> = u_xlat1;
    let x_1102 : vec3<f32> = u_xlat10;
    u_xlat45 = dot(vec3<f32>(x_1100.x, x_1100.y, x_1100.w), x_1102);
    let x_1104 : f32 = u_xlat45;
    u_xlat45 = clamp(x_1104, 0.0f, 1.0f);
    let x_1106 : f32 = u_xlat42;
    let x_1107 : f32 = u_xlat45;
    u_xlat42 = (x_1106 * x_1107);
    let x_1109 : f32 = u_xlat42;
    let x_1111 : i32 = u_xlati41;
    let x_1113 : vec4<f32> = x_827.x_AdditionalLightsColor[x_1111];
    let x_1115 : vec3<f32> = (vec3<f32>(x_1109, x_1109, x_1109) * vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
    let x_1116 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_1115.x, x_1115.y, x_1115.z, x_1116.w);
    let x_1118 : vec3<f32> = u_xlat9;
    let x_1119 : f32 = u_xlat43;
    let x_1122 : vec3<f32> = u_xlat4;
    u_xlat9 = ((x_1118 * vec3<f32>(x_1119, x_1119, x_1119)) + x_1122);
    let x_1124 : vec3<f32> = u_xlat9;
    let x_1125 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(x_1124, x_1125);
    let x_1127 : f32 = u_xlat41;
    u_xlat41 = max(x_1127, 1.17549435e-38f);
    let x_1129 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_1129);
    let x_1131 : f32 = u_xlat41;
    let x_1133 : vec3<f32> = u_xlat9;
    u_xlat9 = (vec3<f32>(x_1131, x_1131, x_1131) * x_1133);
    let x_1135 : vec4<f32> = u_xlat1;
    let x_1137 : vec3<f32> = u_xlat9;
    u_xlat41 = dot(vec3<f32>(x_1135.x, x_1135.y, x_1135.w), x_1137);
    let x_1139 : f32 = u_xlat41;
    u_xlat41 = clamp(x_1139, 0.0f, 1.0f);
    let x_1141 : vec3<f32> = u_xlat10;
    let x_1142 : vec3<f32> = u_xlat9;
    u_xlat42 = dot(x_1141, x_1142);
    let x_1144 : f32 = u_xlat42;
    u_xlat42 = clamp(x_1144, 0.0f, 1.0f);
    let x_1146 : f32 = u_xlat41;
    let x_1147 : f32 = u_xlat41;
    u_xlat41 = (x_1146 * x_1147);
    let x_1149 : f32 = u_xlat41;
    let x_1151 : f32 = u_xlat8.x;
    u_xlat41 = ((x_1149 * x_1151) + 1.00001001358032226562f);
    let x_1154 : f32 = u_xlat42;
    let x_1155 : f32 = u_xlat42;
    u_xlat42 = (x_1154 * x_1155);
    let x_1157 : f32 = u_xlat41;
    let x_1158 : f32 = u_xlat41;
    u_xlat41 = (x_1157 * x_1158);
    let x_1160 : f32 = u_xlat42;
    u_xlat42 = max(x_1160, 0.10000000149011611938f);
    let x_1162 : f32 = u_xlat41;
    let x_1163 : f32 = u_xlat42;
    u_xlat41 = (x_1162 * x_1163);
    let x_1165 : f32 = u_xlat40;
    let x_1166 : f32 = u_xlat41;
    u_xlat41 = (x_1165 * x_1166);
    let x_1168 : f32 = u_xlat15;
    let x_1169 : f32 = u_xlat41;
    u_xlat41 = (x_1168 / x_1169);
    let x_1171 : vec3<f32> = u_xlat0;
    let x_1172 : f32 = u_xlat41;
    let x_1175 : vec3<f32> = u_xlat6;
    u_xlat9 = ((x_1171 * vec3<f32>(x_1172, x_1172, x_1172)) + x_1175);
    let x_1177 : vec3<f32> = u_xlat9;
    let x_1178 : vec4<f32> = u_xlat11;
    let x_1181 : vec3<f32> = u_xlat20;
    u_xlat20 = ((x_1177 * vec3<f32>(x_1178.x, x_1178.y, x_1178.z)) + x_1181);

    continuing {
      let x_1183 : u32 = u_xlatu_loop_1;
      u_xlatu_loop_1 = (x_1183 + bitcast<u32>(1i));
    }
  }
  let x_1185 : vec4<f32> = u_xlat5;
  let x_1187 : f32 = u_xlat27;
  let x_1190 : vec3<f32> = u_xlat7;
  u_xlat0 = ((vec3<f32>(x_1185.x, x_1185.y, x_1185.z) * vec3<f32>(x_1187, x_1187, x_1187)) + x_1190);
  let x_1192 : vec3<f32> = u_xlat20;
  let x_1193 : vec3<f32> = u_xlat0;
  u_xlat0 = (x_1192 + x_1193);
  let x_1195 : vec4<f32> = u_xlat2;
  let x_1197 : f32 = u_xlat25;
  let x_1200 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1195.x, x_1195.y, x_1195.z) * vec3<f32>(x_1197, x_1197, x_1197)) + x_1200);
  let x_1202 : f32 = u_xlat36;
  let x_1203 : f32 = u_xlat36;
  u_xlat36 = (x_1202 * -(x_1203));
  let x_1206 : f32 = u_xlat36;
  u_xlat36 = exp2(x_1206);
  let x_1208 : vec3<f32> = u_xlat0;
  let x_1210 : vec4<f32> = x_29.unity_FogColor;
  u_xlat0 = (x_1208 + -(vec3<f32>(x_1210.x, x_1210.y, x_1210.z)));
  let x_1216 : f32 = u_xlat36;
  let x_1218 : vec3<f32> = u_xlat0;
  let x_1221 : vec4<f32> = x_29.unity_FogColor;
  let x_1223 : vec3<f32> = ((vec3<f32>(x_1216, x_1216, x_1216) * x_1218) + vec3<f32>(x_1221.x, x_1221.y, x_1221.z));
  let x_1224 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1223.x, x_1223.y, x_1223.z, x_1224.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_INTERP5_param : vec4<f32>, @location(2) vs_INTERP4_param : vec4<f32>, @location(5) vs_INTERP8_param : vec3<f32>, @location(4) vs_INTERP7_param : vec3<f32>, @location(0) vs_INTERP0_param : vec2<f32>, @location(1) vs_INTERP3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_INTERP5 = vs_INTERP5_param;
  vs_INTERP4 = vs_INTERP4_param;
  vs_INTERP8 = vs_INTERP8_param;
  vs_INTERP7 = vs_INTERP7_param;
  vs_INTERP0 = vs_INTERP0_param;
  vs_INTERP3 = vs_INTERP3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


