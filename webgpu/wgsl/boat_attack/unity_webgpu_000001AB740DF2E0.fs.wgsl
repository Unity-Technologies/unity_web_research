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

struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

var<private> SV_Target0 : vec4<f32>;

var<private> SV_Target1 : vec4<f32>;

var<private> SV_Target2 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(1) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(4) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_64 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_117 : PGlobals;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> SV_Target3 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlatb4 : bool;
  var x_96 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  SV_Target0 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.015686275f);
  SV_Target1 = vec4<f32>(0.0f, 0.0f, 0.0f, 1.0f);
  let x_20 : vec3<f32> = vs_TEXCOORD5;
  let x_21 : vec4<f32> = SV_Target2;
  SV_Target2 = vec4<f32>(x_20.x, x_20.y, x_20.z, x_21.w);
  SV_Target2.w = 0.0f;
  let x_32 : vec4<f32> = vs_TEXCOORD4;
  let x_33 : vec2<f32> = vec2<f32>(x_32.x, x_32.y);
  let x_37 : f32 = vs_TEXCOORD4.z;
  txVec0 = vec3<f32>(x_33.x, x_33.y, x_37);
  let x_52 : vec3<f32> = txVec0;
  let x_54 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_52.xy, x_52.z);
  u_xlat0.x = x_54;
  let x_69 : f32 = x_64.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_69) + 1.0f);
  let x_74 : f32 = u_xlat0.x;
  let x_76 : f32 = x_64.x_MainLightShadowParams.x;
  let x_79 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_74 * x_76) + x_79);
  let x_86 : f32 = vs_TEXCOORD4.z;
  u_xlatb2 = (0.0f >= x_86);
  let x_90 : f32 = vs_TEXCOORD4.z;
  u_xlatb4 = (x_90 >= 1.0f);
  let x_92 : bool = u_xlatb4;
  let x_93 : bool = u_xlatb2;
  u_xlatb2 = (x_92 | x_93);
  let x_95 : bool = u_xlatb2;
  if (x_95) {
    x_96 = 1.0f;
  } else {
    let x_101 : f32 = u_xlat0.x;
    x_96 = x_101;
  }
  let x_102 : f32 = x_96;
  u_xlat0.x = x_102;
  let x_114 : vec2<f32> = vs_TEXCOORD1;
  let x_120 : f32 = x_117.x_GlobalMipBias.x;
  let x_121 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_114, x_120);
  u_xlat2 = vec3<f32>(x_121.x, x_121.y, x_121.z);
  let x_124 : vec4<f32> = vs_TEXCOORD3;
  let x_126 : vec3<f32> = u_xlat0;
  let x_129 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_124.x, x_124.y, x_124.z) * vec3<f32>(x_126.x, x_126.x, x_126.x)) + x_129);
  let x_138 : vec2<f32> = vs_TEXCOORD0;
  let x_140 : f32 = x_117.x_GlobalMipBias.x;
  let x_141 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_138, x_140);
  u_xlat1 = vec3<f32>(x_141.x, x_141.y, x_141.z);
  let x_143 : vec3<f32> = u_xlat1;
  let x_145 : vec4<f32> = vs_TEXCOORD2;
  u_xlat1 = (x_143 * vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_149 : vec3<f32> = u_xlat0;
  let x_150 : vec3<f32> = u_xlat1;
  let x_151 : vec3<f32> = (x_149 * x_150);
  let x_152 : vec4<f32> = SV_Target3;
  SV_Target3 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
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
fn main(@location(5) vs_TEXCOORD5_param : vec3<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0, SV_Target1, SV_Target2, SV_Target3);
}

