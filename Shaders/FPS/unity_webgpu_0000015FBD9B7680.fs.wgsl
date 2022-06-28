struct PGlobals {
  x_RenderViewportScaleFactor : f32,
  @size(12)
  padding : u32,
  x_MainTex_TexelSize : vec4<f32>,
  x_SampleScale : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_12 : PGlobals;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_BloomTex : texture_2d<f32>;

@group(0) @binding(4) var sampler_BloomTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : vec4<f32> = x_12.x_MainTex_TexelSize;
  u_xlat0 = (vec4<f32>(x_17.x, x_17.y, x_17.x, x_17.y) * vec4<f32>(-1.0f, -1.0f, 1.0f, 1.0f));
  let x_27 : f32 = x_12.x_SampleScale;
  u_xlat1.x = (x_27 * 0.5f);
  let x_35 : vec4<f32> = u_xlat0;
  let x_37 : vec4<f32> = u_xlat1;
  let x_43 : vec2<f32> = vs_TEXCOORD0;
  u_xlat2 = ((vec4<f32>(x_35.x, x_35.y, x_35.z, x_35.y) * vec4<f32>(x_37.x, x_37.x, x_37.x, x_37.x)) + vec4<f32>(x_43.x, x_43.y, x_43.x, x_43.y));
  let x_46 : vec4<f32> = u_xlat2;
  u_xlat2 = clamp(x_46, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_51 : vec4<f32> = u_xlat0;
  let x_53 : vec4<f32> = u_xlat1;
  let x_56 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_51.x, x_51.w, x_51.z, x_51.w) * vec4<f32>(x_53.x, x_53.x, x_53.x, x_53.x)) + vec4<f32>(x_56.x, x_56.y, x_56.x, x_56.y));
  let x_59 : vec4<f32> = u_xlat0;
  u_xlat0 = clamp(x_59, vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f), vec4<f32>(1.0f, 1.0f, 1.0f, 1.0f));
  let x_63 : vec4<f32> = u_xlat0;
  let x_66 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat0 = (x_63 * vec4<f32>(x_66, x_66, x_66, x_66));
  let x_69 : vec4<f32> = u_xlat2;
  let x_71 : f32 = x_12.x_RenderViewportScaleFactor;
  u_xlat1 = (x_69 * vec4<f32>(x_71, x_71, x_71, x_71));
  let x_84 : vec4<f32> = u_xlat1;
  let x_86 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_84.x, x_84.y));
  u_xlat2 = x_86;
  let x_90 : vec4<f32> = u_xlat1;
  let x_92 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_90.z, x_90.w));
  u_xlat1 = x_92;
  let x_93 : vec4<f32> = u_xlat1;
  let x_94 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_93 + x_94);
  let x_99 : vec4<f32> = u_xlat0;
  let x_101 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_99.x, x_99.y));
  u_xlat2 = x_101;
  let x_105 : vec4<f32> = u_xlat0;
  let x_107 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_105.z, x_105.w));
  u_xlat0 = x_107;
  let x_108 : vec4<f32> = u_xlat1;
  let x_109 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_108 + x_109);
  let x_111 : vec4<f32> = u_xlat0;
  let x_112 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_111 + x_112);
  let x_120 : vec2<f32> = vs_TEXCOORD1;
  let x_121 : vec4<f32> = textureSample(x_BloomTex, sampler_BloomTex, x_120);
  u_xlat1 = x_121;
  let x_124 : vec4<f32> = u_xlat0;
  let x_128 : vec4<f32> = u_xlat1;
  SV_Target0 = ((x_124 * vec4<f32>(0.25f, 0.25f, 0.25f, 0.25f)) + x_128);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

