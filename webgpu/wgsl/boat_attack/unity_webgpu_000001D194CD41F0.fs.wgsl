struct PGlobals {
  x_ClipRect : vec4<f32>,
  x_MaskWipeControl : f32,
  x_MaskEdgeSoftness : f32,
  @size(8)
  padding : u32,
  x_MaskEdgeColor : vec4<f32>,
  x_MaskInverse : i32,
}

@group(1) @binding(0) var<uniform> x_13 : PGlobals;

@group(0) @binding(1) var x_MaskTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MaskTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat8 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : i32 = x_13.x_MaskInverse;
  u_xlat0 = select(0.0f, 1.0f, (x_17 != 0i));
  let x_40 : vec4<f32> = vs_TEXCOORD0;
  let x_42 : vec4<f32> = textureSample(x_MaskTex, sampler_MaskTex, vec2<f32>(x_40.z, x_40.w));
  u_xlat4.x = x_42.w;
  let x_49 : f32 = u_xlat4.x;
  let x_51 : f32 = u_xlat0;
  u_xlat0 = (-(x_49) + x_51);
  let x_56 : f32 = x_13.x_MaskWipeControl;
  u_xlat4.x = (-(x_56) + 1.0f);
  let x_61 : f32 = u_xlat4.x;
  let x_64 : f32 = x_13.x_MaskEdgeSoftness;
  let x_66 : f32 = u_xlat0;
  u_xlat0 = ((x_61 * x_64) + abs(x_66));
  let x_69 : f32 = u_xlat0;
  let x_71 : f32 = x_13.x_MaskWipeControl;
  u_xlat0 = (x_69 + -(x_71));
  let x_74 : f32 = u_xlat0;
  let x_76 : f32 = x_13.x_MaskEdgeSoftness;
  u_xlat0 = (x_74 / x_76);
  let x_78 : f32 = u_xlat0;
  u_xlat0 = clamp(x_78, 0.0f, 1.0f);
  let x_82 : vec4<f32> = x_13.x_ClipRect;
  let x_86 : vec4<f32> = x_13.x_ClipRect;
  let x_88 : vec2<f32> = (-(vec2<f32>(x_82.x, x_82.y)) + vec2<f32>(x_86.z, x_86.w));
  let x_89 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_88.x, x_88.y, x_89.z);
  let x_91 : vec3<f32> = u_xlat4;
  let x_94 : vec4<f32> = vs_TEXCOORD2;
  let x_98 : vec2<f32> = (vec2<f32>(x_91.x, x_91.y) + -(abs(vec2<f32>(x_94.x, x_94.y))));
  let x_99 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_98.x, x_98.y, x_99.z);
  let x_101 : vec3<f32> = u_xlat4;
  let x_103 : vec4<f32> = vs_TEXCOORD2;
  let x_105 : vec2<f32> = (vec2<f32>(x_101.x, x_101.y) * vec2<f32>(x_103.z, x_103.w));
  let x_106 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_105.x, x_105.y, x_106.z);
  let x_108 : vec3<f32> = u_xlat4;
  let x_112 : vec2<f32> = clamp(vec2<f32>(x_108.x, x_108.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_113 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_112.x, x_112.y, x_113.z);
  let x_117 : f32 = u_xlat4.y;
  let x_119 : f32 = u_xlat4.x;
  u_xlat4.x = (x_117 * x_119);
  let x_128 : vec4<f32> = vs_TEXCOORD0;
  let x_130 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_128.x, x_128.y));
  u_xlat8 = x_130.w;
  let x_132 : f32 = u_xlat8;
  let x_136 : f32 = vs_TEXCOORD1.x;
  let x_139 : f32 = vs_TEXCOORD1.w;
  u_xlat8 = ((x_132 * x_136) + -(x_139));
  let x_142 : f32 = u_xlat8;
  u_xlat8 = clamp(x_142, 0.0f, 1.0f);
  let x_146 : f32 = u_xlat8;
  let x_149 : vec4<f32> = vs_COLOR0;
  u_xlat1 = (vec4<f32>(x_146, x_146, x_146, x_146) * x_149);
  let x_153 : f32 = u_xlat4.x;
  let x_155 : f32 = u_xlat1.w;
  u_xlat2.w = (x_153 * x_155);
  let x_159 : vec4<f32> = u_xlat2;
  let x_163 : vec4<f32> = x_13.x_MaskEdgeColor;
  u_xlat3 = (vec3<f32>(x_159.w, x_159.w, x_159.w) * vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : vec4<f32> = u_xlat1;
  let x_168 : vec3<f32> = u_xlat4;
  let x_171 : vec3<f32> = u_xlat3;
  u_xlat4 = ((vec3<f32>(x_166.x, x_166.y, x_166.z) * vec3<f32>(x_168.x, x_168.x, x_168.x)) + -(x_171));
  let x_174 : f32 = u_xlat0;
  let x_176 : vec3<f32> = u_xlat4;
  let x_178 : vec3<f32> = u_xlat3;
  let x_179 : vec3<f32> = ((vec3<f32>(x_174, x_174, x_174) * x_176) + x_178);
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_184 : f32 = u_xlat0;
  let x_186 : vec4<f32> = u_xlat2;
  SV_Target0 = (vec4<f32>(x_184, x_184, x_184, x_184) * x_186);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD2_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

