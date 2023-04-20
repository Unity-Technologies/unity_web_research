diagnostic(off, derivative_uniformity);

struct UnityPerMaterial {
  /* @offset(0) */
  x_BaseMap_ST : vec4<f32>,
  /* @offset(16) */
  x_DetailAlbedoMap_ST : vec4<f32>,
  /* @offset(32) */
  x_BaseColor : vec4<f32>,
  /* @offset(48) */
  x_SpecColor : vec4<f32>,
  /* @offset(64) */
  x_EmissionColor : vec4<f32>,
  /* @offset(80) */
  x_Cutoff : f32,
  /* @offset(84) */
  x_Smoothness : f32,
  /* @offset(88) */
  x_Metallic : f32,
  /* @offset(92) */
  x_BumpScale : f32,
  /* @offset(96) */
  x_Parallax : f32,
  /* @offset(100) */
  x_OcclusionStrength : f32,
  /* @offset(104) */
  x_ClearCoatMask : f32,
  /* @offset(108) */
  x_ClearCoatSmoothness : f32,
  /* @offset(112) */
  x_DetailAlbedoMapScale : f32,
  /* @offset(116) */
  x_DetailNormalMapScale : f32,
  /* @offset(120) */
  x_Surface : f32,
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
  x_AdditionalShadowParams : Arr_2,
  /* @offset(1040) */
  x_AdditionalLightsWorldToShadow : Arr_3,
}

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_16 : UnityPerMaterial;

var<private> vs_TEXCOORD5 : f32;

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_44 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> u_xlat6 : f32;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlatb6 : bool;

@group(1) @binding(4) var<uniform> x_205 : LightShadows;

var<private> vs_TEXCOORD6 : vec4<f32>;

var<private> vs_TEXCOORD8 : vec3<f32>;

