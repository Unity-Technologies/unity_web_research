diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_TextureSampleAdd : vec4<f32>,
  /* @offset(16) */
  x_ClipRect : vec4<f32>,
}

var<private> u_xlat0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat3 : f32;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

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
  let x_58 : f32 = vs_COLOR0.w;
  u_xlat3 = (x_58 * 255.0f);
  let x_61 : f32 = u_xlat3;
  u_xlat3 = round(x_61);
  let x_65 : f32 = u_xlat3;
  u_xlat1.w = (x_65 * 0.0039215688593685627f);
  let x_82 : vec2<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_82);
  u_xlat2 = x_83;
  let x_84 : vec4<f32> = u_xlat2;
  let x_87 : vec4<f32> = x_13.x_TextureSampleAdd;
  u_xlat2 = (x_84 + x_87);
  let x_90 : vec4<f32> = vs_COLOR0;
  let x_91 : vec3<f32> = vec3<f32>(x_90.x, x_90.y, x_90.z);
  let x_92 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_91.x, x_91.y, x_91.z, x_92.w);
  let x_94 : vec4<f32> = u_xlat1;
  let x_95 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_94 * x_95);
  let x_98 : f32 = u_xlat0.x;
  let x_100 : f32 = u_xlat1.w;
  u_xlat0.x = (x_98 * x_100);
  let x_105 : vec2<f32> = u_xlat0;
  let x_107 : vec4<f32> = u_xlat1;
  let x_109 : vec3<f32> = (vec3<f32>(x_105.x, x_105.x, x_105.x) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_110 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_109.x, x_109.y, x_109.z, x_110.w);
  let x_113 : f32 = u_xlat0.x;
  SV_Target0.w = x_113;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec4<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


