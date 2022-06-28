struct PGlobals {
  x_ClipRect : vec4<f32>,
}

var<private> u_xlat0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat2 : f32;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_13.x_ClipRect;
  let x_22 : vec4<f32> = x_13.x_ClipRect;
  u_xlat0 = (-(vec2<f32>(x_18.x, x_18.y)) + vec2<f32>(x_22.z, x_22.w));
  let x_25 : vec2<f32> = u_xlat0;
  let x_28 : vec4<f32> = vs_TEXCOORD2;
  u_xlat0 = (x_25 + -(abs(vec2<f32>(x_28.x, x_28.y))));
  let x_33 : vec2<f32> = u_xlat0;
  let x_34 : vec4<f32> = vs_TEXCOORD2;
  u_xlat0 = (x_33 * vec2<f32>(x_34.z, x_34.w));
  let x_37 : vec2<f32> = u_xlat0;
  u_xlat0 = clamp(x_37, vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_47 : f32 = u_xlat0.y;
  let x_50 : f32 = u_xlat0.x;
  u_xlat0.x = (x_47 * x_50);
  let x_66 : vec2<f32> = vs_TEXCOORD0;
  let x_67 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_66);
  u_xlat2 = x_67.w;
  let x_72 : f32 = u_xlat2;
  let x_76 : f32 = vs_COLOR0.w;
  u_xlat1.w = (x_72 * x_76);
  let x_80 : vec4<f32> = vs_COLOR0;
  let x_81 : vec3<f32> = vec3<f32>(x_80.x, x_80.y, x_80.z);
  let x_82 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_86 : vec2<f32> = u_xlat0;
  let x_88 : vec4<f32> = u_xlat1;
  SV_Target0 = (vec4<f32>(x_86.x, x_86.x, x_86.x, x_86.x) * x_88);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

