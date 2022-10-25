struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

type Arr = array<mat4x4<f32>, 5u>;

struct MainLightShadows {
  x_MainLightWorldToShadow : Arr,
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

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_127 : MainLightShadows;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat6 : f32;
  var u_xlat1 : vec3<f32>;
  var txVec0 : vec3<f32>;
  var u_xlatb1 : bool;
  var u_xlatb3 : bool;
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
  let x_41 : vec2<f32> = vs_TEXCOORD1;
  let x_50 : f32 = x_44.x_GlobalMipBias.x;
  let x_51 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_41, x_50);
  u_xlat0 = x_51;
  let x_52 : vec4<f32> = u_xlat0;
  let x_56 : vec3<f32> = (vec3<f32>(x_52.x, x_52.y, x_52.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_62 : f32 = u_xlat0.w;
  u_xlat6 = max(x_62, 0.0001f);
  let x_65 : vec3<f32> = vs_TEXCOORD5;
  let x_66 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_65, vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_71 : f32 = u_xlat0.x;
  u_xlat0.x = (x_71 + 0.5f);
  let x_81 : vec2<f32> = vs_TEXCOORD1;
  let x_83 : f32 = x_44.x_GlobalMipBias.x;
  let x_84 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_81, x_83);
  u_xlat1 = vec3<f32>(x_84.x, x_84.y, x_84.z);
  let x_86 : vec4<f32> = u_xlat0;
  let x_88 : vec3<f32> = u_xlat1;
  let x_89 : vec3<f32> = (vec3<f32>(x_86.x, x_86.x, x_86.x) * x_88);
  let x_90 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_92 : vec4<f32> = u_xlat0;
  let x_94 : f32 = u_xlat6;
  let x_96 : vec3<f32> = (vec3<f32>(x_92.x, x_92.y, x_92.z) / vec3<f32>(x_94, x_94, x_94));
  let x_97 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_96.x, x_96.y, x_96.z, x_97.w);
  let x_102 : vec4<f32> = vs_TEXCOORD4;
  let x_103 : vec2<f32> = vec2<f32>(x_102.x, x_102.y);
  let x_107 : f32 = vs_TEXCOORD4.z;
  txVec0 = vec3<f32>(x_103.x, x_103.y, x_107);
  let x_119 : vec3<f32> = txVec0;
  let x_121 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_119.xy, x_119.z);
  u_xlat6 = x_121;
  let x_130 : f32 = x_127.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_130) + 1.0f);
  let x_134 : f32 = u_xlat6;
  let x_136 : f32 = x_127.x_MainLightShadowParams.x;
  let x_139 : f32 = u_xlat1.x;
  u_xlat6 = ((x_134 * x_136) + x_139);
  let x_145 : f32 = vs_TEXCOORD4.z;
  u_xlatb1 = (0.0f >= x_145);
  let x_149 : f32 = vs_TEXCOORD4.z;
  u_xlatb3 = (x_149 >= 1.0f);
  let x_151 : bool = u_xlatb3;
  let x_152 : bool = u_xlatb1;
  u_xlatb1 = (x_151 | x_152);
  let x_154 : bool = u_xlatb1;
  let x_155 : f32 = u_xlat6;
  u_xlat6 = select(x_155, 1.0f, x_154);
  let x_158 : vec4<f32> = vs_TEXCOORD3;
  let x_160 : f32 = u_xlat6;
  let x_163 : vec4<f32> = u_xlat0;
  let x_165 : vec3<f32> = ((vec3<f32>(x_158.x, x_158.y, x_158.z) * vec3<f32>(x_160, x_160, x_160)) + vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_165.x, x_165.y, x_165.z, x_166.w);
  let x_174 : vec2<f32> = vs_TEXCOORD0;
  let x_176 : f32 = x_44.x_GlobalMipBias.x;
  let x_177 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_174, x_176);
  u_xlat1 = vec3<f32>(x_177.x, x_177.y, x_177.z);
  let x_179 : vec3<f32> = u_xlat1;
  let x_181 : vec4<f32> = vs_TEXCOORD2;
  u_xlat1 = (x_179 * vec3<f32>(x_181.x, x_181.y, x_181.z));
  let x_185 : vec4<f32> = u_xlat0;
  let x_187 : vec3<f32> = u_xlat1;
  let x_188 : vec3<f32> = (vec3<f32>(x_185.x, x_185.y, x_185.z) * x_187);
  let x_189 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_188.x, x_188.y, x_188.z, x_189.w);
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
fn main(@location(5) vs_TEXCOORD5_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1, SV_Target2, SV_Target3);
}

