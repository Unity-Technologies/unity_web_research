diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
}

alias Arr = array<mat4x4<f32>, 5u>;

struct LightShadows {
  /* @offset(0) */
  x_MainLightWorldToShadow : Arr,
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
}

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var unity_LightmapInd : texture_2d<f32>;

@group(0) @binding(4) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

var<private> u_xlat6 : f32;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_LinearClampCompare : sampler_comparison;

@group(1) @binding(1) var<uniform> x_129 : LightShadows;

var<private> u_xlatb1 : bool;

var<private> u_xlatb3 : bool;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.01568627543747425079f);
  SV_Target1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
  let x_20 : vec3<f32> = vs_TEXCOORD5;
  let x_21 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_20.x, x_20.y, x_20.z, x_21.w);
  SV_Target2.w = 0.0f;
  let x_42 : vec2<f32> = vs_TEXCOORD1;
  let x_51 : f32 = x_45.x_GlobalMipBias.x;
  let x_52 : vec4<f32> = textureSampleBias(unity_LightmapInd, samplerunity_Lightmap, x_42, x_51);
  u_xlat0 = x_52;
  let x_53 : vec4<f32> = u_xlat0;
  let x_57 : vec3<f32> = (vec3<f32>(x_53.x, x_53.y, x_53.z) + vec3<f32>(-0.5f, -0.5f, -0.5f));
  let x_58 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_57.x, x_57.y, x_57.z, x_58.w);
  let x_63 : f32 = u_xlat0.w;
  u_xlat6 = max(x_63, 0.00009999999747378752f);
  let x_66 : vec3<f32> = vs_TEXCOORD5;
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(x_66, vec3<f32>(x_67.x, x_67.y, x_67.z));
  let x_72 : f32 = u_xlat0.x;
  u_xlat0.x = (x_72 + 0.5f);
  let x_82 : vec2<f32> = vs_TEXCOORD1;
  let x_84 : f32 = x_45.x_GlobalMipBias.x;
  let x_85 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_82, x_84);
  u_xlat1 = vec3<f32>(x_85.x, x_85.y, x_85.z);
  let x_87 : vec4<f32> = u_xlat0;
  let x_89 : vec3<f32> = u_xlat1;
  let x_90 : vec3<f32> = (vec3<f32>(x_87.x, x_87.x, x_87.x) * x_89);
  let x_91 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_90.x, x_90.y, x_90.z, x_91.w);
  let x_93 : vec4<f32> = u_xlat0;
  let x_95 : f32 = u_xlat6;
  let x_97 : vec3<f32> = (vec3<f32>(x_93.x, x_93.y, x_93.z) / vec3<f32>(x_95, x_95, x_95));
  let x_98 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_97.x, x_97.y, x_97.z, x_98.w);
  let x_104 : vec4<f32> = vs_TEXCOORD4;
  let x_105 : vec2<f32> = vec2<f32>(x_104.x, x_104.y);
  let x_109 : f32 = vs_TEXCOORD4.z;
  txVec0 = vec3<f32>(x_105.x, x_105.y, x_109);
  let x_121 : vec3<f32> = txVec0;
  let x_123 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_LinearClampCompare, x_121.xy, x_121.z);
  u_xlat6 = x_123;
  let x_132 : f32 = x_129.x_MainLightShadowParams.x;
  u_xlat1.x = (-(x_132) + 1.0f);
  let x_136 : f32 = u_xlat6;
  let x_138 : f32 = x_129.x_MainLightShadowParams.x;
  let x_141 : f32 = u_xlat1.x;
  u_xlat6 = ((x_136 * x_138) + x_141);
  let x_147 : f32 = vs_TEXCOORD4.z;
  u_xlatb1 = (0.0f >= x_147);
  let x_151 : f32 = vs_TEXCOORD4.z;
  u_xlatb3 = (x_151 >= 1.0f);
  let x_153 : bool = u_xlatb3;
  let x_154 : bool = u_xlatb1;
  u_xlatb1 = (x_153 | x_154);
  let x_156 : bool = u_xlatb1;
  let x_157 : f32 = u_xlat6;
  u_xlat6 = select(x_157, 1.0f, x_156);
  let x_160 : vec4<f32> = vs_TEXCOORD3;
  let x_162 : f32 = u_xlat6;
  let x_165 : vec4<f32> = u_xlat0;
  let x_167 : vec3<f32> = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162, x_162, x_162)) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_176 : vec2<f32> = vs_TEXCOORD0;
  let x_178 : f32 = x_45.x_GlobalMipBias.x;
  let x_179 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_176, x_178);
  u_xlat1 = vec3<f32>(x_179.x, x_179.y, x_179.z);
  let x_181 : vec3<f32> = u_xlat1;
  let x_183 : vec4<f32> = vs_TEXCOORD2;
  u_xlat1 = (x_181 * vec3<f32>(x_183.x, x_183.y, x_183.z));
  let x_187 : vec4<f32> = u_xlat0;
  let x_189 : vec3<f32> = u_xlat1;
  let x_190 : vec3<f32> = (vec3<f32>(x_187.x, x_187.y, x_187.z) * x_189);
  let x_191 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
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


