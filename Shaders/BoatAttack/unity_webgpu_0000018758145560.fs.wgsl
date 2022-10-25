struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
  @size(8)
  padding : u32,
  unity_MatrixInvVP : mat4x4<f32>,
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

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_29 : PGlobals;

@group(0) @binding(1) var x_CameraDepthTexture : texture_2d<f32>;

@group(0) @binding(3) var sampler_CameraDepthTexture : sampler;

@group(1) @binding(1) var<uniform> x_91 : MainLightShadows;

@group(0) @binding(0) var x_MainLightShadowmapTexture : texture_depth_2d;

@group(0) @binding(2) var sampler_MainLightShadowmapTexture : sampler_comparison;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlatb6 : bool;
  var u_xlatb1 : bool;
  var txVec0 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlat4 : f32;
  var x_183 : vec4<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec2<f32> = vs_TEXCOORD0;
  let x_19 : vec2<f32> = ((x_13 * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_20 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_19.x, x_19.y, x_20.z, x_20.w);
  let x_23 : vec4<f32> = u_xlat0;
  let x_34 : vec4<f32> = x_29.unity_MatrixInvVP[1i];
  u_xlat1 = (-(vec4<f32>(x_23.y, x_23.y, x_23.y, x_23.y)) * x_34);
  let x_38 : vec4<f32> = x_29.unity_MatrixInvVP[0i];
  let x_39 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  u_xlat0 = ((x_38 * vec4<f32>(x_39.x, x_39.x, x_39.x, x_39.x)) + x_42);
  let x_54 : vec2<f32> = vs_TEXCOORD0;
  let x_59 : f32 = x_29.x_GlobalMipBias.x;
  let x_60 : vec4<f32> = textureSampleBias(x_CameraDepthTexture, sampler_CameraDepthTexture, x_54, x_59);
  u_xlat1.x = x_60.x;
  let x_66 : vec4<f32> = x_29.unity_MatrixInvVP[2i];
  let x_67 : vec4<f32> = u_xlat1;
  let x_70 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_66 * vec4<f32>(x_67.x, x_67.x, x_67.x, x_67.x)) + x_70);
  let x_72 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = x_29.unity_MatrixInvVP[3i];
  u_xlat0 = (x_72 + x_75);
  let x_78 : vec4<f32> = u_xlat0;
  let x_80 : vec4<f32> = u_xlat0;
  let x_82 : vec3<f32> = (vec3<f32>(x_78.x, x_78.y, x_78.z) / vec3<f32>(x_80.w, x_80.w, x_80.w));
  let x_83 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_82.x, x_82.y, x_82.z, x_83.w);
  let x_85 : vec4<f32> = u_xlat0;
  let x_93 : vec4<f32> = x_91.x_MainLightWorldToShadow[0i][1i];
  let x_95 : vec3<f32> = (vec3<f32>(x_85.y, x_85.y, x_85.y) * vec3<f32>(x_93.x, x_93.y, x_93.z));
  let x_96 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_95.x, x_95.y, x_95.z, x_96.w);
  let x_99 : vec4<f32> = x_91.x_MainLightWorldToShadow[0i][0i];
  let x_101 : vec4<f32> = u_xlat0;
  let x_104 : vec4<f32> = u_xlat1;
  let x_106 : vec3<f32> = ((vec3<f32>(x_99.x, x_99.y, x_99.z) * vec3<f32>(x_101.x, x_101.x, x_101.x)) + vec3<f32>(x_104.x, x_104.y, x_104.z));
  let x_107 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_106.z);
  let x_110 : vec4<f32> = x_91.x_MainLightWorldToShadow[0i][2i];
  let x_112 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat0;
  let x_117 : vec3<f32> = ((vec3<f32>(x_110.x, x_110.y, x_110.z) * vec3<f32>(x_112.z, x_112.z, x_112.z)) + vec3<f32>(x_115.x, x_115.y, x_115.w));
  let x_118 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_120 : vec4<f32> = u_xlat0;
  let x_123 : vec4<f32> = x_91.x_MainLightWorldToShadow[0i][3i];
  let x_125 : vec3<f32> = (vec3<f32>(x_120.x, x_120.y, x_120.z) + vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_134 : f32 = u_xlat0.z;
  u_xlatb6 = (0.0f >= x_134);
  let x_138 : f32 = u_xlat0.z;
  u_xlatb1 = (x_138 >= 1.0f);
  let x_143 : vec4<f32> = u_xlat0;
  let x_144 : vec2<f32> = vec2<f32>(x_143.x, x_143.y);
  let x_146 : f32 = u_xlat0.z;
  txVec0 = vec3<f32>(x_144.x, x_144.y, x_146);
  let x_158 : vec3<f32> = txVec0;
  let x_160 : f32 = textureSampleCompareLevel(x_MainLightShadowmapTexture, sampler_MainLightShadowmapTexture, x_158.xy, x_158.z);
  u_xlat0.x = x_160;
  let x_163 : bool = u_xlatb6;
  let x_164 : bool = u_xlatb1;
  u_xlatb2 = (x_163 | x_164);
  let x_169 : f32 = x_91.x_MainLightShadowParams.x;
  u_xlat4 = (-(x_169) + 1.0f);
  let x_173 : f32 = u_xlat0.x;
  let x_175 : f32 = x_91.x_MainLightShadowParams.x;
  let x_177 : f32 = u_xlat4;
  u_xlat0.x = ((x_173 * x_175) + x_177);
  let x_182 : bool = u_xlatb2;
  if (x_182) {
    x_183 = vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f);
  } else {
    let x_188 : vec4<f32> = u_xlat0;
    x_183 = vec4<f32>(x_188.x, x_188.x, x_188.x, x_188.x);
  }
  let x_190 : vec4<f32> = x_183;
  SV_Target0 = x_190;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

