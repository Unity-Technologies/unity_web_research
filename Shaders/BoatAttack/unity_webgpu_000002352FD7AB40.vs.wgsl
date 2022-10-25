struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
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

struct VGlobals {
  unity_MatrixVP : mat4x4<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_16 : UnityPerMaterial;

var<private> vs_TEXCOORD5 : f32;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(2) var<uniform> x_44 : UnityPerDraw;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> vs_TEXCOORD8 : vec3<f32>;

@group(1) @binding(7) var<uniform> x_137 : VGlobals;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat6 : f32;
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
  let x_99 : vec3<f32> = in_NORMAL0;
  let x_101 : vec4<f32> = x_44.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_99, vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_106 : vec3<f32> = in_NORMAL0;
  let x_108 : vec4<f32> = x_44.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_106, vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_113 : vec4<f32> = u_xlat1;
  let x_115 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_113.x, x_113.y, x_113.z), vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : f32 = u_xlat6;
  u_xlat6 = max(x_118, 1.17549435e-37f);
  let x_121 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_121);
  let x_124 : f32 = u_xlat6;
  let x_126 : vec4<f32> = u_xlat1;
  vs_TEXCOORD2 = (vec3<f32>(x_124, x_124, x_124) * vec3<f32>(x_126.x, x_126.y, x_126.z));
  vs_TEXCOORD4 = vec3<f32>(0.0f, 0.0f, 0.0f);
  vs_TEXCOORD8 = vec3<f32>(0.0f, 0.0f, 0.0f);
  let x_133 : vec4<f32> = u_xlat0;
  let x_139 : vec4<f32> = x_137.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_133.y, x_133.y, x_133.y, x_133.y) * x_139);
  let x_142 : vec4<f32> = x_137.unity_MatrixVP[0i];
  let x_143 : vec4<f32> = u_xlat0;
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_142 * vec4<f32>(x_143.x, x_143.x, x_143.x, x_143.x)) + x_146);
  let x_149 : vec4<f32> = x_137.unity_MatrixVP[2i];
  let x_150 : vec4<f32> = u_xlat0;
  let x_153 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_149 * vec4<f32>(x_150.z, x_150.z, x_150.z, x_150.z)) + x_153);
  let x_159 : vec4<f32> = u_xlat0;
  let x_161 : vec4<f32> = x_137.unity_MatrixVP[3i];
  gl_Position = (x_159 + x_161);
  return;
}

struct main_out {
  @location(0)
  vs_TEXCOORD0_1 : vec2<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec3<f32>,
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, gl_Position);
}

