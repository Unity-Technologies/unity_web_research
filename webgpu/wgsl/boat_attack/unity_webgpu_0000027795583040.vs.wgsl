diagnostic(off, derivative_uniformity);

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

struct VGlobals {
  /* @offset(0) */
  unity_MatrixVP : mat4x4<f32>,
  /* @offset(64) */
  x_PrevViewProjMatrix : mat4x4<f32>,
  /* @offset(128) */
  x_NonJitteredViewProjMatrix : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> in_POSITION0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_21 : UnityPerDraw;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_69 : VGlobals;

var<private> u_xlatb12 : bool;

var<private> u_xlat2 : vec3<f32>;

var<private> in_TEXCOORD4 : vec3<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_CLIP_POSITION_NO_JITTER0 : vec3<f32>;

var<private> vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 : vec3<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var x_130 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = in_POSITION0;
  let x_27 : vec4<f32> = x_21.unity_ObjectToWorld[1i];
  let x_29 : vec3<f32> = (vec3<f32>(x_13.y, x_13.y, x_13.y) * vec3<f32>(x_27.x, x_27.y, x_27.z));
  let x_30 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_29.x, x_29.y, x_29.z, x_30.w);
  let x_33 : vec4<f32> = x_21.unity_ObjectToWorld[0i];
  let x_35 : vec3<f32> = in_POSITION0;
  let x_38 : vec4<f32> = u_xlat0;
  let x_40 : vec3<f32> = ((vec3<f32>(x_33.x, x_33.y, x_33.z) * vec3<f32>(x_35.x, x_35.x, x_35.x)) + vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_40.x, x_40.y, x_40.z, x_41.w);
  let x_45 : vec4<f32> = x_21.unity_ObjectToWorld[2i];
  let x_47 : vec3<f32> = in_POSITION0;
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec3<f32> = ((vec3<f32>(x_45.x, x_45.y, x_45.z) * vec3<f32>(x_47.z, x_47.z, x_47.z)) + vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_52.x, x_52.y, x_52.z, x_53.w);
  let x_55 : vec4<f32> = u_xlat0;
  let x_59 : vec4<f32> = x_21.unity_ObjectToWorld[3i];
  let x_61 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) + vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_62 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_61.x, x_61.y, x_61.z, x_62.w);
  let x_65 : vec4<f32> = u_xlat0;
  let x_71 : vec4<f32> = x_69.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_65.y, x_65.y, x_65.y, x_65.y) * x_71);
  let x_74 : vec4<f32> = x_69.unity_MatrixVP[0i];
  let x_75 : vec4<f32> = u_xlat0;
  let x_78 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_74 * vec4<f32>(x_75.x, x_75.x, x_75.x, x_75.x)) + x_78);
  let x_81 : vec4<f32> = x_69.unity_MatrixVP[2i];
  let x_82 : vec4<f32> = u_xlat0;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_81 * vec4<f32>(x_82.z, x_82.z, x_82.z, x_82.z)) + x_85);
  let x_87 : vec4<f32> = u_xlat1;
  let x_89 : vec4<f32> = x_69.unity_MatrixVP[3i];
  u_xlat1 = (x_87 + x_89);
  let x_99 : f32 = x_21.unity_MotionVectorsParams.z;
  let x_104 : f32 = u_xlat1.w;
  let x_107 : f32 = u_xlat1.z;
  gl_Position.z = ((-(x_99) * x_104) + x_107);
  let x_115 : f32 = x_21.unity_MotionVectorsParams.y;
  u_xlatb12 = !((x_115 == 0.0f));
  let x_118 : bool = u_xlatb12;
  if (x_118) {
    let x_123 : f32 = x_21.unity_MotionVectorsParams.x;
    u_xlatb12 = (x_123 == 1.0f);
    let x_128 : bool = u_xlatb12;
    if (x_128) {
      let x_134 : vec3<f32> = in_TEXCOORD4;
      x_130 = x_134;
    } else {
      let x_136 : vec3<f32> = in_POSITION0;
      x_130 = x_136;
    }
    let x_137 : vec3<f32> = x_130;
    u_xlat2 = x_137;
    let x_139 : vec4<f32> = u_xlat0;
    let x_142 : vec4<f32> = x_69.x_NonJitteredViewProjMatrix[1i];
    u_xlat3 = (vec3<f32>(x_139.y, x_139.y, x_139.y) * vec3<f32>(x_142.x, x_142.y, x_142.w));
    let x_146 : vec4<f32> = x_69.x_NonJitteredViewProjMatrix[0i];
    let x_148 : vec4<f32> = u_xlat0;
    let x_151 : vec3<f32> = u_xlat3;
    let x_152 : vec3<f32> = ((vec3<f32>(x_146.x, x_146.y, x_146.w) * vec3<f32>(x_148.x, x_148.x, x_148.x)) + x_151);
    let x_153 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_152.x, x_152.y, x_153.z, x_152.z);
    let x_156 : vec4<f32> = x_69.x_NonJitteredViewProjMatrix[2i];
    let x_158 : vec4<f32> = u_xlat0;
    let x_161 : vec4<f32> = u_xlat0;
    let x_163 : vec3<f32> = ((vec3<f32>(x_156.x, x_156.y, x_156.w) * vec3<f32>(x_158.z, x_158.z, x_158.z)) + vec3<f32>(x_161.x, x_161.y, x_161.w));
    let x_164 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
    let x_168 : vec4<f32> = u_xlat0;
    let x_171 : vec4<f32> = x_69.x_NonJitteredViewProjMatrix[3i];
    vs_CLIP_POSITION_NO_JITTER0 = (vec3<f32>(x_168.x, x_168.y, x_168.z) + vec3<f32>(x_171.x, x_171.y, x_171.w));
    let x_174 : vec3<f32> = u_xlat2;
    let x_178 : vec4<f32> = x_21.unity_MatrixPreviousM[1i];
    u_xlat0 = (vec4<f32>(x_174.y, x_174.y, x_174.y, x_174.y) * x_178);
    let x_181 : vec4<f32> = x_21.unity_MatrixPreviousM[0i];
    let x_182 : vec3<f32> = u_xlat2;
    let x_185 : vec4<f32> = u_xlat0;
    u_xlat0 = ((x_181 * vec4<f32>(x_182.x, x_182.x, x_182.x, x_182.x)) + x_185);
    let x_188 : vec4<f32> = x_21.unity_MatrixPreviousM[2i];
    let x_189 : vec3<f32> = u_xlat2;
    let x_192 : vec4<f32> = u_xlat0;
    u_xlat0 = ((x_188 * vec4<f32>(x_189.z, x_189.z, x_189.z, x_189.z)) + x_192);
    let x_194 : vec4<f32> = u_xlat0;
    let x_196 : vec4<f32> = x_21.unity_MatrixPreviousM[3i];
    u_xlat0 = (x_194 + x_196);
    let x_198 : vec4<f32> = u_xlat0;
    let x_201 : vec4<f32> = x_69.x_PrevViewProjMatrix[1i];
    u_xlat2 = (vec3<f32>(x_198.y, x_198.y, x_198.y) * vec3<f32>(x_201.x, x_201.y, x_201.w));
    let x_205 : vec4<f32> = x_69.x_PrevViewProjMatrix[0i];
    let x_207 : vec4<f32> = u_xlat0;
    let x_210 : vec3<f32> = u_xlat2;
    u_xlat2 = ((vec3<f32>(x_205.x, x_205.y, x_205.w) * vec3<f32>(x_207.x, x_207.x, x_207.x)) + x_210);
    let x_213 : vec4<f32> = x_69.x_PrevViewProjMatrix[2i];
    let x_215 : vec4<f32> = u_xlat0;
    let x_218 : vec3<f32> = u_xlat2;
    let x_219 : vec3<f32> = ((vec3<f32>(x_213.x, x_213.y, x_213.w) * vec3<f32>(x_215.z, x_215.z, x_215.z)) + x_218);
    let x_220 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_219.x, x_219.y, x_219.z, x_220.w);
    let x_224 : vec4<f32> = x_69.x_PrevViewProjMatrix[3i];
    let x_226 : vec4<f32> = u_xlat0;
    let x_229 : vec4<f32> = u_xlat0;
    vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 = ((vec3<f32>(x_224.x, x_224.y, x_224.w) * vec3<f32>(x_226.w, x_226.w, x_226.w)) + vec3<f32>(x_229.x, x_229.y, x_229.z));
  } else {
    vs_CLIP_POSITION_NO_JITTER0 = vec3<f32>(0.0f, 0.0f, 0.0f);
    vs_PREVIOUS_CLIP_POSITION_NO_JITTER0 = vec3<f32>(0.0f, 0.0f, 0.0f);
  }
  let x_234 : vec4<f32> = u_xlat1;
  let x_235 : vec3<f32> = vec3<f32>(x_234.x, x_234.y, x_234.w);
  let x_238 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_235.x, x_235.y, x_238.z, x_235.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_CLIP_POSITION_NO_JITTER0_1 : vec3<f32>,
  @location(1)
  vs_PREVIOUS_CLIP_POSITION_NO_JITTER0_1 : vec3<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec3<f32>, @location(1) in_TEXCOORD4_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD4 = in_TEXCOORD4_param;
  main_1();
  return main_out(gl_Position, vs_CLIP_POSITION_NO_JITTER0, vs_PREVIOUS_CLIP_POSITION_NO_JITTER0);
}


