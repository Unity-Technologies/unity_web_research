struct PGlobals {
  unity_FogColor : vec4<f32>,
  x_TreeBillboardCameraFront : vec4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_35 : PGlobals;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD1 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : f32;
  var u_xlatb1 : bool;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec3<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = x_26;
  let x_32 : f32 = u_xlat0.w;
  let x_40 : f32 = x_35.x_TreeBillboardCameraFront.w;
  u_xlat1 = (x_32 + -(x_40));
  let x_46 : f32 = u_xlat1;
  u_xlatb1 = (x_46 < 0.0f);
  let x_49 : bool = u_xlatb1;
  if (((select(0i, 1i, x_49) * -1i) != 0i)) {
    discard;
  }
  let x_58 : vec4<f32> = u_xlat0;
  let x_62 : vec4<f32> = vs_COLOR0;
  let x_67 : vec4<f32> = x_35.unity_FogColor;
  let x_70 : vec3<f32> = ((vec3<f32>(x_58.x, x_58.y, x_58.z) * vec3<f32>(x_62.x, x_62.y, x_62.z)) + -(vec3<f32>(x_67.x, x_67.y, x_67.z)));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_76 : f32 = u_xlat0.w;
  SV_Target0.w = x_76;
  let x_82 : f32 = vs_TEXCOORD1;
  u_xlat6 = x_82;
  let x_83 : f32 = u_xlat6;
  u_xlat6 = clamp(x_83, 0.0f, 1.0f);
  let x_86 : f32 = u_xlat6;
  let x_88 : vec4<f32> = u_xlat0;
  let x_92 : vec4<f32> = x_35.unity_FogColor;
  let x_94 : vec3<f32> = ((vec3<f32>(x_86, x_86, x_86) * vec3<f32>(x_88.x, x_88.y, x_88.z)) + vec3<f32>(x_92.x, x_92.y, x_92.z));
  let x_95 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_94.x, x_94.y, x_94.z, x_95.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec3<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

