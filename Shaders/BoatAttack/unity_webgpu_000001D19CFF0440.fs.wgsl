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

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(2) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(5) var sampler_MainLightShadowmapTexture : sampler_comparison;

@group(1) @binding(1) var<uniform> x_48 : MainLightShadows;

@group(0) @binding(0) var unity_Lightmap : texture_2d<f32>;

@group(0) @binding(3) var samplerunity_Lightmap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_102 : PGlobals;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var txVec0 : vec3<f32>;
  var u_xlat0 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlatb4 : bool;
  var x_81 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_14 : vec4<f32> = vs_TEXCOORD4;
  let x_15 : vec2<f32> = vec2<f32>(x_14.x, x_14.y);
  let x_20 : f32 = vs_TEXCOORD4.z;
  txVec0 = vec3<f32>(x_15.x, x_15.y, x_20);
  let x_35 : vec3<f32> = txVec0;
  let x_38 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_35.xy, x_35.z);
  u_xlat0.x = x_38;
  let x_53 : f32 = x_48.x_MainLightShadowParams.x;
  u_xlat2.x = (-(x_53) + 1.0f);
  let x_59 : f32 = u_xlat0.x;
  let x_61 : f32 = x_48.x_MainLightShadowParams.x;
  let x_64 : f32 = u_xlat2.x;
  u_xlat0.x = ((x_59 * x_61) + x_64);
  let x_71 : f32 = vs_TEXCOORD4.z;
  u_xlatb2 = (0.0f >= x_71);
  let x_75 : f32 = vs_TEXCOORD4.z;
  u_xlatb4 = (x_75 >= 1.0f);
  let x_77 : bool = u_xlatb4;
  let x_78 : bool = u_xlatb2;
  u_xlatb2 = (x_77 | x_78);
  let x_80 : bool = u_xlatb2;
  if (x_80) {
    x_81 = 1.0f;
  } else {
    let x_86 : f32 = u_xlat0.x;
    x_81 = x_86;
  }
  let x_87 : f32 = x_81;
  u_xlat0.x = x_87;
  let x_99 : vec2<f32> = vs_TEXCOORD1;
  let x_105 : f32 = x_102.x_GlobalMipBias.x;
  let x_106 : vec4<f32> = textureSampleBias(unity_Lightmap, samplerunity_Lightmap, x_99, x_105);
  u_xlat2 = vec3<f32>(x_106.x, x_106.y, x_106.z);
  let x_109 : vec4<f32> = vs_TEXCOORD3;
  let x_111 : vec3<f32> = u_xlat0;
  let x_114 : vec3<f32> = u_xlat2;
  u_xlat0 = ((vec3<f32>(x_109.x, x_109.y, x_109.z) * vec3<f32>(x_111.x, x_111.x, x_111.x)) + x_114);
  let x_124 : vec2<f32> = vs_TEXCOORD0;
  let x_126 : f32 = x_102.x_GlobalMipBias.x;
  let x_127 : vec4<f32> = textureSampleBias(x_MainTex, sampler_MainTex, x_124, x_126);
  u_xlat1 = x_127;
  let x_130 : vec3<f32> = u_xlat0;
  let x_131 : vec4<f32> = u_xlat1;
  let x_133 : vec3<f32> = (x_130 * vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_134 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
  let x_138 : f32 = u_xlat1.w;
  SV_Target0.w = x_138;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @location(2) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

