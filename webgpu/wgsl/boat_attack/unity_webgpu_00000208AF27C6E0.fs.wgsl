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

type Arr_1 = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr_1,
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

struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(1) @binding(1) var<uniform> x_61 : UnityPerDraw;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(2) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(2) var<uniform> x_148 : MainLightShadows;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_200 : PGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlatb1 : bool;
  var u_xlatb4 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  SV_Target1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
  let x_19 : vec3<f32> = vs_TEXCOORD5;
  let x_20 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_19.x, x_19.y, x_19.z, x_20.w);
  SV_Target2.w = 0.0f;
  let x_31 : f32 = vs_TEXCOORD5.y;
  let x_33 : f32 = vs_TEXCOORD5.y;
  u_xlat0.x = (x_31 * x_33);
  let x_39 : f32 = vs_TEXCOORD5.x;
  let x_41 : f32 = vs_TEXCOORD5.x;
  let x_44 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_39 * x_41) + -(x_44));
  let x_50 : vec3<f32> = vs_TEXCOORD5;
  let x_52 : vec3<f32> = vs_TEXCOORD5;
  u_xlat1 = (vec4<f32>(x_50.y, x_50.z, x_50.z, x_50.x) * vec4<f32>(x_52.x, x_52.y, x_52.z, x_52.z));
  let x_66 : vec4<f32> = x_61.unity_SHBr;
  let x_67 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_66, x_67);
  let x_72 : vec4<f32> = x_61.unity_SHBg;
  let x_73 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_72, x_73);
  let x_78 : vec4<f32> = x_61.unity_SHBb;
  let x_79 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_78, x_79);
  let x_84 : vec4<f32> = x_61.unity_SHC;
  let x_86 : vec3<f32> = u_xlat0;
  let x_89 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_84.x, x_84.y, x_84.z) * vec3<f32>(x_86.x, x_86.x, x_86.x)) + x_89);
  let x_91 : vec3<f32> = vs_TEXCOORD5;
  let x_92 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  u_xlat1.w = 1.0f;
  let x_97 : vec4<f32> = x_61.unity_SHAr;
  let x_98 : vec4<f32> = u_xlat1;
  u_xlat2.x = dot(x_97, x_98);
  let x_103 : vec4<f32> = x_61.unity_SHAg;
  let x_104 : vec4<f32> = u_xlat1;
  u_xlat2.y = dot(x_103, x_104);
  let x_109 : vec4<f32> = x_61.unity_SHAb;
  let x_110 : vec4<f32> = u_xlat1;
  u_xlat2.z = dot(x_109, x_110);
  let x_113 : vec3<f32> = u_xlat0;
  let x_114 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_113 + x_114);
  let x_116 : vec3<f32> = u_xlat0;
  u_xlat0 = max(x_116, vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_123 : vec4<f32> = vs_TEXCOORD4;
  let x_124 : vec2<f32> = vec2<f32>(x_123.x, x_123.y);
  let x_126 : f32 = vs_TEXCOORD4.z;
  txVec0 = vec3<f32>(x_124.x, x_124.y, x_126);
  let x_141 : vec3<f32> = txVec0;
  let x_143 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_141.xy, x_141.z);
  u_xlat9 = x_143;
  let x_152 : f32 = x_148.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_152) + 1.0f);
  let x_156 : f32 = u_xlat9;
  let x_158 : f32 = x_148.x_MainLightShadowParams.x;
  let x_161 : f32 = u_xlat1.x;
  u_xlat9 = ((x_156 * x_158) + x_161);
  let x_167 : f32 = vs_TEXCOORD4.z;
  u_xlatb1 = (0.0f >= x_167);
  let x_171 : f32 = vs_TEXCOORD4.z;
  u_xlatb4 = (x_171 >= 1.0f);
  let x_173 : bool = u_xlatb4;
  let x_174 : bool = u_xlatb1;
  u_xlatb1 = (x_173 | x_174);
  let x_176 : bool = u_xlatb1;
  let x_177 : f32 = u_xlat9;
  u_xlat9 = select(x_177, 1.0f, x_176);
  let x_180 : vec4<f32> = vs_TEXCOORD3;
  let x_182 : f32 = u_xlat9;
  let x_185 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_180.x, x_180.y, x_180.z) * vec3<f32>(x_182, x_182, x_182)) + x_185);
  let x_197 : vec2<f32> = vs_TEXCOORD0;
  let x_203 : f32 = x_200.x_GlobalMipBias.x;
  let x_204 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_197, x_203);
  let x_205 : vec3<f32> = vec3<f32>(x_204.x, x_204.y, x_204.z);
  let x_206 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
  let x_208 : vec4<f32> = u_xlat1;
  let x_211 : vec4<f32> = vs_TEXCOORD2;
  let x_213 : vec3<f32> = (vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_211.x, x_211.y, x_211.z));
  let x_214 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_217 : vec3<f32> = u_xlat0;
  let x_218 : vec4<f32> = u_xlat1;
  let x_220 : vec3<f32> = (x_217 * vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  SV_Target3.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
  @location(1)
  SV_Target1_1 : vec4<f32>,
  @location(2)
  SV_Target2_1 : vec4<f32>,
  @location(3)
  SV_Target3_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD5_param : vec3<f32>, @location(3) vs_TEXCOORD4_param : vec4<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1, SV_Target2, SV_Target3);
}

