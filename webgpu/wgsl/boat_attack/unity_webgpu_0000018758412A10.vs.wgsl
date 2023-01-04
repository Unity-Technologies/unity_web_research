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
  x_ShadowBias : vec4<f32>,
  x_LightDirection : vec3<f32>,
}

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD0 : vec2<f32>;

@group(1) @binding(3) var<uniform> x_16 : UnityPerMaterial;

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_41 : UnityPerDraw;

@group(1) @binding(2) var<uniform> x_83 : VGlobals;

var<private> in_NORMAL0 : vec3<f32>;

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
  let x_33 : vec4<f32> = in_POSITION0;
  let x_44 : vec4<f32> = x_41.unity_ObjectToWorld[1i];
  let x_46 : vec3<f32> = (vec3<f32>(x_33.y, x_33.y, x_33.y) * vec3<f32>(x_44.x, x_44.y, x_44.z));
  let x_47 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_46.x, x_46.y, x_46.z, x_47.w);
  let x_50 : vec4<f32> = x_41.unity_ObjectToWorld[0i];
  let x_52 : vec4<f32> = in_POSITION0;
  let x_55 : vec4<f32> = u_xlat0;
  let x_57 : vec3<f32> = ((vec3<f32>(x_50.x, x_50.y, x_50.z) * vec3<f32>(x_52.x, x_52.x, x_52.x)) + vec3<f32>(x_55.x, x_55.y, x_55.z));
  let x_58 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_57.x, x_57.y, x_57.z, x_58.w);
  let x_62 : vec4<f32> = x_41.unity_ObjectToWorld[2i];
  let x_64 : vec4<f32> = in_POSITION0;
  let x_67 : vec4<f32> = u_xlat0;
  let x_69 : vec3<f32> = ((vec3<f32>(x_62.x, x_62.y, x_62.z) * vec3<f32>(x_64.z, x_64.z, x_64.z)) + vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_69.x, x_69.y, x_69.z, x_70.w);
  let x_72 : vec4<f32> = u_xlat0;
  let x_76 : vec4<f32> = x_41.unity_ObjectToWorld[3i];
  let x_78 : vec3<f32> = (vec3<f32>(x_72.x, x_72.y, x_72.z) + vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_79 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_78.x, x_78.y, x_78.z, x_79.w);
  let x_87 : f32 = x_83.x_LightDirection.x;
  let x_90 : f32 = x_83.x_LightDirection.y;
  let x_92 : f32 = x_83.x_LightDirection.z;
  let x_95 : vec4<f32> = x_83.x_ShadowBias;
  let x_98 : vec4<f32> = u_xlat0;
  let x_100 : vec3<f32> = ((vec3<f32>(x_87, x_90, x_92) * vec3<f32>(x_95.x, x_95.x, x_95.x)) + vec3<f32>(x_98.x, x_98.y, x_98.z));
  let x_101 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_100.x, x_100.y, x_100.z, x_101.w);
  let x_106 : vec3<f32> = in_NORMAL0;
  let x_108 : vec4<f32> = x_41.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_106, vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_113 : vec3<f32> = in_NORMAL0;
  let x_115 : vec4<f32> = x_41.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_113, vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_119 : vec3<f32> = in_NORMAL0;
  let x_121 : vec4<f32> = x_41.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_119, vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_126 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_126.x, x_126.y, x_126.z), vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : f32 = u_xlat6;
  u_xlat6 = max(x_131, 1.17549435e-37f);
  let x_134 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_134);
  let x_136 : f32 = u_xlat6;
  let x_138 : vec4<f32> = u_xlat1;
  let x_140 : vec3<f32> = (vec3<f32>(x_136, x_136, x_136) * vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_141 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_144 : f32 = x_83.x_LightDirection.x;
  let x_146 : f32 = x_83.x_LightDirection.y;
  let x_148 : f32 = x_83.x_LightDirection.z;
  let x_150 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec3<f32>(x_144, x_146, x_148), vec3<f32>(x_150.x, x_150.y, x_150.z));
  let x_153 : f32 = u_xlat6;
  u_xlat6 = clamp(x_153, 0.0f, 1.0f);
  let x_157 : f32 = u_xlat6;
  u_xlat6 = (-(x_157) + 1.0f);
  let x_160 : f32 = u_xlat6;
  let x_162 : f32 = x_83.x_ShadowBias.y;
  u_xlat6 = (x_160 * x_162);
  let x_164 : vec4<f32> = u_xlat1;
  let x_166 : f32 = u_xlat6;
  let x_169 : vec4<f32> = u_xlat0;
  let x_171 : vec3<f32> = ((vec3<f32>(x_164.x, x_164.y, x_164.z) * vec3<f32>(x_166, x_166, x_166)) + vec3<f32>(x_169.x, x_169.y, x_169.z));
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_174 : vec4<f32> = u_xlat0;
  let x_177 : vec4<f32> = x_83.unity_MatrixVP[1i];
  u_xlat1 = (vec4<f32>(x_174.y, x_174.y, x_174.y, x_174.y) * x_177);
  let x_180 : vec4<f32> = x_83.unity_MatrixVP[0i];
  let x_181 : vec4<f32> = u_xlat0;
  let x_184 : vec4<f32> = u_xlat1;
  u_xlat1 = ((x_180 * vec4<f32>(x_181.x, x_181.x, x_181.x, x_181.x)) + x_184);
  let x_187 : vec4<f32> = x_83.unity_MatrixVP[2i];
  let x_188 : vec4<f32> = u_xlat0;
  let x_191 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_187 * vec4<f32>(x_188.z, x_188.z, x_188.z, x_188.z)) + x_191);
  let x_193 : vec4<f32> = u_xlat0;
  let x_195 : vec4<f32> = x_83.unity_MatrixVP[3i];
  u_xlat0 = (x_193 + x_195);
  let x_202 : f32 = u_xlat0.z;
  gl_Position.z = min(x_202, 1.0f);
  let x_206 : vec4<f32> = u_xlat0;
  let x_207 : vec3<f32> = vec3<f32>(x_206.x, x_206.y, x_206.w);
  let x_210 : vec4<f32> = gl_Position;
  gl_Position = vec4<f32>(x_207.x, x_207.y, x_210.z, x_207.z);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
}

@vertex
fn main(@location(2) in_TEXCOORD0_param : vec2<f32>, @location(0) in_POSITION0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_POSITION0 = in_POSITION0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position);
}