@group(1) @binding(5) var<uniform> x_251 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec2<f32> = in_TEXCOORD0;
  let x_21 : vec4<f32> = x_16.x_BaseMap_ST;
  let x_25 : vec4<f32> = x_16.x_BaseMap_ST;
  vs_TEXCOORD0 = ((x_12 * vec2<f32>(x_21.x, x_21.y)) + vec2<f32>(x_25.z, x_25.w));
  vs_TEXCOORD5 = 0.0f;
  let x_36 : vec4<f32> = in_POSITION0;
  let x_47 : vec4<f32> = x_44.unity_ObjectToWorld[1i];
  let x_49 : vec3<f32> = (vec3<f32>(x_36.y, x_36.y, x_36.y) * vec3<f32>(x_47.x, x_47.y, x_47.z));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_53 : vec4<f32> = x_44.unity_ObjectToWorld[0i];
  let x_55 : vec4<f32> = in_POSITION0;
  let x_58 : vec4<f32> = u_xlat0;
  let x_60 : vec3<f32> = ((vec3<f32>(x_53.x, x_53.y, x_53.z) * vec3<f32>(x_55.x, x_55.x, x_55.x)) + vec3<f32>(x_58.x, x_58.y, x_58.z));
  let x_61 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_60.x, x_60.y, x_60.z, x_61.w);
  let x_65 : vec4<f32> = x_44.unity_ObjectToWorld[2i];
  let x_67 : vec4<f32> = in_POSITION0;
  let x_70 : vec4<f32> = u_xlat0;
  let x_72 : vec3<f32> = ((vec3<f32>(x_65.x, x_65.y, x_65.z) * vec3<f32>(x_67.z, x_67.z, x_67.z)) + vec3<f32>(x_70.x, x_70.y, x_70.z));
  let x_73 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_72.x, x_72.y, x_72.z, x_73.w);
  let x_75 : vec4<f32> = u_xlat0;
  let x_79 : vec4<f32> = x_44.unity_ObjectToWorld[3i];
  let x_81 : vec3<f32> = (vec3<f32>(x_75.x, x_75.y, x_75.z) + vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_86 : vec4<f32> = u_xlat0;
  vs_TEXCOORD1 = vec3<f32>(x_86.x, x_86.y, x_86.z);
  let x_91 : vec3<f32> = in_NORMAL0;
  let x_93 : vec4<f32> = x_44.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_91, vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_98 : vec3<f32> = in_NORMAL0;
  let x_100 : vec4<f32> = x_44.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_98, vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_105 : vec3<f32> = in_NORMAL0;
  let x_107 : vec4<f32> = x_44.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_105, vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_112 : vec4<f32> = u_xlat1;
  let x_114 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_112.x, x_112.y, x_112.z), vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_117 : f32 = u_xlat6;
  u_xlat6 = max(x_117, 1.17549435e-38f);
  let x_120 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_120);
  let x_123 : f32 = u_xlat6;
  let x_125 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = (vec3<f32>(x_123, x_123, x_123) * vec3<f32>(x_125.x, x_125.y, x_125.z));
  let x_129 : vec4<f32> = in_TANGENT0;
  let x_132 : vec4<f32> = x_44.unity_ObjectToWorld[1i];
  let x_134 : vec3<f32> = (vec3<f32>(x_129.y, x_129.y, x_129.y) * vec3<f32>(x_132.x, x_132.y, x_132.z));
  let x_135 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_134.x, x_134.y, x_134.z, x_135.w);
  let x_138 : vec4<f32> = x_44.unity_ObjectToWorld[0i];
  let x_140 : vec4<f32> = in_TANGENT0;
  let x_143 : vec4<f32> = u_xlat1;
  let x_145 : vec3<f32> = ((vec3<f32>(x_138.x, x_138.y, x_138.z) * vec3<f32>(x_140.x, x_140.x, x_140.x)) + vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_149 : vec4<f32> = x_44.unity_ObjectToWorld[2i];
  let x_151 : vec4<f32> = in_TANGENT0;
  let x_154 : vec4<f32> = u_xlat1;
  let x_156 : vec3<f32> = ((vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(x_151.z, x_151.z, x_151.z)) + vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_159 : vec4<f32> = u_xlat1;
  let x_161 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_159.x, x_159.y, x_159.z), vec3<f32>(x_161.x, x_161.y, x_161.z));
  let x_164 : f32 = u_xlat6;
  u_xlat6 = max(x_164, 1.17549435e-38f);
  let x_166 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_166);
  let x_170 : f32 = u_xlat6;
  let x_172 : vec4<f32> = u_xlat1;
  let x_174 : vec3<f32> = (vec3<f32>(x_170, x_170, x_170) * vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
  let x_183 : f32 = x_44.unity_WorldTransformParams.w;
  u_xlatb6 = (x_183 >= 0.0f);
  let x_185 : bool = u_xlatb6;
  u_xlat6 = select(-1.0f, 1.0f, x_185);
  let x_189 : f32 = u_xlat6;
  let x_192 : f32 = in_TANGENT0.w;
  vs_TEXCOORD3.w = (x_189 * x_192);
  let x_196 : vec4<f32> = u_xlat0;
  let x_207 : vec4<f32> = x_205.x_MainLightWorldToShadow[0i][1i];
  let x_209 : vec3<f32> = (vec3<f32>(x_196.y, x_196.y, x_196.y) * vec3<f32>(x_207.x, x_207.y, x_207.z));
  let x_210 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_209.x, x_209.y, x_209.z, x_210.w);
  let x_213 : vec4<f32> = x_205.x_MainLightWorldToShadow[0i][0i];
  let x_215 : vec4<f32> = u_xlat0;
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.y, x_213.z) * vec3<f32>(x_215.x, x_215.x, x_215.x)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_224 : vec4<f32> = x_205.x_MainLightWorldToShadow[0i][2i];
  let x_226 : vec4<f32> = u_xlat0;
  let x_229 : vec4<f32> = u_xlat1;
  let x_231 : vec3<f32> = ((vec3<f32>(x_224.x, x_224.y, x_224.z) * vec3<f32>(x_226.z, x_226.z, x_226.z)) + vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_232 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  let x_235 : vec4<f32> = u_xlat1;
  let x_238 : vec4<f32> = x_205.x_MainLightWorldToShadow[0i][3i];
  let x_240 : vec3<f32> = (vec3<f32>(x_235.x, x_235.y, x_235.z) + vec3<f32>(x_238.x, x_238.y, x_238.z));
  let x_241 : vec4<f32> = vs_TEXCOORD6;
  vs_TEXCOORD6 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
  vs_TEXCOORD6.w = 0.0f;
  vs_TEXCOORD8 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_247 : vec4<f32> = u_xlat0;
  let x_253 : vec4<f32> = x_251.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_247.y, x_247.y, x_247.y, x_247.y) * x_253);
  let x_256 : vec4<f32> = x_251.unity_MatrixVP[0i];
  let x_257 : vec4<f32> = u_xlat0;
  let x_260 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_256 * vec4<f32>(x_257.x, x_257.x, x_257.x, x_257.x)) + x_260);
  let x_263 : vec4<f32> = x_251.unity_MatrixVP[2i];
  let x_264 : vec4<f32> = u_xlat0;
  let x_267 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_263 * vec4<f32>(x_264.z, x_264.z, x_264.z, x_264.z)) + x_267);
  let x_273 : vec4<f32> = u_xlat0;
  let x_275 : vec4<f32> = x_251.unity_MatrixVP[3i];
  gl_Position = (x_273 + x_275);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
  @location(4)
  vs_TEXCOORD6_1 : vec4<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(3) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>, @location(2) in_TANGENT0_param : vec4<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  in_TANGENT0 = in_TANGENT0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD3, vs_TEXCOORD6, gl_Position);
}


