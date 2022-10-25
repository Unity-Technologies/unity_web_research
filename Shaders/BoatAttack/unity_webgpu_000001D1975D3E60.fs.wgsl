struct PGlobals {
  unity_FogColor : vec4<f32>,
}

var<private> vs_TEXCOORD1 : f32;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_50 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_11 : f32 = vs_TEXCOORD1;
  u_xlat0 = x_11;
  let x_12 : f32 = u_xlat0;
  u_xlat0 = clamp(x_12, 0.0f, 1.0f);
  let x_21 : vec4<f32> = vs_COLOR0;
  let x_22 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (x_21 + x_22);
  let x_38 : vec2<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_38);
  u_xlat2 = x_39;
  let x_43 : vec4<f32> = u_xlat1;
  let x_45 : vec4<f32> = u_xlat2;
  let x_55 : vec4<f32> = x_50.unity_FogColor;
  u_xlat3 = ((vec3<f32>(x_43.x, x_43.y, x_43.z) * vec3<f32>(x_45.x, x_45.y, x_45.z)) + -(vec3<f32>(x_55.x, x_55.y, x_55.z)));
  let x_62 : f32 = u_xlat1.w;
  let x_64 : f32 = u_xlat2.w;
  u_xlat1.x = (x_62 * x_64);
  let x_71 : f32 = u_xlat1.x;
  SV_Target0.w = x_71;
  let x_75 : f32 = SV_Target0.w;
  SV_Target0.w = clamp(x_75, 0.0f, 1.0f);
  let x_78 : f32 = u_xlat0;
  let x_80 : vec3<f32> = u_xlat3;
  let x_83 : vec4<f32> = x_50.unity_FogColor;
  let x_85 : vec3<f32> = ((vec3<f32>(x_78, x_78, x_78) * x_80) + vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_85.x, x_85.y, x_85.z, x_86.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : f32, @location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

