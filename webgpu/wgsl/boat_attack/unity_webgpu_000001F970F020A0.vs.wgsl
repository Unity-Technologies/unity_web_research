diagnostic(off, derivative_uniformity);

struct VGlobals {
  /* @offset(0) */
  x_TimeParameters : vec4<f32>,
  /* @offset(16) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(80) */
  x_ShadowBias : vec4<f32>,
  /* @offset(96) */
  x_LightPosition : vec3<f32>,
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

var<private> u_xlat0 : vec4<f32>;

var<private> in_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_61 : VGlobals;

var<private> in_COLOR0 : vec4<f32>;

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_101 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat2 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_INTERP0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec4<f32> = in_TEXCOORD0;
  let x_18 : vec2<f32> = (vec2<f32>(x_13.y, x_13.y) + vec2<f32>(0.5f, 1.0f));
  let x_19 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_18.x, x_18.y, x_19.z, x_19.w);
  let x_28 : f32 = u_xlat0.y;
  u_xlat3.x = floor(x_28);
  let x_33 : f32 = u_xlat3.x;
  let x_36 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_33) + x_36);
  let x_40 : f32 = u_xlat0.x;
  let x_42 : f32 = u_xlat0.x;
  u_xlat0.x = (x_40 + x_42);
  let x_46 : f32 = u_xlat0.x;
  u_xlat0.x = ((abs(x_46) * 2.0f) + -1.0f);
  let x_54 : f32 = u_xlat0.x;
  u_xlat0.x = (x_54 * 6.2831859588623046875f);
  let x_66 : f32 = x_61.x_TimeParameters.x;
  let x_70 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_66 * 3.0f) + x_70);
  let x_74 : f32 = u_xlat0.x;
  u_xlat0.x = sin(x_74);
  let x_78 : f32 = u_xlat0.x;
  let x_82 : f32 = in_COLOR0.y;
  u_xlat0.x = (x_78 * x_82);
  let x_86 : f32 = u_xlat0.x;
  let x_93 : f32 = in_POSITION0.z;
  u_xlat0.x = ((-(x_86) * 0.5f) + x_93);
  let x_96 : vec3<f32> = in_POSITION0;
  let x_105 : vec4<f32> = x_101.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_96.y, x_96.y, x_96.y) * vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_109 : vec4<f32> = x_101.unity_ObjectToWorld[0i];
  let x_111 : vec3<f32> = in_POSITION0;
  let x_114 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_109.x, x_109.y, x_109.z) * vec3<f32>(x_111.x, x_111.x, x_111.x)) + x_114);
  let x_118 : vec4<f32> = x_101.unity_ObjectToWorld[2i];
  let x_120 : vec4<f32> = u_xlat0;
  let x_123 : vec3<f32> = u_xlat3;
  let x_124 : vec3<f32> = ((vec3<f32>(x_118.x, x_118.y, x_118.z) * vec3<f32>(x_120.x, x_120.x, x_120.x)) + x_123);
  let x_125 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_124.x, x_124.y, x_124.z, x_125.w);
  let x_127 : vec4<f32> = u_xlat0;
  let x_131 : vec4<f32> = x_101.unity_ObjectToWorld[3i];
  let x_133 : vec3<f32> = (vec3<f32>(x_127.x, x_127.y, x_127.z) + vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_137 : vec4<f32> = u_xlat0;
  let x_142 : vec3<f32> = x_61.x_LightPosition;
  let x_143 : vec3<f32> = (-(vec3<f32>(x_137.x, x_137.y, x_137.z)) + x_142);
  let x_144 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_143.x, x_143.y, x_143.z, x_144.w);
  let x_147 : vec4<f32> = u_xlat1;
  let x_149 : vec4<f32> = u_xlat1;
  u_xlat9 = dot(vec3<f32>(x_147.x, x_147.y, x_147.z), vec3<f32>(x_149.x, x_149.y, x_149.z));
  let x_152 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_152);
  let x_154 : f32 = u_xlat9;
  let x_156 : vec4<f32> = u_xlat1;
  let x_158 : vec3<f32> = (vec3<f32>(x_154, x_154, x_154) * vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat1;
  let x_164 : vec4<f32> = x_61.x_ShadowBias;
  let x_167 : vec4<f32> = u_xlat0;
  let x_169 : vec3<f32> = ((vec3<f32>(x_161.x, x_161.y, x_161.z) * vec3<f32>(x_164.x, x_164.x, x_164.x)) + vec3<f32>(x_167.x, x_167.y, x_167.z));
  let x_170 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_169.x, x_169.y, x_169.z, x_170.w);
  let x_174 : vec3<f32> = in_NORMAL0;
  let x_176 : vec4<f32> = x_101.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_174, vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_180 : vec3<f32> = in_NORMAL0;
  let x_182 : vec4<f32> = x_101.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_180, vec3<f32>(x_182.x, x_182.y, x_182.z));
  let x_186 : vec3<f32> = in_NORMAL0;
  let x_188 : vec4<f32> = x_101.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_186, vec3<f32>(x_188.x, x_188.y, x_188.z));
  let x_192 : vec3<f32> = u_xlat2;
  let x_193 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(x_192, x_193);
  let x_195 : f32 = u_xlat9;
  u_xlat9 = max(x_195, 1.17549435e-38f);
  let x_198 : f32 = u_xlat9;
  u_xlat9 = inverseSqrt(x_198);
  let x_200 : f32 = u_xlat9;
  let x_202 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_200, x_200, x_200) * x_202);
  let x_204 : vec4<f32> = u_xlat1;
  let x_206 : vec3<f32> = u_xlat2;
  u_xlat9 = dot(vec3<f32>(x_204.x, x_204.y, x_204.z), x_206);
  let x_208 : f32 = u_xlat9;
  u_xlat9 = clamp(x_208, 0.0f, 1.0f);
  let x_211 : f32 = u_xlat9;
  u_xlat9 = (-(x_211) + 1.0f);
  let x_214 : f32 = u_xlat9;
  let x_216 : f32 = x_61.x_ShadowBias.y;
  u_xlat9 = (x_214 * x_216);
  let x_218 : vec3<f32> = u_xlat2;
  let x_219 : f32 = u_xlat9;
  let x_222 : vec4<f32> = u_xlat0;
  let x_224 : vec3<f32> = ((x_218 * vec3<f32>(x_219, x_219, x_219)) + vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
  let x_228 : vec3<f32> = u_xlat2;
  vs_INTERP0 = x_228;
  let x_229 : vec4<f32> = u_xlat0;
  let x_232 : vec4<f32> = x_61.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_229.y, x_229.y, x_229.y, x_229.y) * x_232);
  let x_235 : vec4<f32> = x_61.unity_MatrixVP[0i];
  let x_236 : vec4<f32> = u_xlat0;
  let x_239 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_235 * vec4<f32>(x_236.x, x_236.x, x_236.x, x_236.x)) + x_239);
  let x_242 : vec4<f32> = x_61.unity_MatrixVP[2i];
  let x_243 : vec4<f32> = u_xlat0;
  let x_246 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_242 * vec4<f32>(x_243.z, x_243.z, x_243.z, x_243.z)) + x_246);
  let x_248 : vec4<f32> = u_xlat0;
  let x_250 : vec4<f32> = x_61.unity_MatrixVP[3i];
  u_xlat0 = (x_248 + x_250);
  let x_257 : f32 = u_xlat0.z;
  gl_Position.z = min(x_257, 1.0f);
  let x_261 : vec4<f32> = u_xlat0;
  let x_262 : vec3<f32> = vec3<f32>(x_261.x, x_261.y, x_261.w);
  let x_265 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_262.x, x_262.y, x_265.z, x_262.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec4<f32>, @location(3) in_COLOR0_param : vec4<f32>, @location(0) in_POSITION0_param : vec3<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_COLOR0 = in_COLOR0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position);
}


